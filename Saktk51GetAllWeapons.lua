local HP = game.Players.LocalPlayer.Character.HumanoidRootPart
        function GetWepons(Weapon)
            firetouchinterest(HP, Weapon, 0)
        end
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v.Name:match("WEAPON") and v:IsA("Part") then
                GetWepons(v)
            end
        end
    end
