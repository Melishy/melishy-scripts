--open source ofc, because like it's easy to make your own one

if not game.GameId == "126922689754590" then return end
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Players = game:GetService("Players")
local speaker = Players.LocalPlayer
local mouse = speaker:GetMouse()

local connection
local yello = false
local vcing = false

local scanno = false

function isVoicePlace() 
    return game.PlaceId ~= "81399969866087" 
end

local Window = WindUI:CreateWindow({
	Title = "Quiet or Die",
	Icon = "fish",
	Author = "by melishy",
	Size = UDim2.fromOffset(380, 350),
    Transparent = true,
})

Window:DisableTopbarButtons({
    "Fullscreen",
})

Window:EditOpenButton({
    Title = "yell or die",
    CornerRadius = UDim.new(0, 20),
    StrokeThickness = 0,
    OnlyMobile = true,
    Enabled = true,
    Draggable = true,
});

Window:SetToggleKey(Enum.KeyCode.V)

local Main = Window:Tab({
	Title = "Main",
	Icon = "book-dashed",
})

Main:Select()

Main:Toggle({
	Title = "Toggle Teleport Tool",
	Desc = "Gives you Teleport Tool, even if you respawned",
	Type = "Toggle",
	Default = false,
	Callback = function(state)
		local function gib()
			local tool = Instance.new("Tool")
			tool.Name = "Teleport Tool"
			tool.RequiresHandle = false
			tool.Parent = speaker.Backpack

			tool.Activated:Connect(function()
				local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
				local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
				if not Char or not HRP then
					return warn("Failed to find HumanoidRootPart")
				end

				HRP.CFrame = CFrame.new(mouse.Hit.X, mouse.Hit.Y + 3, mouse.Hit.Z, select(4, HRP.CFrame:components()))
			end)
			
			return tool
		end

		if state then
			if not speaker.Backpack:FindFirstChild("Teleport Tool") then
				gib()
			end

			connection = speaker.CharacterAdded:Connect(function()
				gib()
			end)
		else
			if connection then
				connection:Disconnect()
				connection = nil
				
				local tool = speaker.Backpack:FindFirstChild("Teleport Tool")
				if tool then tool:Destroy() end
			end
		end
	end
})

Main:Divider()

Main:Paragraph({
    Title = "INFO",
    Desc = "You can toggle this GUI by pressing V",
})

Main:Keybind({
    Title = "Change?",
    Desc = "You can change the toggle GUI keybind at anytime",
    Value = "V",
    Callback = function(v)
        Window:SetToggleKey(Enum.KeyCode[v])
    end
})

Main:Section({
    Title = "i plan on adding reviving yourself feature if that's possible btw",
    TextSize = 11,
    Opened = true
})

local Survivor = Window:Tab({
	Title = "Survivor",
	Icon = "infinity",
})

local Killer = Window:Tab({
	Title = "Killer",
	Icon = "slice",
})

Survivor:Toggle({
	Title = "Yell Repeatedly",
	Desc = "Cooldown? What's that?",
	Type = "Toggle",
	Default = false,
	Callback = function(state)
		yello = state

		local function yell()
			local args = { 1 }
			game:GetService("ReplicatedStorage"):WaitForChild("AbilityEvent"):FireServer(unpack(args))
		end

		if state then
			task.spawn(function()
				repeat
					yell()
					task.wait()
				until not yello
			end)
		end
	end
})

Survivor:Toggle({
	Title = "Toggle fake VC activation",
	Desc = "Best method to leak your location",
	Type = "Toggle",
	Default = false,
    Locked = isVoicePlace(),
	Callback = function(state)
		vcing = state

		local function vcify()
			game:GetService("ReplicatedStorage"):WaitForChild("VCactivated"):FireServer()
		end

    	if state then
    		task.spawn(function()
    			repeat
    				vcify()
    				task.wait()
    			until not vcing
    		end)
    	end
    end
})

Survivor:Divider()

Survivor:Keybind({
	Title = "One-time Yell",
	Desc = "I don't know what's cooldown yet...",
	Value = "Q",
	Callback = function()
		local args = { 1 }
		game:GetService("ReplicatedStorage"):WaitForChild("AbilityEvent"):FireServer(unpack(args))
	end
})

Survivor:Button({
    Title = "One-time Yell",
    Desc = "This button exists just in case you're not a PC player",
    Callback = function()
        local args = { 1 }
		game:GetService("ReplicatedStorage"):WaitForChild("AbilityEvent"):FireServer(unpack(args))
    end
})

Survivor:Divider()

Survivor:Keybind({
	Title = "One-time fake VC activation",
    Desc = "Yeah, seems like indeed the best location leaker",
    Value = "C",
    --Locked = isVoicePlace(),
    Callback = function()
        if isVoicePlace() then
    	    game:GetService("ReplicatedStorage"):WaitForChild("VCactivated"):FireServer()
        end
    end
})

Survivor:Button({
    Title = "One-time fake VC activation",
    Desc = "You know why is this button exists..",
    Locked = isVoicePlace(),
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("VCactivated"):FireServer()
    end
})

Survivor:Section({
    Title = "note that it only works in vc servers! locking that keybind doesn't work yet.",
    TextSize = 11,
    Opened = true
})

Killer:Paragraph({
    Title = "INFO",
    Desc = "It works even if you're not a Killer. That makes so OP",
})

Killer:Divider()

Killer:Toggle({
	Title = "Toggle Scan",
	Desc = "Just like a Killer that can scan everyone's locations",
	Type = "Toggle",
	Default = false,
	Callback = function(state)
		scanno = state

		local function scanify()
			local args = { 3 }
			game:GetService("ReplicatedStorage"):WaitForChild("AbilityEvent"):FireServer(unpack(args))
		end

		if state then
			task.spawn(function()
				repeat
					scanify()
					task.wait()
				until not scanno
			end)
		end
	end
})

Killer:Keybind({
	Title = "One-time scan",
    Desc = "Yeah... Why's the game so vulnerable?",
    Value = "B",
    Callback = function()
        local args = { 3 }
        game:GetService("ReplicatedStorage"):WaitForChild("AbilityEvent"):FireServer(unpack(args))
    end
})

Killer:Button({
    Title = "One-time scan",
    Desc = "for mobile for mobile for mobile for mobile case, got it?",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("VCactivated"):FireServer()
    end
})
