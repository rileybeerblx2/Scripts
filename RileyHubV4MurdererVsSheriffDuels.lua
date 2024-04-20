local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/rileybeerblx2/Orion-Lua/main/mobilefriendlyorion.lua')))()
local Window = OrionLib:MakeWindow({Name = "Riley Hub V4 - Murderer Vs Sheriff Duels", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText="Riley Hub V4"})

OrionLib:MakeNotification({
	Name = "Enjoy Using The Script!",
	Content = "By RileyBeeRBLX",
	Image = "rbxassetid://4483345998",
	Time = 8
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "ESP",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/N7UcS9f4"))();
         print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "ESP Tracers",
	Callback = function()
      		local TargetPartName = "HumanoidRootPart"
local GenericHumanoidTargetPartName = TargetPartName    
local LineColor = Color3.new(255, 255, 255)
local TeammateLineColor = Color3.new(0, 0.25, 1)
local GenericHumanoidLineColor = Color3.new(1, 0, 0)
local LineWidth = 2
local DrawTeammates = true
local FindHumanoids = true
local GetLineOrigin = function(Camera)
    return Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y*.9)
end




local Camera = workspace.CurrentCamera
local LineOrigin = nil
Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
    LineOrigin = GetLineOrigin(Camera)
end)
LineOrigin = GetLineOrigin(Camera)


local Gui = Instance.new("ScreenGui")
Gui.Name = "SnaplineGui"
Gui.Parent = game.Players.LocalPlayer.PlayerGui
local Lines = {}


function Setline(Line, Width, Color, Origin, Destination)
    local Position = (Origin + Destination) / 2
    Line.Position = UDim2.new(0, Position.X, 0, Position.Y)
    local Length = (Origin - Destination).Magnitude
    Line.BackgroundColor3 = Color
    Line.BorderColor3 = Color
    Line.Size = UDim2.new(0, Length, 0, Width)
    Line.Rotation = math.deg(math.atan2(Destination.Y - Origin.Y, Destination.X - Origin.X))
end


game:GetService("RunService").RenderStepped:Connect(function()
    local Targets = {}
    for i, Player in pairs(game.Players:GetPlayers()) do
        if Player == game.Players.LocalPlayer then continue end
        local IsTeammate = game.Players.LocalPlayer.Team ~= nil and Player.Team == game.Players.LocalPlayer.Team
        if not DrawTeammates and IsTeammate then continue end
        local Character = Player.Character
        if not Character then continue end
        local TargetPart = Character:FindFirstChild(TargetPartName)
        if not TargetPart then continue end
        local ScreenPoint, OnScreen = Camera:WorldToScreenPoint(TargetPart.Position)
        if OnScreen then
            table.insert(Targets, {Vector2.new(ScreenPoint.X, ScreenPoint.Y), IsTeammate and TeammateLineColor or LineColor})
        end
    end
    if FindHumanoids then
        for _, Obj in pairs(workspace:GetDescendants()) do
            if Obj.ClassName ~= "Humanoid" then continue end
            if game.Players:FindFirstChild(Obj.Parent.Name) then continue end
            local TargetPart = Obj.Parent:FindFirstChild(TargetPartName)
            if not TargetPart then continue end
            local ScreenPoint, OnScreen = Camera:WorldToScreenPoint(TargetPart.Position)
            if OnScreen then
                table.insert(Targets, {Vector2.new(ScreenPoint.X, ScreenPoint.Y), GenericHumanoidLineColor})
            end
        end
    end
    if #Targets > #Lines then
        local NewLine = Instance.new("Frame")
        NewLine.Name = "Snapline"
        NewLine.AnchorPoint = Vector2.new(.5, .5)
        NewLine.Parent = Gui
        table.insert(Lines, NewLine)
    end
    for i, Line in pairs(Lines) do
        local TargetData = Targets[i]
        if not TargetData then
            Line:Destroy()
            table.remove(Lines, i)
            continue
        end
        Setline(Line, LineWidth, TargetData[2], LineOrigin, TargetData[1])
    end
end)
  	end    
})

Tab:AddButton({
	Name = "Hitbox",
	Callback = function()
      	_G.HeadSize = 20
_G.Disabled = true

game:GetService('RunService').RenderStepped:Connect(function()
    if _G.Disabled then
        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                    local character = player.Character
                    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart then
                        humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        humanoidRootPart.Transparency = 0.7
                        humanoidRootPart.BrickColor = BrickColor.new("Bright red") -- Changed color to red
                        humanoidRootPart.Material = Enum.Material.Neon -- Changed material to Neon
                        humanoidRootPart.CanCollide = false
                    end
                end)
            end
        end
    end
end)

    	print("button pressed")
  	end    
})

Tab:AddParagraph("Main Stuff For Murderer Vs Sheriff Duels","You Can Use Hitbox And ESP And Also You Can Win Every Match")

local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Infinity Yield",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
     	print("Executed Successfully")
  	end    
})

Tab:AddLabel("Made By RileyBeeRBLX")

 OrionLib:Init()
