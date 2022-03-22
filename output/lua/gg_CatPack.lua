
local baseOnTouch = CatPack.OnTouch
local GGHealthRegen = 100
function CatPack:OnTouch(recipient)
    baseOnTouch(self,recipient)
    recipient:AddHealth(GGHealthRegen, false, true)
end
