-- ============================================================================
-- This code checks scripts for parts, and based on the table below adds armour

-- Roofracks are added based on an allowlist
-- Eventually there will be some model offset concat code here too
-- Based on Johnny's work
-- ============================================================================

-- map the vehicle partID to whatever template you want injected
local vehiclePartsMapping = 
{
    ["Engine"] = "Armour/part/Armour_Bullbar",
    ["EngineDoor"] = "Armour/part/Armour_Hood",
    ["TruckBed"] = "Armour/part/Armour_Trunk",
    ["Windshield"] = "Armour/part/Armour_Windshield",
    ["WindshieldRear"] = "Armour/part/Armour_WindshieldRear",
    ["DoorFrontLeft"] = "Armour/part/Armour_DoorFrontLeft",
    ["DoorFrontRight"] = "Armour/part/Armour_DoorFrontRight",
    ["DoorRearLeft"] = "Armour/part/Armour_DoorRearLeft",
    ["DoorRearRight"] = "Armour/part/Armour_DoorRearRight",
    ["DoorMiddleLeft"] = "Armour/part/Armour_DoorMiddleLeft",
    ["DoorMiddleRight"] = "Armour/part/Armour_DoorMiddleRight",
    ["WindowFrontLeft"] = "Armour/part/Armour_WindowFrontLeft",
    ["WindowFrontRight"] = "Armour/part/Armour_WindowFrontRight",
    ["WindowRearLeft"] = "Armour/part/Armour_WindowRearLeft",
    ["WindowRearRight"] = "Armour/part/Armour_WindowRearRight",
    ["WindowMiddleLeft"] = "Armour/part/Armour_WindowMiddleLeft",
    ["WindowMiddleRight"] = "Armour/part/Armour_WindowMiddleRight",
    ["TireFrontLeft"] = "TireChains/part/TireChainFrontLeft",
    ["TireFrontRight"] = "TireChains/part/TireChainFrontRight",
    ["TireRearLeft"] = "TireChains/part/TireChainRearLeft",
    ["TireRearRight"] = "TireChains/part/TireChainRearRight",
    ["TrailerTrunk"] = "Armour/part/Armour_Trailer",
    ["TruckBedOpen"] = "Storage/part/Storage_TruckBedCover",
}

-- special case for roofracks as it doesnt hook on anything
local RoofRack = "Storage/part/Storage_RoofRack"

-- list of partial vehicle names
local vehiclesAllowedRoofRack = 
{
    "CarStationWagon",
    "SportsCar",
    "SmallCar",
    "CarNormal",
    "ModernCar02",
    "StepVan",
    "PickUpVan",
    "ModernCar",
    "OffRoad",
    "SUV",
    "Van",
    "SmallCar02",
    "CarLuxury",
    "RaceCar",
    "Trailer_Horsebox",
    "Trailer_Livestock",
}

-- partial vehicle names that shouldn't have roofracks
local vehiclesBlacklistRoofRack = 
{
    "VanRadio",
    "CarLights",
}

-- completely skip vehicles with these in their name
local vehiclesPass = 
{
    "Burnt",
    "Smashed",
}

local function ContainsKeyword(text, keywords)
    for _, keyword in ipairs(keywords) do
        if string.find(text, keyword, 1, true) then
            return true
        end
    end
    return false
end

local DoVehicleParam = function(vehicle, param, module)
    module = module or "Base"
    local vehicleScript = ScriptManager.instance:getVehicle(module .. "." .. vehicle)
    if not vehicleScript then return end
    vehicleScript:Load(vehicle, "{" .. param .. "}")
end

local function AddRoofArea(script)
    local extents = script:getExtents()

    if not extents then return end

    local width = extents:get(0) + 1.5
    local height = extents:get(2) + 0.25

    DoVehicleParam(script:getName(),
        string.format("area Roof { xywh = 0.0 -0.75 %f %f, }", width, height))
end

-- runs after all the scripts are loaded, fetches all vehicle scripts and adds whatever DoVehicleParam received on the end
if getScriptManager() then
    local scripts = getScriptManager():getAllVehicleScripts()
    for i = 1, scripts:size() do
        local script = scripts:get(i - 1)
        local vehicle = script:getName()

        if not ContainsKeyword(vehicle, vehiclesPass) then

            -- if vehicle name isn't blacklisted and is in allow list then it gets a roofrack
            if not ContainsKeyword(vehicle, vehiclesBlacklistRoofRack)
                and ContainsKeyword(vehicle, vehiclesAllowedRoofRack) then
                    DoVehicleParam(vehicle,"template = " .. tostring(RoofRack) .. ",")
                    -- roofrack area injection for hitbox interaction
                    AddRoofArea(script)
            end

            -- vehicle part mapping is done here
            for sourcePart, armourPart in pairs(vehiclePartsMapping) do
                if script:getPartById(sourcePart) then
                    DoVehicleParam(vehicle,"template = " .. tostring(armourPart) .. ",")
                    -- future planned vehicle model offset injection here
                end
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
