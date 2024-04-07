function(SpamDoor)
        while wait() do
            if SpamDoor.Text == "ON" then
                for i, v in pairs(game:GetService("Workspace").AREA51.Doors:GetDescendants()) do
                    if v:IsA("ClickDetector") and v.Parent.Name == "Close" then
                        fireclickdetector(v)
                    end
                end
            else
                break
            end
        end
    end
