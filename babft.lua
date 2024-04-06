-- Paid Exploit Library Example
local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))()

local tab1 = library:CreateTab("     BABFT", true)
local button = library:MakeButton(tab1,"🍞 Bread Quest",function(button)
  
workspace.QuestMakerEvent:FireServer(100)

end)

local button = library:MakeButton(tab1,"🎁 Gift Quest",function(button)
  
workspace.QuestMakerEvent:FireServer(99)

end)

local button = library:MakeButton(tab1,"🎄 Christmas Quest",function(button)

  workspace.QuestMakerEvent:FireServer(101)


end)

local text = library:MakeLabel(tab1,"< Bosses >")

local button = library:MakeButton(tab1,"🎃 HALLOWEEN BOSS",function(button)
  

local TeleportService = game:GetService("TeleportService")
local Place = 1930665568
local player = game.Players.LocalPlayer
TeleportService:Teleport(Place, player)

end)

local button = library:MakeButton(tab1,"🥚 EGG BOSS",function(button)

 
local TeleportService = game:GetService("TeleportService")
local Place = 1930863474
local player = game.Players.LocalPlayer
TeleportService:Teleport(Place, player)

end)
