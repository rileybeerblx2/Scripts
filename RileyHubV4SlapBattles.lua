spawn(function()
workspace:WaitForChild("BountyHunterRoom"):WaitForChild("BountyHunterBooth"):WaitForChild("_configPart"):WaitForChild("OpenRemote"):InvokeServer()
workspace:WaitForChild("BountyHunterRoom"):WaitForChild("BountyHunterBooth"):WaitForChild("_configPart"):WaitForChild("LeaveRemote"):FireServer()
while wait(5) do
workspace:WaitForChild("BountyHunterRoom"):WaitForChild("BountyHunterBooth"):WaitForChild("_configPart"):WaitForChild("OpenRemote"):InvokeServer()
workspace:WaitForChild("BountyHunterRoom"):WaitForChild("BountyHunterBooth"):WaitForChild("_configPart"):WaitForChild("LeaveRemote"):FireServer()
end
end)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/rileybeerblx2/Orion-Lua/main/mobilefriendlyorion.lua')))()
local Window = OrionLib:MakeWindow({Name = "Riley Hub V4 - Slap Battles", HidePremium = false, SaveConfig = true, ConfigFolder = "Riley Hub V4"})
local nk = false
local av = false
local antivoid = Instance.new("Part")
antivoid.Parent = game:GetService("Workspace")
antivoid.Position = Vector3.new(-4.27, -58.17, 28.63)
antivoid.Anchored = true
antivoid.Transparency = 1
antivoid.Size = Vector3.new(707, 1, 745)
antivoid.CanCollide = false
antivoid.Touched:Connect(function(toucher)
    if game:GetService("Players").LocalPlayer.Character and av == true and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and toucher == game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(27, -5, 10)
        OrionLib:MakeNotification({
	Name = "Anti Void Activated",
	Content = "Enjoy Not Falling To The Void",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    end
    end)
local ka = false
local nw = false
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Kill Aura",
	Default = false,
	Callback = function(Value)
	ka = Value
	end    
})
local aa = false
spawn(function()
    while wait() do
    if aa then 
        local args = {
            [1] = "AoeExplosion",
            [2] = 0
            }
            game:GetService("ReplicatedStorage").rhythmevent:FireServer(unpack(args))
    end
    end
end)
Tab:AddToggle({
	Name = "Ability Aura",
	Default = false,
	Callback = function(Value)
	aa = Value
	end    
})
Tab:AddToggle({
	Name = "Anti Void",
	Default = false,
	Callback = function(Value)
	av = Value
	end    
})
Tab:AddToggle({
	Name = "No Pusher Wall",
	Default = false,
	Callback = function(Value)
	nw = Value
	end    
})
Tab:AddToggle({
	Name = "No Knockback",
	Default = false,
	Callback = function(Value)
	nk = Value
	end    
})
Tab:AddToggle({
	Name = "Server Crasher",
	Default = false,
	Callback = function(Value)
	_G.crahs = Value
	end    
})
_G.crahs = false
game.RunService.RenderStepped:Connect(function()
if _G.crahs == true then
local args = {
    [1] = "Charge"
}

game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer(unpack(args))

end
end)
workspace.ChildAdded:Connect(function(v)
if v.Name == "redfx" or v.Name =="bluefx" or v.Name == "hollowpurplefx" then 
v:Destroy()
end
end)

game:GetService("RunService").RenderStepped:Connect(function()
if game:GetService("Workspace"):FindFirstChild("wall") and nw == true then
    game:GetService("Workspace").wall.Transparency = .5
      game:GetService("Workspace").wall.CanCollide = false
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if nk == true then
    
if game:GetService('Players').LocalPlayer.Character and game:GetService('Players').LocalPlayer.Character:FindFirstChild("FakePart Left Leg") then
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = true
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
elseif game:GetService('Players').LocalPlayer.Character and not game:GetService('Players').LocalPlayer.Character:FindFirstChild("FakePart Left Leg") then
      game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
end
end)


OrionLib:Init()
while wait() do
    for i, v in pairs(game:GetService("Players"):GetChildren()) do
if ka == true and v~= game:GetService("Players").LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.HumanoidRootPart and (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 20 then
    if v:FindFirstChild("Reversed") then return end
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").b:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").FlashHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").JetHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").WarpHt:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").BullHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").SnowHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").DiamondHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").GhostHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").PusherHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").PlagueHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").bobhit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").springhit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").CustomHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").WormHit:FireServer(unpack(args))
        local args = {[1] = v.Character.HumanoidRootPart} game:GetService("ReplicatedStorage").GeneralHit:FireServer(unpack(args))
        wait(1)

        end
    end
    end
end
