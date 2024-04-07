function ToggleGui()
    xpcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "LeftControl", false, game) game:GetService("RunService").RenderStepped:wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "LeftControl", false, game) game:GetService("RunService").RenderStepped:wait()
    end, warn)
end

xpcall(function()
    if game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").MouseEnabled then
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")

--// Services
local Players = game:GetService('Players')
local UIS = game:GetService("UserInputService")

--// Variables
local UI = Frame

local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

local Hovered = false
local Holding = false
local MoveCon = nil

local InitialX, InitialY, UIInitialPos

--// Functions

local function Drag()
	if Holding == false then MoveCon:Disconnect(); return end
	local distanceMovedX = InitialX - Mouse.X
	local distanceMovedY = InitialY - Mouse.Y

	UI.Position = UIInitialPos - UDim2.new(0, distanceMovedX, 0, distanceMovedY)
end

--// Connections

UI.MouseEnter:Connect(function()
	Hovered = true
end)

UI.MouseLeave:Connect(function()
	Hovered = false
end)

UIS.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		Holding = Hovered
		if Holding then
			InitialX, InitialY = Mouse.X, Mouse.Y
			UIInitialPos = UI.Position

			MoveCon = Mouse.Move:Connect(Drag)
		end
	end
end)

UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		Holding = false
	end
end)
--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.BackgroundTransparency = 0.800
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.160928145, 0, 0.306474835, 0)
Frame.Size = UDim2.new(0.092814371, 0, 0.178417265, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 0.650
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0317594483, 0, 0.0316802002, 0)
TextButton.Size = UDim2.new(0.927419364, 0, 0.927419364, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Sillyware"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

UICorner.Parent = TextButton

UICorner_2.Parent = Frame
TextButton.Activated:Connect(ToggleGui)
end
end, warn)
xpcall(function()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Template = Instance.new("TextLabel")
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.46044305, 0, 0.551829278, 0)
Frame.Size = UDim2.new(0.079113923, 0, 0.152439028, 0)
UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
Template.Name = "Template"
Template.Parent = Frame
Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Template.BackgroundTransparency = 1.000
Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
Template.BorderSizePixel = 0
Template.Size = UDim2.new(0.997099638, 0, 0.159999996, 0)
Template.Visible = false
Template.Font = Enum.Font.SourceSans
Template.Text = "[Sillyware] Killed Player!"
Template.TextColor3 = Color3.fromRGB(255, 255, 255)
Template.TextScaled = true
Template.TextSize = 14.000
Template.TextStrokeTransparency = 0.600
Template.TextTransparency = 1.000
Template.TextWrapped = true
local function Init()
	local template = Frame.Template
    game.Players.LocalPlayer:WaitForChild("leaderstats")["Total Kills"].Changed:Connect(function()
    local clone = template:Clone()
		clone.Parent = Frame
		clone.Visible = true
		clone.Transparency = 1
		local ts = game:GetService("TweenService")
		local tweena = ts:Create(clone, TweenInfo.new(.5, Enum.EasingStyle.Linear), {TextTransparency = 0})
		tweena:Play()
		tweena.Completed:Wait()
		wait(2)
		local tweenb = ts:Create(clone, TweenInfo.new(1, Enum.EasingStyle.Linear), {TextTransparency = 1})
		tweenb:Play()
		tweenb.Completed:Wait()
		clone:Destroy()
    end)
end
coroutine.wrap(Init)()
end, warn)
