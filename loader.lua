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

--Properties:

outfitSpammer.Name = "outfitSpammer"
outfitSpammer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
outfitSpammer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

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
title.Size = UDim2.new(0.248447224, 0, 0.115473442, 0)
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
inputBox.Size = UDim2.new(0.297981262, 0, 0.0693482757, 0)
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
beginSpam.Size = UDim2.new(0.938641012, 0, 0.0970875844, 0)
beginSpam.Font = Enum.Font.Unknown
beginSpam.Text = "Begin Spam"
beginSpam.TextColor3 = Color3.fromRGB(255, 255, 255)
beginSpam.TextSize = 30.000
beginSpam.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0.159999996, 0)
UICorner_2.Parent = beginSpam

-- Scripts:

local function SGNCA_fake_script() -- outfitSpammer.handler 
	local script = Instance.new('LocalScript', outfitSpammer)

	local mainFrame = script.Parent.mainFrame
	local beginSpamButton = mainFrame.beginSpam
	
	beginSpamButton.MouseButton1Click:Connect(function()
		beginSpamButton.Text = "Teleporting In 10 Seconds"
		local finalID
		local success, fail = pcall(function()
			local text = mainFrame.inputBox.Text
			finalID = game.Players:GetUserIdFromNameAsync(text)
		end)
	
		if fail then
			finalID = mainFrame.inputBox.Text
			mainFrame.inputBox.Text = "invalid userID / player name"
			mainFrame.inputBox.TextColor3 = Color3.fromRGB(255, 6, 52)
			wait(2)
			mainFrame.inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			mainFrame.inputBox.Text = ""
		end
		
		local count = 0
		
		while count < 20 do
			local arg = finalID
			local Event = game:GetService("ReplicatedStorage")["⠀⠀⠀⠀😃_outfit_⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"]
			Event:FireServer(arg)
			wait(0.1)
			count += 1
		end
		
		game:GetService("TeleportService"):Teleport(4984400432, game.Players.LocalPlayer)
	end)
end
coroutine.wrap(SGNCA_fake_script)()
