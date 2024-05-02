--[[ example global variables ]]

-- _G.keycode = 'C' --[[ change to any key you want ]]
-- _G.notifications = false --[[ set true to enable notifications ]]

--[[ script ]]
local G2L = {};
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["DisplayOrder"] = 100;
G2L["1"]["AutoLocalize"] = false;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[mouse]];
G2L["1"]["ResetOnSpawn"] = false;
G2L["2"] = Instance.new("TextButton", G2L["1"]);
G2L["2"]["LineHeight"] = 0;
G2L["2"]["Active"] = false;
G2L["2"]["Interactable"] = false;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["AutoLocalize"] = false;
G2L["2"]["Modal"] = true;
G2L["2"]["AutoButtonColor"] = false;
G2L["2"]["TextTransparency"] = 1;
G2L["2"]["TextSize"] = 14;
G2L["2"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2"]["Selectable"] = false;
G2L["2"]["MaxVisibleGraphemes"] = 0;
G2L["2"]["ZIndex"] = 999999999;
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Name"] = [[_modal]];
G2L["2"]["ClipsDescendants"] = true;
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Text"] = [[]];
G2L["2"]["Visible"] = false;
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3"] = Instance.new("ModuleScript", G2L["1"]);
G2L["3"]["Name"] = [[_notify]];
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["ZIndex"] = 76143;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Size"] = UDim2.new(0.96266, 0, 0.28479, 0);
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.81877, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[_nframe]];
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["Name"] = [[_corner]];
G2L["5"]["CornerRadius"] = UDim.new(0.3, 0);
G2L["6"] = Instance.new("UIStroke", G2L["4"]);
G2L["6"]["Transparency"] = 0.7;
G2L["6"]["Name"] = [[_stroke]];
G2L["6"]["Thickness"] = 1.2;
G2L["7"] = Instance.new("UIGradient", G2L["4"]);
G2L["7"]["Rotation"] = 270;
G2L["7"]["Name"] = [[_shadow]];
G2L["7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(17, 17, 17)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(23, 23, 23))};
G2L["8"] = Instance.new("TextLabel", G2L["4"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["ZIndex"] = 76144;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextScaled"] = true;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["TextSize"] = 14;
G2L["8"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8"]["MaxVisibleGraphemes"] = 23;
G2L["8"]["Size"] = UDim2.new(0.96, 0, 0.6, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[click c to toggle mouse]];
G2L["8"]["Name"] = [[_text]];
G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["9"] = Instance.new("UIStroke", G2L["8"]);
G2L["9"]["Transparency"] = 0.7;
G2L["9"]["Name"] = [[_stroke]];
G2L["9"]["Thickness"] = 1.2;
G2L["a"] = Instance.new("LocalScript", G2L["1"]);
G2L["a"]["Name"] = [[_functions]];
G2L["b"] = Instance.new("CanvasGroup", G2L["1"]);
G2L["b"]["Interactable"] = false;
G2L["b"]["ZIndex"] = 76142;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["AutoLocalize"] = false;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["b"]["Size"] = UDim2.new(0.30238, 0, 0.2085, 0);
G2L["b"]["Position"] = UDim2.new(0.49937, 0, 0.88158, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[_notifications]];
G2L["b"]["BackgroundTransparency"] = 1;
G2L["c"] = Instance.new("UIListLayout", G2L["b"]);
G2L["c"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["c"]["Padding"] = UDim.new(0, 4);
G2L["c"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["c"]["Name"] = [[_list]];
G2L["d"] = Instance.new("Frame", G2L["b"]);
G2L["d"]["ZIndex"] = 76143;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[_placeholder]];
G2L["d"]["LayoutOrder"] = 1;
G2L["d"]["BackgroundTransparency"] = 1;

local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
	return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["3"]] = {
	Closure = function()
	    local script = G2L["3"];
		local notify = {}
		local ts = game:GetService("TweenService")
		function notify:notify(text : string, duration : number)
			spawn(function()
				local notification = script._nframe:Clone()
				notification.Parent = script.Parent._notifications
				notification.Name = "_nframe"
				notification.Visible = true
				notification.Size = UDim2.new(0, 0.963, 0, 0)
				notification._stroke.Transparency = 1
				notification._text.Text = text
				notification._text.MaxVisibleGraphemes = 0
				wait(0.1)
				ts:Create(notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Size = UDim2.new(0.963, 0, 0.285, 0)}):Play()
				ts:Create(notification._stroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 0.7}):Play()
				wait(0.32)
				ts:Create(notification._text, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {MaxVisibleGraphemes = 23}):Play()
				wait(duration or 2)
				ts:Create(notification._text, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {MaxVisibleGraphemes = 0}):Play()
				wait(0.6)
				ts:Create(notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Size = UDim2.new(0.963, 0, 0, 0)}):Play()
				ts:Create(notification._stroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
				wait(0.3)
				notification:Destroy()
			end)
		end
		return notify
	end;
};

local function C_a()
	local script = G2L["a"];
	local uis = game:GetService("UserInputService")
	local notify = require(script.Parent._notify)
	uis.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[_G.keycode] then
			script.Parent._modal.Visible = not script.Parent._modal.Visible
			if _G.notifications == true then
				notify:notify("click ".._G.keycode.." to toggle mouse", 2)
			end
		end
	end)
end;

task.spawn(C_a);
return G2L["1"], require;
