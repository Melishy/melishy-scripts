# script helper

### type: executor

```
_G.OpenConsole = false -- automatically open console on execute
loadstring(game:HttpGet("https://raw.githubusercontent.com/Melishy/melishy-scripts/main/chatlogger/chatlogger.lua", true))("dsc.gg/melishy")
```

### type: studio/executor

```
_G.OpenConsole = false -- automatically open console on execute

if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
	if _G.OpenConsole == true then
		game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
	end
	print("[INFO] chat logger is active, using textchatservice")
	for _, p in pairs(game:GetService("Players"):GetPlayers()) do
		p.Chatted:Connect(function(msg)
			if msg == "" then
				warn("[WARN] no message text! player username: "..p.Name)
			else
				print(string.format("%s: %s", p.Name, msg))
			end
		end)
	end
elseif game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService then
	if _G.OpenConsole == true then
		game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
	end
	print("[INFO] chat logger is active, using legacytextchatservice")
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(msg)
		if msg.Message == "" then
			warn("[WARN] no message text! player username: "..msg.FromSpeaker)
		else
			print(string.format("%s: %s", msg.FromSpeaker, msg.Message))
		end
	end)
else
	warn("[WARN] chat logger is not working, because chat version is unsupported")
end
```

- enjoy logging chat messages!
