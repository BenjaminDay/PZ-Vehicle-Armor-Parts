-- ============================================================================
-- Vehicle armour for Project Zomboid Build 42

-- When a vehicle is damaged, the mod checks for damage and absorbs it
-- into armour components instead, restoring the parts to previous condition.

-- The previous condition of each protected part is stored in the armour's
-- modData so that pre-existing damage is not accidentally transferred.
-- ============================================================================

Vehicles = Vehicles or {}
Vehicles.Update = Vehicles.Update or {}

local lookuptable = require("VAPlookuptables")

-- ============================================================================
-- CONFIG
-- ============================================================================


local DEBUG = true
local forceOverrideModelDEBUG = true

local function VAPDebug(message)
    if DEBUG then
        print("[VAP] " .. tostring(message))
    end
end

-- ============================================================================
-- GET PART CONDITION
-- ============================================================================

local function GetPartCondition(part, armour, dataKey)
    if not part then
        return nil
    end

    local currentCondition = part:getCondition()

    -- if part not installed AND has no condition
    if not part:getInventoryItem() and currentCondition <= 0 then
        armour:getModData()[dataKey] = nil
        return nil
    end

    local modData = armour:getModData()
    local previousCondition = modData[dataKey]

    -- get baseline values
    if previousCondition == nil then
        modData[dataKey] = currentCondition

        VAPDebug(
            "Initialised "
            .. tostring(part:getId())
            .. " at "
            .. tostring(currentCondition)
        )
        return nil
    end

    previousCondition = tonumber(previousCondition)

    -- if invalid stored value OR
    -- part condition increased (part was repaired or replaced)
    if not previousCondition or currentCondition >= previousCondition then
        modData[dataKey] = currentCondition
        return nil
    end

    -- get damage value
    local damage = previousCondition - currentCondition
    if damage <= 0 then
        modData[dataKey] = currentCondition
        return nil
    end

    return
    {
        currentCondition = currentCondition,
        previousCondition = previousCondition,
        damage = damage,
    }
end

-- ============================================================================
-- CALCULATE ABSORPTION
-- ============================================================================

local function CalculateAbsorption(damage, armourCondition, dmgMultiplier, invID)
    -- if no damage
    if damage <= 0 then
        return
        {
            absorbedDamage = 0,
            remainingDamage = 0,
            armourDamage = 0,
            newArmourCondition = armourCondition,
        }
    end

    -- if armour already broken
    if armourCondition <= 0 then
        return
        {
            absorbedDamage = 0,
            remainingDamage = damage,
            armourDamage = 0,
            newArmourCondition = 0,
        }

    end

    -- get armour durabilty from installed part name
    local durability = 1.0

    for armourTier, multiplier in pairs(lookuptable.durabilityTiers) do
        if string.find(invID, armourTier, 1, true) then
            durability = multiplier
            break
        end
    end

    VAPDebug(
        tostring(invID)
        .. " durability: "
        .. tostring(durability)
    )

    local effectiveMultiplier = dmgMultiplier / durability

    -- get armour absorbtion
    local absorbedDamage = math.min(damage, math.floor(armourCondition / effectiveMultiplier))
    local remainingDamage = damage - absorbedDamage

    -- rounding
    local armourDamage = math.ceil(absorbedDamage * effectiveMultiplier)

    local newArmourCondition = armourCondition - armourDamage

    if newArmourCondition < 0 then
        newArmourCondition = 0
    end

    return
    {
        absorbedDamage = absorbedDamage,
        remainingDamage = remainingDamage,
        armourDamage = armourDamage,
        newArmourCondition = newArmourCondition,
    }
end

-- ============================================================================
-- SET PART CONDITION
-- ============================================================================

local function SetPartCondition(vehicle, part, condition)
    if not part then return end

    condition = math.floor(condition)
    if condition < 0 then
        condition = 0

    elseif condition > 100 then
        condition = 100
    end

    -- update VehiclePart condition
    part:setCondition(condition)

    -- Keep the installed item's condition synchronized with the
    -- VehiclePart condition, following vanilla vehicle code behaviour.
    local item = part:getInventoryItem()

    if item then
        item:setCondition(condition)
        part:doInventoryItemStats(
            item,
            part:getMechanicSkillInstaller()
        )
    end

    -- Synchronise the changed part.
    vehicle:transmitPartCondition(part)
end

-- ============================================================================
-- PROCESS PROTECTED PART
-- ============================================================================

