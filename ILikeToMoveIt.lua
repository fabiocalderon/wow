function MoveIt(asset)
    asset:SetMovable(true)
    asset:EnableMouse(true)
    asset:RegisterForDrag("LeftButton")
    asset:SetScript("OnDragStart", function(self) self:StartMoving() end)
    asset:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
end

local list = {MicroButtonAndBagsBar,PetFrame,QueueStatusButton,StatusTrackingBarManager,VehicleSeatIndicator,
DurabilityFrame,TargetofTargetFramerateText,FramerateLabel}

for i = 1,#list do MoveIt(list[i]) end

--FramerateText,FramerateLabel  nao funcionou
