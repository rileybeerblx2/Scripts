local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
 
ESP.Players = false
ESP.Boxes = true
ESP.Names = true

ESP:Toggle(true)
 
ESP:AddObjectListener(game:GetService("Workspace").Entities, { 
    Name = "Howler", 
    CustomName = "Howler", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "Howler" 
})


ESP:AddObjectListener(game:GetService("Workspace").Entities, { 
    Name = "Cameraman", 
    CustomName = "Cameraman", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "Cman" 
})
ESP:AddObjectListener(game:GetService("Workspace").Entities, { 
    Name = "Partygoer", 
    CustomName = "Partygoer", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "PG" 
})
ESP:AddObjectListener(game:GetService("Workspace").Entities, { 
    Name = "Starfish", 
    CustomName = "Starfish", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "Sfish" 
})

ESP:AddObjectListener(game:GetService("Workspace").Ignored.Trophies, { 
    Name = "Simulation Core", 
    CustomName = "Core", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "Cores" 
})
ESP:AddObjectListener(game:GetService("Workspace").Entities, { 
    Name = "Hounds", 
    CustomName = "Hound", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "Hound" 
})
ESP:AddObjectListener(game:GetService("Workspace").Entities, { 
    Name = "Cloners", 
    CustomName = "Skin-Stealer", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "SS" 
})
ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "puzzleBall", 
    CustomName = "Color Puzzle", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "PB" 
})
ESP:AddObjectListener(game:GetService("Workspace").Entities, { 
    Name = "Skinstealer", 
    CustomName = "Skin Walker", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "SW" 
})
ESP:AddObjectListener(game:GetService("Workspace").Entities, { 
    Name = "The Smiler", 
    CustomName = "Smiler", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "SM" 
})
ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "key", 
    CustomName = "Key", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "Key" 
})
ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "crowbar", 
    CustomName = "Crowbar", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "CB" 
})
ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "Painting1", 
    CustomName = "Painting #1", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "P1" 
})
ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "Painting2", 
    CustomName = "Painting #2", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "P2" 
})

ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "Painting3", 
    CustomName = "Painting #3", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "P3" 
})

ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "StarButton", 
    CustomName = "Star Button", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "SB" 
})



ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "paper0", 
    CustomName = "Paper", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "P" 
})

ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "WireCutters", 
    CustomName = "Wire Cutters", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "WC" 
})

ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "ScrewDriver", 
    CustomName = "ScrewDriver", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "SD" 
})
ESP:AddObjectListener(game:GetService("Workspace").Ignored.Interacts, { 
    Name = "PartyPlushie", 
    CustomName = "Plushie", 
    Color = Color3.fromRGB(350,0,0),
    IsEnabled = "PP" 
})
ESP.P = false
ESP.PP = false
ESP.WC = false
ESP.SB = false
ESP.SB = false
ESP.P1 = false
ESP.P2 = false
ESP.P3 = false
ESP.Howler = false
ESP.Hound = false
ESP.Cman = false
ESP.Sfish = false
ESP.SS = false
ESP.Cores = false
ESP.PB = false
ESP.SW = true
ESP.Key = true
ESP.SM = false
ESP.PG = false
ESP.CB = false
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/rileybeerblx2/Orion-Lua/main/mobilefriendlyorion.lua')))()
local Window = OrionLib:MakeWindow({Name = "Riley Hub V4", HidePremium = false, SaveConfig = true, ConfigFolder = "Riley Hub V4"})
OrionLib:MakeNotification({
	Name = "Riley Hub V4 - Apeirophobia",
	Content = "made by riley",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("Teleports")
Tab:AddDropdown({
	Name = "Dropdown",
	Default = "...",
	Options = {"Level 0 Exit", "Level 1 Exit", "Level 3 Exit", "Level 4 Exit", "Level 5 Exit", "Level 6 Exit", "Level 7 Exit","Level 8 Exit"},
	Callback = function(Value)
		if Value == "Level 0 Exit" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-896.79638671875, 11.775812149047852, -92.27729797363281)
		elseif   Value == "Level 1 Exit" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-793, -98, -1076)
		elseif   Value == "Level 3 Exit" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(607, 6, -107)
		elseif   Value == "Level 4 Exit" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-291.122, 202.659, -114.828)
		elseif   Value == "Level 7 Exit" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-608, 12, 3567)
		elseif   Value == "Level 7 Exit" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2575, 2, -2565)
		elseif   Value == "Level 8 Exit" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3174, 11, -219)
			
		end

	end    
})
local R = Window:MakeTab({
	Name = "Render",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
R:AddLabel("All Levels")
R:AddToggle({
	Name = "Esp Puzzle Objects",
	Default = false,
	Callback = function(Value)
		ESP.PB = Value
	end    
})
R:AddToggle({
	Name = "Esp Key",
	Default = false,
	Callback = function(Value)
		ESP.Key = Value
	end    
})
R:AddToggle({
	Name = "Esp Crowbar",
	Default = false,
	Callback = function(Value)
		ESP.CB = Value
	end    
})
R:AddToggle({
	Name = "Esp Cores",
	Default = false,
	Callback = function(Value)
		ESP.Cores = Value
	end    
})
R:AddToggle({
	Name = "Esp Wire Cutters",
	Default = false,
	Callback = function(Value)
		ESP.WC = Value
	end    
})
R:AddToggle({
	Name = "Esp Paintings",
	Default = false,
	Callback = function(Value)
		ESP.P1 = Value
		ESP.P2 = Value
		ESP.P3 = Value
	end    
})
R:AddToggle({
	Name = "Esp ScrewDriver",
	Default = false,
	Callback = function(Value)
		ESP.SD = Value
	end    
})

R:AddLabel("Level 0")

R:AddToggle({
	Name = "Esp Howler",
	Default = false,
	Callback = function(Value)
	ESP.Howler = Value	
	end    
})
R:AddToggle({
	Name = "Esp Cameraman",
	Default = false,
	Callback = function(Value)
		ESP.Cman = Value
	end    
})
R:AddLabel("Level 1")
R:AddToggle({
	Name = "Esp Starfish",
	Default = false,
	Callback = function(Value)
		ESP.Sfish = Value
	end    
})
R:AddLabel("Level 2")
R:AddToggle({
	Name = "Esp Hound",
	Default = false,
	Callback = function(Value)
		ESP.Hound = Value
	end    
})
R:AddLabel("Level 5")
R:AddToggle({
	Name = "Esp Skin-Stealer",
	Default = false,
	Callback = function(Value)
		ESP.SS = Value
	end    
})
R:AddLabel("Level 7")
R:AddToggle({
	Name = "Esp Puzzle Objects",
	Default = false,
	Callback = function(Value)
		ESP.PB = Value
	end    
})
R:AddLabel("Level 8")
R:AddToggle({
	Name = "Esp Skin Walker",
	Default = false,
	Callback = function(Value)
		ESP.SW = Value
	end    
})
R:AddLabel("Level 9")
R:AddToggle({
	Name = "Esp Smiler",
	Default = false,
	Callback = function(Value)
		ESP.SM = Value
	end    
})
