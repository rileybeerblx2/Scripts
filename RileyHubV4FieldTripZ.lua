local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Riley Hub V4 - Field Trip Z")

local KillingCheats = PhantomForcesWindow:NewSection("Main")

KillingCheats:CreateButton("Give Medkit", function()
game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer("PICKUP_ITEM", "MedKit")
end)

KillingCheats:CreateButton("Give Donut", function()
game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer("PICKUP_ITEM", "Donut")
end)

KillingCheats:CreateButton("Give Bandage", function()
game:GetService("ReplicatedStorage").NetworkEvents.RemoteFunction:InvokeServer("PICKUP_ITEM", "Bandage")
end)

local KillingCheats = PhantomForcesWindow:NewSection("Other Stuff")

KillingCheats:CreateButton("Inf Jump", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)
