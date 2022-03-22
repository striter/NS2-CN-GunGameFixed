local baseOnInitialized = Marine.OnInitialized
function Marine:OnInitialized()
    baseOnInitialized(self)

    if Server then
        self.timeNextWeld = 0
        self.timeNextSustain = 0
    end
end

if Server then
    local kLifeSustainHealInterval = 0.5
    local kLifeSustainHealPerSecond = 10
    local kNanoArmorHealPerSecond = 3
    local function SharedUpdate(self)
    
        if self:GetIsInCombat() then
            return
        end

        local now = Shared.GetTime()
        if now > self.timeNextWeld then 
            self.timeNextWeld = now + AutoWeldMixin.kWeldInterval
            self:OnWeld(self, AutoWeldMixin.kWeldInterval, self, kNanoArmorHealPerSecond)
        end

        if  now > self.timeNextSustain then
            self.timeNextSustain = now + kLifeSustainHealInterval
            self:AddRegeneration(kLifeSustainHealInterval * kLifeSustainHealPerSecond)
        end
    end
    
    local baseOnProcessMove=Marine.OnProcessMove
    function Marine:OnProcessMove(input)
        baseOnProcessMove(self,input)
        SharedUpdate(self)
    end
    
    local baseOnUpdate = Marine.OnUpdate
    function Marine:OnUpdate(deltaTime)
        baseOnUpdate(self,deltaTime)
        SharedUpdate(self)
    end
    
    function Marine:GetCanSelfWeld()
        return true
    end
end