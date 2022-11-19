local userID = _G.userID_To_Spam

if userID == nil then
	userID = game.Players:GetUserIdFromNameAsync(game.Players.LocalPlayer.Name)
end

syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/kxrbon/outfitSpammer/main/loader.lua', true))()")

local counter = 0

while counter < 50 do
	local arg = userID
	local Event = game:GetService("ReplicatedStorage")["⠀⠀⠀⠀😃_outfit_⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"]
	Event:FireServer(arg)
	counter = counter + 1
end

game:GetService("TeleportService"):Teleport(4984400432, game.Players.LocalPlayer)
