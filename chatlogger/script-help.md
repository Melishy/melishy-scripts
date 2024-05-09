# script helper

### type: executor

```
_G.OpenConsole = false -- automatically open console on execute
loadstring(game:HttpGet("https://raw.githubusercontent.com/Melishy/melishy-scripts/main/chatlogger/chatlogger.lua", true))("dsc.gg/melishy")
```

### type: studio/executor

```
_G.OpenConsole = false -- automatically open console on execute

if not _G.isChatLogRunning then
	_G.isChatLogRunning = true
	print("[INFO] waiting the game to load")
	repeat wait() until game:IsLoaded()
	print("[INFO] game is loaded!")
	local function logChat(p, msg)
		if msg == "" then
			warn("[WARN] no message text! player username: "..p.Name)
		else
			print(string.format("%s: %s", p.Name, msg))
		end
	end
	if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
		if _G.OpenConsole then
			game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
		end
		print("[INFO] V1.1 chat logger is active, using textchatservice")
		for _, p in pairs(game:GetService("Players"):GetPlayers()) do
			p.Chatted:Connect(function(msg)
				logChat(p, msg)	
			end)
		end

		game:GetService("Players").PlayerAdded:Connect(function(p)
			p.Chatted:Connect(function(msg)
				logChat(p, msg)	
			end)
		end)
	elseif game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService then
		if _G.OpenConsole then
			game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
		end
		print("[INFO] chat logger is active, using legacytextchatservice")
		for _, p in pairs(game:GetService("Players"):GetPlayers()) do
			p.Chatted:Connect(function(msg)
				logChat(p, msg)
			end)
		end

		game:GetService("Players").PlayerAdded:Connect(function(p)
			p.Chatted:Connect(function(msg)
				logChat(p, msg)	
			end)
		end)
	else
		warn("[WARN] chat logger is not working, because chat version is unsupported! stopping the chat logger.")
		_G.OpenConsole = false
	end
end
```

- enjoy logging chat messages!
