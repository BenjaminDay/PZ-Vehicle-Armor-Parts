-- ============================================================================
-- Vehicle armour UI patch for Project Zomboid Build 42

-- Places category = "armour" on the right side.
-- ============================================================================

function ISVehicleMechanics:initParts()
	if not self.vehicle then return; end
	self.listbox:clear();
	self.bodyworklist:clear();
	self.vehiclePart = {};
	local currentCat = {};
	local generalCondition = 0;
	local totalPart = 0;
	for i=1,self.vehicle:getPartCount() do
		local part = self.vehicle:getPartByIndex(i-1)
		local category = part:getCategory() or "Other";
		if category ~= "nodisplay" then -- and ( (not self.vehicle:getScriptName():contains("Smash")) or (self.vehicle:getScriptName():contains("Smash") and part:getId() ~= "GloveBox") ) then
            if self.vehiclePart[category] then
                currentCat = self.vehiclePart[category]
            else
				currentCat = {};
				currentCat.parts = {};
				currentCat.name = getText("IGUI_VehiclePartCat" .. category);
				currentCat.cat = category;
				self.vehiclePart[category] = currentCat;
            end
			local newPart = {};
			newPart.name = getText("IGUI_VehiclePart" .. part:getId());
			newPart.part = part;
			table.insert(currentCat.parts, newPart);

			generalCondition = generalCondition + part:getCondition();
			totalPart = totalPart + 1;
        end
    end

    local scrollbarWidth = self.listbox.vscroll:getWidth()
    local maxWidth = (800 - self.xCarTexOffset - 10 - 20) / 2

	for i,v in pairs(self.vehiclePart) do
		local cat = {};
		cat.name = v.name;
		cat.cat = true;
		local list = self.listbox;
        -- ----------------------------------------------
        -- vanilla cats plus armour
        if i == "door"
            or i == "bodywork"
            or i == "lights"
            or i == "armour"
        then
            list = self.bodyworklist
        end
        -- ----------------------------------------------
		list:addItem(cat.name, cat);
		for j,k in ipairs(v.parts) do
			list:addItem(k.name, k);
			local width = 20 + getTextManager():MeasureStringX(UIFont.Small, k.name)
			width = width + 2 + getTextManager():MeasureStringX(UIFont.Small, "(100%)")
			maxWidth = math.max(maxWidth, width + scrollbarWidth + 2)
        end
    end

    self.listWidth = maxWidth
    self:updateLayout()

	self.generalCondition = round(generalCondition / totalPart, 2);
	self.generalCondRGB = self:getConditionRGB(self.generalCondition);

    self.leftListHasFocus = true
    self.leftListSelection = 1
    self.rightListSelection = 1
	if self.listbox:size() > 1 then self.listbox.selected = 2 end
	if self.bodyworklist:size() > 1 then self.rightListSelection = 2 end
end