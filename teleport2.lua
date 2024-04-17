local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new( 29.6134, -24.5611, -2061.23)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end)
