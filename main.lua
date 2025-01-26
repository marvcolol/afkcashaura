-- I kept this open source since its only 21 lines.
-- May be updated to work with my alt control in the future.

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Anti-AFK

for i, v in pairs(getconnections(LocalPlayer.Idled)) do
    v:Disable()
end

-- Cash Aura

while wait() do
    pcall(function()
        local function getMoneyAroundMe()
            for Index, Money in ipairs(game.Workspace:FindFirstChild("Ignored"):FindFirstChild("Drop"):GetChildren()) do
                local Character = LocalPlayer.Character
                if Money.Name == "MoneyDrop" and (Money.Position - Character.HumanoidRootPart.Position).magnitude <= 20
                then
                    fireclickdetector(Money.ClickDetector)
                end
            end
        end
        getMoneyAroundMe()
    end)
end

-- discord.gg/sfnrardjZc
