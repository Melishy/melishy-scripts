if game.PlaceId == 12507488315 then
if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("localTimeBeacon") then
	game.Players.LocalPlayer.PlayerScripts:FindFirstChild("localTimeBeacon"):Destroy()
end

local UI = {};
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
UI["1"]["IgnoreGuiInset"] = true;
UI["1"]["DisplayOrder"] = 999;
UI["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
UI["1"]["Name"] = [[flexyourweather]];
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
UI["1"]["ResetOnSpawn"] = false;
UI["2"] = Instance.new("Frame", UI["1"]);
UI["2"]["BorderSizePixel"] = 0;
UI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["2"]["Size"] = UDim2.new(0, 229, 0, 208);
UI["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["2"]["Name"] = [[ui]];
UI["2"]["BackgroundTransparency"] = 1;
UI["3"] = Instance.new("Frame", UI["2"]);
UI["3"]["ZIndex"] = 2;
UI["3"]["BorderSizePixel"] = 0;
UI["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["3"]["Size"] = UDim2.new(1, 0, 0, 42);
UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["3"]["Name"] = [[topbar]];
UI["3"]["BackgroundTransparency"] = 1;
UI["4"] = Instance.new("Frame", UI["3"]);
UI["4"]["BorderSizePixel"] = 0;
UI["4"]["BackgroundColor3"] = Color3.fromRGB(66, 66, 66);
UI["4"]["Size"] = UDim2.new(1, 0, 0, 1);
UI["4"]["Position"] = UDim2.new(0, 0, 1, 0);
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["4"]["Name"] = [[divider]];
UI["4"]["BackgroundTransparency"] = 0.5;
UI["5"] = Instance.new("Frame", UI["3"]);
UI["5"]["BorderSizePixel"] = 0;
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["5"]["Size"] = UDim2.new(1, -16, 1, 0);
UI["5"]["Position"] = UDim2.new(0, 16, 0, 0);
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["5"]["Name"] = [[textlayout]];
UI["5"]["BackgroundTransparency"] = 1;
UI["6"] = Instance.new("UIListLayout", UI["5"]);
UI["6"]["Padding"] = UDim.new(0, 5);
UI["6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
UI["6"]["FillDirection"] = Enum.FillDirection.Horizontal;
UI["7"] = Instance.new("TextLabel", UI["5"]);
UI["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["7"]["TextSize"] = 12;
UI["7"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
UI["7"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
UI["7"]["BackgroundTransparency"] = 1;
UI["7"]["RichText"] = true;
UI["7"]["Size"] = UDim2.new(0, 0, 1, 0);
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["7"]["Text"] = [[flex your weather]];
UI["7"]["AutoLocalize"] = false;
UI["7"]["AutomaticSize"] = Enum.AutomaticSize.X;
UI["7"]["Name"] = [[title]];
UI["8"] = Instance.new("TextLabel", UI["5"]);
UI["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["8"]["TextTransparency"] = 0.4;
UI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["8"]["TextSize"] = 12;
UI["8"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["8"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
UI["8"]["BackgroundTransparency"] = 1;
UI["8"]["RichText"] = true;
UI["8"]["Size"] = UDim2.new(0, 0, 1, 0);
UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["8"]["Text"] = [[by Melishy]];
UI["8"]["AutoLocalize"] = false;
UI["8"]["AutomaticSize"] = Enum.AutomaticSize.X;
UI["8"]["Name"] = [[subtitle]];
UI["9"] = Instance.new("TextButton", UI["3"]);
UI["9"]["AutoButtonColor"] = false;
UI["9"]["TextSize"] = 14;
UI["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
UI["9"]["BackgroundColor3"] = Color3.fromRGB(241, 241, 241);
UI["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["9"]["AnchorPoint"] = Vector2.new(1, 0);
UI["9"]["Size"] = UDim2.new(0, 34, 1, -8);
UI["9"]["BackgroundTransparency"] = 1;
UI["9"]["Name"] = [[close]];
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["9"]["Text"] = [[]];
UI["9"]["Position"] = UDim2.new(1, -4, 0, 4);
UI["a"] = Instance.new("UICorner", UI["9"]);
UI["a"]["CornerRadius"] = UDim.new(0, 7);
UI["b"] = Instance.new("ImageLabel", UI["9"]);
UI["b"]["BorderSizePixel"] = 0;
UI["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["b"]["ImageColor3"] = Color3.fromRGB(241, 241, 241);
UI["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["b"]["Image"] = [[rbxassetid://9886659671]];
UI["b"]["Size"] = UDim2.new(0, 16, 0, 16);
UI["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["b"]["BackgroundTransparency"] = 1;
UI["b"]["Name"] = [[Icon]];
UI["b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
UI["c"] = Instance.new("Frame", UI["2"]);
UI["c"]["BorderSizePixel"] = 0;
UI["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["c"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["c"]["Name"] = [[bg]];
UI["c"]["BackgroundTransparency"] = 0.9;
UI["d"] = Instance.new("ImageLabel", UI["c"]);
UI["d"]["BorderSizePixel"] = 0;
UI["d"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
UI["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["d"]["ScaleType"] = Enum.ScaleType.Slice;
UI["d"]["ImageTransparency"] = 0.7;
UI["d"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
UI["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["d"]["Image"] = [[rbxassetid://8992230677]];
UI["d"]["Size"] = UDim2.new(1, 120, 1, 116);
UI["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["d"]["BackgroundTransparency"] = 1;
UI["d"]["Name"] = [[shadow]];
UI["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
UI["e"] = Instance.new("UICorner", UI["c"]);
UI["f"] = Instance.new("Frame", UI["c"]);
UI["f"]["BorderSizePixel"] = 0;
UI["f"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
UI["f"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["f"]["Name"] = [[bg]];
UI["f"]["BackgroundTransparency"] = 0.35;
UI["10"] = Instance.new("UICorner", UI["f"]);
UI["11"] = Instance.new("Frame", UI["c"]);
UI["11"]["BorderSizePixel"] = 0;
UI["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["11"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["11"]["BackgroundTransparency"] = 0.4;
UI["12"] = Instance.new("UICorner", UI["11"]);
UI["13"] = Instance.new("UIGradient", UI["11"]);
UI["13"]["Rotation"] = 90;
UI["13"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(26, 26, 26)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(16, 16, 16))};
UI["14"] = Instance.new("ImageLabel", UI["c"]);
UI["14"]["BorderSizePixel"] = 0;
UI["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["14"]["ScaleType"] = Enum.ScaleType.Tile;
UI["14"]["ImageTransparency"] = 0.98;
UI["14"]["Image"] = [[rbxassetid://9968344105]];
UI["14"]["TileSize"] = UDim2.new(0, 128, 0, 128);
UI["14"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["14"]["BackgroundTransparency"] = 1;
UI["15"] = Instance.new("UICorner", UI["14"]);
UI["16"] = Instance.new("ImageLabel", UI["c"]);
UI["16"]["BorderSizePixel"] = 0;
UI["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["16"]["ScaleType"] = Enum.ScaleType.Tile;
UI["16"]["ImageTransparency"] = 0.94;
UI["16"]["Image"] = [[rbxassetid://9968344227]];
UI["16"]["TileSize"] = UDim2.new(0, 128, 0, 128);
UI["16"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["16"]["BackgroundTransparency"] = 1;
UI["17"] = Instance.new("UICorner", UI["16"]);
UI["18"] = Instance.new("Frame", UI["c"]);
UI["18"]["BorderSizePixel"] = 0;
UI["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["18"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["18"]["BackgroundTransparency"] = 1;
UI["19"] = Instance.new("Frame", UI["c"]);
UI["19"]["ZIndex"] = 2;
UI["19"]["BorderSizePixel"] = 0;
UI["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["19"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["19"]["BackgroundTransparency"] = 1;
UI["1a"] = Instance.new("UICorner", UI["19"]);
UI["1b"] = Instance.new("UIStroke", UI["19"]);
UI["1b"]["Transparency"] = 0.5;
UI["1b"]["Color"] = Color3.fromRGB(61, 61, 61);
UI["1c"] = Instance.new("Frame", UI["2"]);
UI["1c"]["BorderSizePixel"] = 0;
UI["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["1c"]["Size"] = UDim2.new(1, 0, 0.76442, 0);
UI["1c"]["Position"] = UDim2.new(0.5, 0, 0.61779, 0);
UI["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["1c"]["Name"] = [[content]];
UI["1c"]["BackgroundTransparency"] = 1;
UI["1d"] = Instance.new("Frame", UI["1c"]);
UI["1d"]["BorderSizePixel"] = 0;
UI["1d"]["BackgroundColor3"] = Color3.fromRGB(161, 161, 161);
UI["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["1d"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["1d"]["Position"] = UDim2.new(0.4, 0, 0.48, 0);
UI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["1d"]["Name"] = [[time1]];
UI["1d"]["BackgroundTransparency"] = 0.9;
UI["1e"] = Instance.new("UICorner", UI["1d"]);
UI["1e"]["CornerRadius"] = UDim.new(0, 4);
UI["1f"] = Instance.new("UIStroke", UI["1d"]);
UI["1f"]["Transparency"] = 0.5;
UI["1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["1f"]["Color"] = Color3.fromRGB(56, 56, 56);
UI["20"] = Instance.new("Frame", UI["1d"]);
UI["20"]["BorderSizePixel"] = 0;
UI["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["20"]["ClipsDescendants"] = true;
UI["20"]["Size"] = UDim2.new(1, -12, 1, 0);
UI["20"]["Position"] = UDim2.new(0, 6, 0, 0);
UI["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["20"]["Name"] = [[input]];
UI["20"]["BackgroundTransparency"] = 1;
UI["21"] = Instance.new("TextBox", UI["20"]);
UI["21"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
UI["21"]["PlaceholderColor3"] = Color3.fromRGB(171, 171, 171);
UI["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["21"]["TextSize"] = 14;
UI["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["21"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["21"]["AutomaticSize"] = Enum.AutomaticSize.Y;
UI["21"]["ClearTextOnFocus"] = false;
UI["21"]["PlaceholderText"] = [[00]];
UI["21"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["21"]["Position"] = UDim2.new(0, 2, 0, 0);
UI["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["21"]["Text"] = [[]];
UI["21"]["BackgroundTransparency"] = 1;
UI["22"] = Instance.new("Frame", UI["1c"]);
UI["22"]["BorderSizePixel"] = 0;
UI["22"]["BackgroundColor3"] = Color3.fromRGB(161, 161, 161);
UI["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["22"]["Size"] = UDim2.new(0, 30, 0, 30);
UI["22"]["Position"] = UDim2.new(0.6, 0, 0.48, 0);
UI["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["22"]["Name"] = [[time2]];
UI["22"]["BackgroundTransparency"] = 0.9;
UI["23"] = Instance.new("UICorner", UI["22"]);
UI["23"]["CornerRadius"] = UDim.new(0, 4);
UI["24"] = Instance.new("UIStroke", UI["22"]);
UI["24"]["Transparency"] = 0.5;
UI["24"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["24"]["Color"] = Color3.fromRGB(56, 56, 56);
UI["25"] = Instance.new("Frame", UI["22"]);
UI["25"]["BorderSizePixel"] = 0;
UI["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["25"]["ClipsDescendants"] = true;
UI["25"]["Size"] = UDim2.new(1, -12, 1, 0);
UI["25"]["Position"] = UDim2.new(0, 6, 0, 0);
UI["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["25"]["Name"] = [[input]];
UI["25"]["BackgroundTransparency"] = 1;
UI["26"] = Instance.new("TextBox", UI["25"]);
UI["26"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
UI["26"]["PlaceholderColor3"] = Color3.fromRGB(171, 171, 171);
UI["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["26"]["TextSize"] = 14;
UI["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["26"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["26"]["AutomaticSize"] = Enum.AutomaticSize.Y;
UI["26"]["ClearTextOnFocus"] = false;
UI["26"]["PlaceholderText"] = [[00]];
UI["26"]["Size"] = UDim2.new(1, 0, 1, 0);
UI["26"]["Position"] = UDim2.new(0, 2, 0, 0);
UI["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["26"]["Text"] = [[]];
UI["26"]["BackgroundTransparency"] = 1;
UI["27"] = Instance.new("TextLabel", UI["1c"]);
UI["27"]["TextWrapped"] = true;
UI["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["27"]["TextSize"] = 16;
UI["27"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
UI["27"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
UI["27"]["BackgroundTransparency"] = 1;
UI["27"]["RichText"] = true;
UI["27"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["27"]["Size"] = UDim2.new(0.069, 0, 0.18868, 0);
UI["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["27"]["Text"] = [[:]];
UI["27"]["Name"] = [[dots]];
UI["27"]["Position"] = UDim2.new(0.5, 0, 0.48, 0);
UI["28"] = Instance.new("TextButton", UI["1c"]);
UI["28"]["AutoButtonColor"] = false;
UI["28"]["TextSize"] = 14;
UI["28"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
UI["28"]["BackgroundColor3"] = Color3.fromRGB(71, 71, 71);
UI["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["28"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["28"]["AutomaticSize"] = Enum.AutomaticSize.Y;
UI["28"]["Size"] = UDim2.new(0.9214, 0, 0.33962, 0);
UI["28"]["BackgroundTransparency"] = 0.82;
UI["28"]["LayoutOrder"] = 7;
UI["28"]["Name"] = [[settime]];
UI["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["28"]["Text"] = [[]];
UI["28"]["Position"] = UDim2.new(0.5, 0, 0.8, 0);
UI["29"] = Instance.new("UICorner", UI["28"]);
UI["29"]["CornerRadius"] = UDim.new(0, 4);
UI["2a"] = Instance.new("UIStroke", UI["28"]);
UI["2a"]["Transparency"] = 0.5;
UI["2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["2a"]["Color"] = Color3.fromRGB(26, 26, 26);
UI["2b"] = Instance.new("Frame", UI["28"]);
UI["2b"]["BorderSizePixel"] = 0;
UI["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["2b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
UI["2b"]["Size"] = UDim2.new(1, -28, 0, 0);
UI["2b"]["Position"] = UDim2.new(0, 10, 0, 0);
UI["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["2b"]["Name"] = [[texts]];
UI["2b"]["BackgroundTransparency"] = 1;
UI["2c"] = Instance.new("UIListLayout", UI["2b"]);
UI["2c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
UI["2c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
UI["2d"] = Instance.new("UIPadding", UI["2b"]);
UI["2d"]["PaddingTop"] = UDim.new(0, 13);
UI["2d"]["PaddingBottom"] = UDim.new(0, 13);
UI["2e"] = Instance.new("TextLabel", UI["2b"]);
UI["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["2e"]["TextSize"] = 13;
UI["2e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
UI["2e"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
UI["2e"]["BackgroundTransparency"] = 1;
UI["2e"]["Size"] = UDim2.new(1, 0, 0, 14);
UI["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["2e"]["Text"] = [[set fake time (false)]];
UI["2e"]["Name"] = [[title]];
UI["2f"] = Instance.new("TextLabel", UI["2b"]);
UI["2f"]["TextWrapped"] = true;
UI["2f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["2f"]["TextSize"] = 12;
UI["2f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["2f"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
UI["2f"]["BackgroundTransparency"] = 1;
UI["2f"]["Size"] = UDim2.new(1, 0, 0, 14);
UI["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["2f"]["Text"] = [[this spoofs your time]];
UI["2f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
UI["2f"]["Name"] = [[content]];
UI["30"] = Instance.new("ImageLabel", UI["28"]);
UI["30"]["BorderSizePixel"] = 0;
UI["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["30"]["ImageColor3"] = Color3.fromRGB(241, 241, 241);
UI["30"]["AnchorPoint"] = Vector2.new(1, 0.5);
UI["30"]["Image"] = [[rbxassetid://10709791437]];
UI["30"]["Size"] = UDim2.new(0, 16, 0, 16);
UI["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["30"]["BackgroundTransparency"] = 1;
UI["30"]["Position"] = UDim2.new(1, -10, 0.5, 0);
UI["31"] = Instance.new("TextButton", UI["1c"]);
UI["31"]["AutoButtonColor"] = false;
UI["31"]["TextSize"] = 14;
UI["31"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
UI["31"]["BackgroundColor3"] = Color3.fromRGB(71, 71, 71);
UI["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
UI["31"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
UI["31"]["AutomaticSize"] = Enum.AutomaticSize.Y;
UI["31"]["Size"] = UDim2.new(0.921, 0, 0.34, 0);
UI["31"]["BackgroundTransparency"] = 0.82;
UI["31"]["LayoutOrder"] = 7;
UI["31"]["Name"] = [[hidetime]];
UI["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["31"]["Text"] = [[]];
UI["31"]["Position"] = UDim2.new(0.5, 0, 0.17, 0);
UI["32"] = Instance.new("UICorner", UI["31"]);
UI["32"]["CornerRadius"] = UDim.new(0, 4);
UI["33"] = Instance.new("UIStroke", UI["31"]);
UI["33"]["Transparency"] = 0.5;
UI["33"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
UI["33"]["Color"] = Color3.fromRGB(26, 26, 26);
UI["34"] = Instance.new("Frame", UI["31"]);
UI["34"]["BorderSizePixel"] = 0;
UI["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["34"]["AutomaticSize"] = Enum.AutomaticSize.Y;
UI["34"]["Size"] = UDim2.new(1, -28, 0, 0);
UI["34"]["Position"] = UDim2.new(0, 10, 0, 0);
UI["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["34"]["Name"] = [[texts]];
UI["34"]["BackgroundTransparency"] = 1;
UI["35"] = Instance.new("UIListLayout", UI["34"]);
UI["35"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
UI["35"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
UI["36"] = Instance.new("UIPadding", UI["34"]);
UI["36"]["PaddingTop"] = UDim.new(0, 13);
UI["36"]["PaddingBottom"] = UDim.new(0, 13);
UI["37"] = Instance.new("TextLabel", UI["34"]);
UI["37"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["37"]["TextSize"] = 13;
UI["37"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
UI["37"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
UI["37"]["BackgroundTransparency"] = 1;
UI["37"]["Size"] = UDim2.new(1, 0, 0, 14);
UI["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["37"]["Text"] = [[hide your time (false)]];
UI["37"]["Name"] = [[title]];
UI["38"] = Instance.new("TextLabel", UI["34"]);
UI["38"]["TextWrapped"] = true;
UI["38"]["TextXAlignment"] = Enum.TextXAlignment.Left;
UI["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["38"]["TextSize"] = 12;
UI["38"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
UI["38"]["TextColor3"] = Color3.fromRGB(171, 171, 171);
UI["38"]["BackgroundTransparency"] = 1;
UI["38"]["Size"] = UDim2.new(1, 0, 0, 14);
UI["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["38"]["Text"] = [[sets your time to ??:??]];
UI["38"]["AutomaticSize"] = Enum.AutomaticSize.Y;
UI["38"]["Name"] = [[content]];
UI["39"] = Instance.new("ImageLabel", UI["31"]);
UI["39"]["BorderSizePixel"] = 0;
UI["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
UI["39"]["ImageColor3"] = Color3.fromRGB(241, 241, 241);
UI["39"]["AnchorPoint"] = Vector2.new(1, 0.5);
UI["39"]["Image"] = [[rbxassetid://10709791437]];
UI["39"]["Size"] = UDim2.new(0, 16, 0, 16);
UI["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
UI["39"]["BackgroundTransparency"] = 1;
UI["39"]["Position"] = UDim2.new(1, -10, 0.5, 0);

spooftime = false
hidetime = false

--drag smoother
local UIS = game:GetService('UserInputService')
local frame = UI["2"]
local dragToggle = nil
local dragSpeed = 0.25
local dragStart = nil
local startPos = nil
local function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

UIS.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.Z then
		UI["1"]["Enabled"] = not UI["1"]["Enabled"]
	end
end)

frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
	end
end)
--limit textboxes
local function filterInput(textBox)
	textBox:GetPropertyChangedSignal("Text"):Connect(function() 
		local text = textBox.Text
		local filteredText = string.gsub(text, "%D", "")
		if #filteredText > 2 then
			filteredText = string.sub(filteredText, 1, 2)
		end
		textBox.Text = filteredText
	end)
end
filterInput(UI["21"])
filterInput(UI["26"])

UI["9"].MouseButton1Click:Connect(function()
	UI["1"]:Destroy()
end)

UI["28"].MouseButton1Click:Connect(function()
	if UI["21"].Text:len() == 0 then
		return
	end

	if UI["26"].Text:len() == 0 then
		return
	end

	if hidetime then
		hidetime = false
		UI["37"].Text = "hide your time (false)"
	end

	spooftime = not spooftime
	if spooftime then
		UI["2e"].Text = "set fake time (true)"
	else
		UI["2e"].Text = "set fake time (false)"
	end

	while task.wait(0.5) do
		if spooftime then
			local args = {
				[1] = UI["21"].Text..":"..UI["26"].Text
			}

			game:GetService("ReplicatedStorage"):WaitForChild("updateLocalTime"):FireServer(unpack(args))
		else
			break
		end
	end
end)

UI["31"].MouseButton1Click:Connect(function()
	if spooftime then
		spooftime = false
		UI["2e"].Text = "set fake time (false)"
	end

	hidetime = not hidetime
	if hidetime then
		UI["37"].Text = "hide your time (true)"
	else
		UI["37"].Text = "hide your time (false)"
	end
	while task.wait(0.5) do
		if hidetime then
			local args = {
				[1] = ""
			}

			game:GetService("ReplicatedStorage"):WaitForChild("updateLocalTime"):FireServer(unpack(args))
		else
			break
		end
	end
end)

return UI["1"], require;
end
