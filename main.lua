local userID = _G.userID_To_Spam

syn.queue_on_teleport("_G.userID_To_Spam = "..userID.." loadstring(game:HttpGet('https://raw.githubusercontent.com/kxrbon/outfitSpammer/main/main.lua', true))()")

local counter = 0

while counter < 50 do
	local arg = userID
	local Event = game:GetService("ReplicatedStorage"):WaitForChild("⠀⠀⠀⠀😃_outfit_⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀")
	Event:FireServer(arg)
	counter = counter + 1
	wait(1)
end

game:GetService("TeleportService"):Teleport(4984400432, game.Players.LocalPlayer)
