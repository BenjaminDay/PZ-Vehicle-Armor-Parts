local DoVehicleParam = function(vehicle, param, module)
    module = module or "Base"
    local vehicleScript = ScriptManager.instance:getVehicle(module .. "." .. vehicle)
    if not vehicleScript then return end
    vehicleScript:Load(vehicle, "{" .. param .. "}")
end


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

if getScriptManager() then
    local scripts = getScriptManager():getAllVehicleScripts()
    for i = 1, scripts:size() do
        local script = scripts:get(i - 1)
        local vehicle = script:getName()

        for sourcePart, armourPart in pairs(vehiclePartsMapping) do
            if script:getPartById(sourcePart) then
                DoVehicleParam(vehicle,"template = " .. tostring(armourPart) .. ",")
            end
        end
    end
end

-- to add armor exceptions, add here by calling the line below where:
-- vehicle: is the vehicle script name e.g. CarLightsPolice
-- 2nd parameter: "template = armorTemplateName," --> attention to the comma, its not a typo!
-- DoVehicleParam(vehicle,"template = Armour6Door,")




-- add skins (code commented for now as it was from 41)
-- local AddVehicleSkin = function(vehicle, textureName)
--     DoVehicleParam(vehicle, "skin { texture = " .. textureName .. ",}")
-- end

-- if getActivatedMods():contains("FRUsedCars") then
--     AddVehicleSkin("86bounder", "vehicles/vehicle_86bounder_Bolo_shell")
-- end