local function ProcessProtectedPart(vehicle, armour, protectedPart, dataKey, dmgMultiplier, armourCondition)

    if not protectedPart then
        return armourCondition
    end

    -- get damage data
    local damageData = GetPartCondition(protectedPart, armour, dataKey)

    -- if no new damage
    if not damageData then
        return armourCondition
    end

    VAPDebug(
        tostring(protectedPart:getId())
        .. " damage detected: "
        .. tostring(damageData.damage)
        .. " ("
        .. tostring(damageData.previousCondition)
        .. " -> "
        .. tostring(damageData.currentCondition)
        .. ")"
    )

    -- get absorbtion
    local installedArmour = armour:getInventoryItem()
    local absorption = CalculateAbsorption(damageData.damage, armourCondition, dmgMultiplier, installedArmour:getFullType())

    -- if armour is broken, damage passes
    if absorption.absorbedDamage <= 0 then
        armour:getModData()[dataKey] = damageData.currentCondition

        VAPDebug(
            tostring(protectedPart:getId())
            .. " damage passes through; armour is broken."
        )

        return armourCondition
    end

    -- restore condition to protected part
    local newPartCondition = damageData.currentCondition + absorption.absorbedDamage
    SetPartCondition(vehicle, protectedPart, newPartCondition)

    -- store new protected part condition
    armour:getModData()[dataKey] = newPartCondition

    -- apply damage to armour condition
    SetPartCondition(vehicle, armour, absorption.newArmourCondition)

    VAPDebug(
        tostring(protectedPart:getId())
        .. " | absorbed = "
        .. tostring(absorption.absorbedDamage)
        .. " | remaining = "
        .. tostring(absorption.remainingDamage)
        .. " | armour = "
        .. tostring(absorption.newArmourCondition)
        .. " | part = "
        .. tostring(newPartCondition)
    )

    return absorption.newArmourCondition
end


-- ============================================================================
-- ARMOUR INSTALL / UNINSTALL
-- ============================================================================
local function ArmourInstallComplete(vehicle, part, protectedParts)

    if not vehicle or not part or not protectedParts then return end

    local armourData = part:getModData()

    VAPDebug("Armour installed - establishing protected-part baselines")

    for partID, data in pairs(protectedParts) do

        local dataKey = data[1]
        local protectedPart = vehicle:getPartById(partID)

        if protectedPart then
            local condition = protectedPart:getCondition()

            armourData[dataKey] = condition

            VAPDebug(
                "Baseline "
                .. tostring(partID)
                .. " = "
                .. tostring(condition)
            )
        end
    end
end

local function ArmourUninstallComplete(vehicle, part, item, protectedParts)

    if not part or not protectedParts then return end

    local armourData = part:getModData()

    for partID, data in pairs(protectedParts) do
        armourData[data[1]] = nil
    end

    VAPDebug("Armour uninstalled - cleared protected-part baselines")
end

-- ============================================================================
-- ARMOUR UPDATE (mainloop)
-- ============================================================================

local function VehicleArmourUpdate(vehicle, part, protectedParts)

    if isClient() and not isServer() then return end
    if not vehicle or not part or not protectedParts then return end

    -- if armour not installed
    if not part:getInventoryItem() then return end

    local armourCondition = part:getCondition()

    -- process list of protected parts
    for partID, data in pairs(protectedParts) do

        local dataKey, dmgMultiplier = data[1], data[2]

        if dataKey then
            local protectedPart = vehicle:getPartById(partID)
            armourCondition = ProcessProtectedPart(vehicle, part, protectedPart, dataKey, dmgMultiplier, armourCondition)
        end
    end

    vehicle:updatePartStats()
end

-- ============================================================================
-- MODEL HANDLER
-- ============================================================================

local function SetArmourModelVisible(part)
    if not part then return end
    local partData = lookuptable.armourTable[part:getId()]
    local visuals = partData.visuals
    if not visuals then return end

    local installedModel = false
    local item = part:getInventoryItem()
    if item then
        installedModel = visuals[item:getFullType()] or false
    end

    if forceOverrideModelDEBUG then
        for _, modelName in pairs(visuals) do
            part:setModelVisible(modelName, true)
        end

    else
        for _, modelName in pairs(visuals) do
            part:setModelVisible(modelName, modelName == installedModel)
        end
    end
end

-- ============================================================================
-- PARTS REGISTRY
-- ============================================================================

Vehicles.Init.Model = function(vehicle, part)
    SetArmourModelVisible(part)
end

Vehicles.InstallComplete.Armour = function(vehicle, part)
    local partData = lookuptable.armourTable[part:getId()]
    local protectedParts = partData.protectionData

    ArmourInstallComplete(vehicle, part, protectedParts)
    SetArmourModelVisible(part)
end

Vehicles.UninstallComplete.Armour = function(vehicle, part, item)
    local partData = lookuptable.armourTable[part:getId()]
    local protectedParts = partData.protectionData

    ArmourUninstallComplete(vehicle, part, item, protectedParts)
    SetArmourModelVisible(part)
end

Vehicles.Update.Armour = function(vehicle, part)
    local partData = lookuptable.armourTable[part:getId()]
    local protectedParts = partData.protectionData

    VehicleArmourUpdate(vehicle, part, protectedParts)
end
