-- ============================================================================
-- This code checks scripts for parts, and based on the table below adds armour

-- Roofracks are added based on an allowlist
-- Eventually there will be some model offset concat code here too
-- Based on Johnny's work
-- ============================================================================

local lookuptable = require("VAPlookuptables")

local DEBUG = true
local forceOverrideModelDEBUG = true
local forceOMDEBUGvehicle = "CarNormal"
local forceOMDEBUGtier = {"Bone"}

local function VAPDebug(message)
    if DEBUG then
        print("[VAP] " .. tostring(message))
    end
end

-- simple keyword filter check
local function ContainsKeyword(text, keywords)
    if not text or not keywords then 
        return false 
    end

    for _, keyword in ipairs(keywords) do
        if string.find(text, keyword, 1, true) then
            return true
        end
    end
    return false
end

-- loads the script with injection paramater
local DoVehicleParam = function(vehicle, param, module)
    if not vehicle or not param then return end
    module = module or "Base"
    local vehicleScript = ScriptManager.instance:getVehicle(module .. "." .. vehicle)
    if not vehicleScript then return end
    vehicleScript:Load(vehicle, "{" .. param .. "}")
end

-- constructs the area block for RoofRack interaction based on vehicle extents
local function AddRoofArea(extents)
    if not extents then return end

    local width = extents:get(0) + 1.5
    local height = extents:get(2) + 0.25

    return string.format("area Roof { xywh = 0.0 -0.75 %f %f, }", width, height)
end

-- retrieves the model data from table based on name of vehicle
local function GetVehicleModelData(vehicle)
    if not vehicle then return end
    local modelInjectionLookup = lookuptable.modelInjectionLookup
    local exact = modelInjectionLookup.exact[vehicle]
    if exact then
        return exact
    end

    local bestMatch
    local bestLength = 0

    for keyword, modelData in pairs(modelInjectionLookup.family) do
        if #keyword > bestLength and vehicle:find(keyword, 1, true) then
            bestMatch = modelData
            bestLength = #keyword
        end
    end

    return bestMatch
end

-- constructs the model {} block for a part
local function ModelBlockConstructor(partModels)
    if not partModels then return end

    local modelParams = {}
    for _, data in ipairs(partModels) do
        local modelName = data[1]
        local fileName  = data[2]
        local offset    = data[3]
        local rotate    = data[4]
        local scale     = data[5]

        if not rotate then
            rotate = {0.0, 0.0, 0.0}
        end

        -- force a single tier of model to show only
        if forceOverrideModelDEBUG then
            if ContainsKeyword(modelName, forceOMDEBUGtier) then
                modelParams[#modelParams + 1] = string.format("    model %s\n    {\n        file = %s,\n        offset = %s %s %s,\n        rotate = %s %s %s,\n        scale = %s,\n    }", 
                    modelName, fileName, offset[1], offset[2], offset[3], rotate[1], rotate[2], rotate[3], scale)
            end

        else
        modelParams[#modelParams + 1] = string.format("    model %s\n    {\n        file = %s,\n        offset = %s %s %s,\n        scale = %s,\n    }", 
            modelName, fileName, offsetX, offsetY, offsetZ, scale)
        end
    end
    if #modelParams == 0 then
        return nil
    end

    return table.concat(modelParams, "\n")
end


-- constructs all the template and part { model } blocks for the vehicle
local function InjectionConstructor(vehicle, script)

    local vehicleParams = {}
    local vehicleModelData

    -- debug option for making the offsets on vehicles
    if forceOverrideModelDEBUG and forceOMDEBUGvehicle then
        vehicleModelData = GetVehicleModelData(forceOMDEBUGvehicle)
    else
        vehicleModelData = GetVehicleModelData(vehicle)
    end

    for part, partData in pairs(lookuptable.armourTable) do

        -- if vehicle has part to hook armour on then
        if partData.source then
            if script:getPartById(partData.source) then
                -- create template reference for the armour part
                vehicleParams[#vehicleParams + 1] = string.format("template = %s,", partData.pathing)
            end

        -- or if it has an allowList then
        elseif partData.allowList then
            if not ContainsKeyword(vehicle, partData.blackList)
                and ContainsKeyword(vehicle, partData.allowList) then
                    vehicleParams[#vehicleParams + 1] = string.format("template = %s,", partData.pathing)

                    -- roofrack area injection for hitbox interaction
                    if part == "Storage_RoofRack" then
                        local roofAreaParam = AddRoofArea(script:getExtents())
                        if roofAreaParam then
                            vehicleParams[#vehicleParams + 1] = roofAreaParam
                        end
                    end
            end
        end

        -- if vehicle has model Support
        if vehicleModelData then
            local partModels = vehicleModelData[part]
            if partModels then
                -- create the model blocks for the part types
                local modelParams = ModelBlockConstructor(partModels)

                -- create a part block for the vehicle
                if modelParams then
                    vehicleParams[#vehicleParams + 1]  = string.format("part %s\n{\n%s\n}\n", part, modelParams)
                end
            end
        end
    end
    if #vehicleParams == 0 then
        return nil
    end

    return table.concat(vehicleParams, "\n")
end

-- runs after all the scripts are loaded, fetches all vehicle scripts and adds whatever DoVehicleParam received on the end
if getScriptManager() then
    local scripts = getScriptManager():getAllVehicleScripts()
    for i = 1, scripts:size() do
        local script = scripts:get(i - 1)
        local vehicle = script:getName()

        -- if vehicle name doesn't contain Smashed, Burnt, etc.
        if not ContainsKeyword(vehicle, lookuptable.vehiclesPass) then

            -- construct the string to inject into the vehicle script
            local params = InjectionConstructor(vehicle, script)
            if params then
                DoVehicleParam(vehicle, params)
                print("[VAP] Script injection for " .. vehicle .. " complete!")
            end
        end
    end
end


-- add skins (code commented for now as it was from 41)
-- local AddVehicleSkin = function(vehicle, textureName)
--     DoVehicleParam(vehicle, "skin { texture = " .. textureName .. ",}")
-- end

-- if getActivatedMods():contains("FRUsedCars") then
--     AddVehicleSkin("86bounder", "vehicles/vehicle_86bounder_Bolo_shell")
-- end
