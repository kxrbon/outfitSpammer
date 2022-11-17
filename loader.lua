-- Gui to Lua
-- Version: 3.2

-- Instances:

local outfitSpammer = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local inputBox = Instance.new("TextBox")
local subtitle = Instance.new("TextLabel")
local beginSpam = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local subtitle_2 = Instance.new("TextLabel")
local toggleServerHop = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local subtitle_3 = Instance.new("TextLabel")

--Properties:

outfitSpammer.Name = "outfitSpammer"
outfitSpammer.Parent = game.CoreGui
outfitSpammer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
outfitSpammer.DisplayOrder = 999

mainFrame.Name = "mainFrame"
mainFrame.Parent = outfitSpammer
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
mainFrame.Position = UDim2.new(0.522928596, 0, 0.523169577, 0)
mainFrame.Size = UDim2.new(0.419708043, 0, 0.400925934, 0)

UICorner.CornerRadius = UDim.new(0.0277136266, 0)
UICorner.Parent = mainFrame

title.Name = "title"
title.Parent = mainFrame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.374959767, 0, 0.0161812641, 0)
title.Size = UDim2.new(0.24844721, 0, 0.115473442, 0)
title.Font = Enum.Font.Unknown
title.Text = "Outfit Spammer"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

inputBox.Name = "inputBox"
inputBox.Parent = mainFrame
inputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox.BackgroundTransparency = 1.000
inputBox.Position = UDim2.new(0.0310397167, 0, 0.298911899, 0)
inputBox.Size = UDim2.new(0, 240, 0, 30)
inputBox.Font = Enum.Font.Unknown
inputBox.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
inputBox.PlaceholderText = "click to enter"
inputBox.Text = ""
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.TextSize = 20.000
inputBox.TextXAlignment = Enum.TextXAlignment.Left

subtitle.Name = "subtitle"
subtitle.Parent = mainFrame
subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
subtitle.BackgroundTransparency = 1.000
subtitle.Position = UDim2.new(0.0310397167, 0, 0.233472526, 0)
subtitle.Size = UDim2.new(0.310481399, 0, 0.0659208596, 0)
subtitle.Font = Enum.Font.Unknown
subtitle.Text = "UserID / Player Name:"
subtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
subtitle.TextSize = 22.000
subtitle.TextWrapped = true
subtitle.TextXAlignment = Enum.TextXAlignment.Left

beginSpam.Name = "beginSpam"
beginSpam.Parent = mainFrame
beginSpam.BackgroundColor3 = Color3.fromRGB(0, 255, 128)
beginSpam.Position = UDim2.new(0.0310397167, 0, 0.859918594, 0)
beginSpam.Size = UDim2.new(0, 756, 0, 42)
beginSpam.Font = Enum.Font.Unknown
beginSpam.Text = "Begin Spam"
beginSpam.TextColor3 = Color3.fromRGB(255, 255, 255)
beginSpam.TextSize = 30.000
beginSpam.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0.159999996, 0)
UICorner_2.Parent = beginSpam

subtitle_2.Name = "subtitle"
subtitle_2.Parent = mainFrame
subtitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
subtitle_2.BackgroundTransparency = 1.000
subtitle_2.Position = UDim2.new(0.0310397167, 0, 0.767454207, 0)
subtitle_2.Size = UDim2.new(0.128577322, 0, 0.0659208596, 0)
subtitle_2.Font = Enum.Font.Unknown
subtitle_2.Text = "Server Hop:"
subtitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
subtitle_2.TextSize = 22.000
subtitle_2.TextWrapped = true
subtitle_2.TextXAlignment = Enum.TextXAlignment.Left

toggleServerHop.Name = "toggleServerHop"
toggleServerHop.Parent = mainFrame
toggleServerHop.BackgroundColor3 = Color3.fromRGB(255, 6, 52)
toggleServerHop.Position = UDim2.new(0.159999996, 0, 0.778999984, 0)
toggleServerHop.Size = UDim2.new(0, 21, 0, 21)
toggleServerHop.Image = "http://www.roblox.com/asset/?id=11589627050"

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = toggleServerHop

subtitle_3.Name = "subtitle"
subtitle_3.Parent = mainFrame
subtitle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
subtitle_3.BackgroundTransparency = 1.000
subtitle_3.Position = UDim2.new(0.212311655, 0, 0.769765854, 0)
subtitle_3.Size = UDim2.new(0.507939041, 0, 0.0659208596, 0)
subtitle_3.Font = Enum.Font.Unknown
subtitle_3.Text = "rejoin game to end server hopping"
subtitle_3.TextColor3 = Color3.fromRGB(255, 255, 255)
subtitle_3.TextSize = 22.000
subtitle_3.TextWrapped = true
subtitle_3.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function XQMTN_fake_script() -- outfitSpammer.handler 
	local script = Instance.new('LocalScript', outfitSpammer)

	local mainFrame = script.Parent.mainFrame
	local beginSpamButton = mainFrame.beginSpam
	local teleportAfterButton = mainFrame.toggleServerHop
	
	local teleportAfter = true
	
	teleportAfterButton.MouseButton1Click:Connect(function()
		if teleportAfter == false then
			teleportAfterButton.BackgroundColor3 = Color3.fromRGB(0, 255, 128)
			teleportAfter = true
		end
	end)
	
	beginSpamButton.MouseButton1Click:Connect(function()
		local finalID
		local success, fail = pcall(function()
			local text = mainFrame.inputBox.Text
			finalID = game.Players:GetUserIdFromNameAsync(text)
		end)
	
		if fail then
			mainFrame.inputBox.Text = "invalid userID / player name"
			mainFrame.inputBox.TextColor3 = Color3.fromRGB(255, 6, 52)
			wait(2)
			mainFrame.inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			mainFrame.inputBox.Text = ""
            finalID = mainFrame.inputBox.Text
		end
		
		while true do
			if teleportAfter then
				local arg = finalID
				local Event = game:GetService("ReplicatedStorage")["⠀⠀⠀⠀😃_outfit_⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"]
				Event:FireServer(arg)
				task.wait(0.5)
                syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/kxrbon/outfitSpammer/main/loader.lua', true))()")
				game:GetService("TeleportService"):Teleport(4984400432, game.Players.LocalPlayer)
			end
		end
	end)
end
coroutine.wrap(XQMTN_fake_script)()
