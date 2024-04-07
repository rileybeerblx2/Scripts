if ZombieEsp.Text == "ON" then
            _G.lol = true
        else
            _G.lol = false
        end
        repeat
            local function esp(player)
                local b = Instance.new("BoxHandleAdornment", player)
                b.AlwaysOnTop = true
                b.ZIndex = 5
                b.Size = player.Size
                b.Adornee = player
                b.Transparency = 0.8
            end

            function Main(Esp)
                for i, v in pairs(Esp:GetChildren()) do
                    if v:IsA("BasePart") and not v:FindFirstChild("BoxHandleAdornment") then
                        esp(v)
                    end
                end
            end

            for i, v in pairs(game.Workspace:GetDescendants()) do
                pcall(
                    function()
                        if v:FindFirstChild("Zombie") and v.Name ~= game.Players.LocalPlayer.Name then
                            Main(v)
                        end
                    end
                )
            end
            wait(7)
        until _G.lol == false
        if _G.lol == false then
            for i, v in pairs(game.Workspace.Killers:GetDescendants()) do
                if v:IsA("BoxHandleAdornment") then
                    v:Destroy()
                end
            end
        end
    end
