
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/rileybeerblx2/Orion-Lua/main/mobilefriendlyorion.lua')))()
local Window = OrionLib:MakeWindow({Name = "Riley Hub V4", HidePremium = false, SaveConfig = true, ConfigFolder = "Riley Hub V4 - Forgotten Memories"})

local lighting = game:GetService("Lighting")
local lightingfold = Instance.new("Folder", lighting)
lightingfold.Name = "lightingfold"
local oldfogend = lighting.FogEnd
local oldfogstart = lighting.FogStart
local oldbrightness = lighting.Brightness

local freddy
local chica 
local bonnie
local foxy
local gfreddy
local westgen
local northgen
for i, v in pairs(game:GetService("Workspace").WorkspaceUtilities:GetChildren()) do
if v:FindFirstChild("Properties") and v.Properties:FindFirstChild("Location") and v.Properties:FindFirstChild("Location").Value == "West" then
westgen = v
elseif v:FindFirstChild("Properties") and v.Properties:FindFirstChild("Location") and v.Properties:FindFirstChild("Location").Value == "North" then
    northgen = v
end

end
for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Freddy" and v:FindFirstChild("Properties") then
freddy = v
elseif v.Name == "Chica" and v:FindFirstChild("Properties") then
    chica = v
elseif v.Name == "Foxy" and v:FindFirstChild("Properties") then
    foxy = v
elseif v.Name == "Bonnie" and v:FindFirstChild("Properties") then
    bonnie = v
elseif v.Name == "GoldenFreddy" then
    gfreddy = v
end

end

for i, v in pairs(game:GetService("Lighting"):GetChildren()) do
  if v.Name ~= "lightingfold" then
v.Parent = lightingfold
  end

end
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddToggle({
	Name = "No Fog",
	Default = false,
	Callback = function(Value)
		if Value == true then
            lighting.FogStart = 10000000000000000000000
            lighting.FogEnd = 10000000000000000000000000
            lighting.ExposureCompensation = 1
            lighting.ClockTime = 12
            lightingfold.Parent = game:GetService("Workspace")
        else
            lighting.FogStart = oldfogstart
            lighting.FogEnd = oldfogend
            lighting.ExposureCompensation = 0
            lighting.ClockTime = 0
            lightingfold.Parent = game:GetService("Lighting")
        end
	end    
})
Tab:AddToggle({
	Name = "Full Bright",
	Default = false,
	Callback = function(Value)
		if Value == true then
        lighting.Brightness = 2.5
        
        else
            lighting.Brightness = oldbrightness
        end
	end    
})
local aesp
Tab:AddToggle({
	Name = "Animatronic Esp",
	Default = false,
	Callback = function(Value)
		aesp = Value
        
	end    
})
local s
Tab:AddToggle({
	Name = "Speed",
	Default = false,
	Callback = function(Value)
		s = Value
        
	end    
})
game:GetService("RunService").RenderStepped:Connect(function()
if aesp == true then
    if gfreddy ~= nil and not  gfreddy:FindFirstChild("Highlight") then
    local esp = Instance.new("Highlight")
    esp.Parent = gfreddy
    end
    if freddy ~= nil and not  freddy:FindFirstChild("Highlight") then
        local esp = Instance.new("Highlight")
        esp.Parent = freddy
        end
        if foxy ~= nil and not  foxy:FindFirstChild("Highlight") then
            local esp = Instance.new("Highlight")
            esp.Parent = foxy
            end
            if chica ~= nil and not  chica:FindFirstChild("Highlight") then
                local esp = Instance.new("Highlight")
                esp.Parent = chica
                end
                if bonnie ~= nil and not  bonnie:FindFirstChild("Highlight") then
                    local esp = Instance.new("Highlight")
                    esp.Parent = bonnie
                    end


else
    if gfreddy ~= nil and gfreddy:FindFirstChild("Highlight") then
        gfreddy:FindFirstChild("Highlight"):remove()
    end
    if foxy ~= nil and foxy:FindFirstChild("Highlight") then
        foxy:FindFirstChild("Highlight"):remove()
    end
    if freddy ~= nil and freddy:FindFirstChild("Highlight") then
        freddy:FindFirstChild("Highlight"):remove()
    end
    if bonnie ~= nil and bonnie:FindFirstChild("Highlight") then
        bonnie:FindFirstChild("Highlight"):remove()
    end
    if chica ~= nil and chica:FindFirstChild("Highlight") then
        chica:FindFirstChild("Highlight"):remove()
    end
end
end)
Tab:AddDropdown({
	Name = "Teleports",
	Default = "...",
	Options = {"Marrionette", "Secret", "North Generator", "West Generator", "Vent Reset"},
	Callback = function(Value)
	if Value == "Marrionette" and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79, 4, -151)
    elseif Value == "Secret" and game:GetService("Players").LocalPlayer.Character  and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorkspaceUtilities.SecretRoomTouchPart.CFrame
    elseif Value == "North Generator" and game:GetService("Players").LocalPlayer.Character  and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = northgen.InteractPart.CFrame
        
    elseif Value == "West Generator" and game:GetService("Players").LocalPlayer.Character  and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = westgen.InteractPart.CFrame
elseif Value == "Vent Reset" and game:GetService("Players").LocalPlayer.Character  and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-287, 4, -317)

    end
	end    
})
game:GetService('RunService').Heartbeat:Connect(function()
    if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and s == true then
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 70
        end
end)
local changews = function()
    if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and s == true then
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 70
end
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(changews)
game:GetService("RunService").Heartbeat:Connect(function()
if task.wait(1) then
    for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Freddy" and v:FindFirstChild("Properties") then
        freddy = v
        elseif v.Name == "Chica" and v:FindFirstChild("Properties") then
            chica = v
        elseif v.Name == "Foxy" and v:FindFirstChild("Properties") then
            foxy = v
        elseif v.Name == "Bonnie" and v:FindFirstChild("Properties") then
            bonnie = v
        elseif v.Name == "GoldenFreddy" then
            gfreddy = v
        end
        
        end
end
end)
OrionLib:Init()
end
end
