local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ripper Hub Key", HidePremium = true, IntroText = "Ripper Hub Key", SaveConfig = true, ConfigFolder = "RipperHubKey"})
if game.GameId ~= 9144187696 then

     OrionLib:MakeNotification({
	Name = "Warning!",
	Content = "Invalid game", 
	Image = "rbxassetid://4483345998",
	Time = 5
})
setclipboard("https://www.roblox.com/games/9144187696")
end
OrionLib:MakeNotification({
	Name = "Your in!",
	Content = "Ripper Hub Key v1.2", 
	Image = "rbxassetid://4483345998",
	Time = 5
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/Memerip/Ripper-Hub/main/script/key.lua"))()

function MakeScriptHub()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Memerip/Ripper-Hub/main/script/ripperhub.lua"))()


end


function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = "Welcome to Ripper Hub!",
        Image = "rbxassetid://4483345998",
        Time = 2
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = " Wrong Key",
        Content = "Join my Discord for the Key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function GetKeyNotifications()
    OrionLib:MakeNotification({
        Name = "GetKey",
        Content = "Discord Link Copied!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Enter = Window:MakeTab({
	Name = "Enter Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Get = Window:MakeTab({
	Name = "Get Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Games = Window:MakeTab({
	Name = "Games",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Enter:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Enter:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.EnterKey then
			CorrectKeyNotifications()
			wait(3)
         MakeScriptHub()
     else
        WrongKeyNotifications()
        end
  	end    
})

Get:AddLabel("Get Key")
Tab:AddButton({
	Name = "Copy link!",
	Callback = function()
      		setclipboard("https://discord.com/invite/CKQuGPqx8M")
			  GetKeyNotifications()
  	end    
})

Games:AddButton({
	Name = "A Piece",
	Callback = function()
setclipboard("https://www.roblox.com/games/9144187696")
  	end 
})
