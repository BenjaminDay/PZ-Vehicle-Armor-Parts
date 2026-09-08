-- ============================================================================
-- Vehicle armour UI patch for Project Zomboid Build 42
--
-- Vanilla builds the lists in ISVehicleMechanics:initParts(). Let it do that,
-- then move the armour category from the left list to the right list.
-- ============================================================================

local function isArmourPart(item)
	return item and item.part and item.part:getCategory() == "armour"
end

local vanillaInitParts = ISVehicleMechanics.initParts
function ISVehicleMechanics:initParts()
	vanillaInitParts(self)

	if not self.vehiclePart or not self.vehiclePart.armour then return end

	-- Find the armour header and parts before changing the list. The header
	-- itself does not retain its category, so identify it by its vanilla name.
	local armourName = self.vehiclePart.armour.name
	local armourIndices = {}
	for i = 1, self.listbox:size() do
		local row = self.listbox.items[i]
		local isArmourHeader = row.item and row.item.cat and row.text == armourName
		if isArmourPart(row.item) or isArmourHeader then
			table.insert(armourIndices, i)
		end
	end

	-- Remove rows backwards so their original indices remain valid.
	local armourRows = {}
	for i = #armourIndices, 1, -1 do
		table.insert(armourRows, 1, self.listbox:removeItemByIndex(armourIndices[i]))
	end

	-- Re-add the rows in their original order on the right side.
	for _, row in ipairs(armourRows) do
		self.bodyworklist:addItem(row.text, row.item, row.tooltip)
	end

	self:updateLayout()
	self.rightListSelection = self.bodyworklist:size() > 1 and 2 or 1
end

ISVehicleMechanics._BTSE_ArmourInitPartsPatched = true

