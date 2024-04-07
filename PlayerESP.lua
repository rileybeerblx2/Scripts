if plrEsp.Text == "ON" then
            _G.on = true
        else
            _G.on = false
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
                    if v:FindFirstChild("Humanoid") and v.Parent.Name == "Characters to kill" and v.Name ~= game.Players.LocalPlayer.Name then
                    Main(v)
                    end
                end)
            end
            wait(7)
        until _G.on == false
        if _G.on == false then
            for i, v in pairs(game:GetService("Workspace")["Characters to kill"]:GetDescendants()) do
                if v:IsA("BoxHandleAdornment") then
                    v:Destroy()
                end
            end
        end
    end
