local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ripper Hub - Muscle Clicker", HidePremium = true, IntroText = "Ripper Hub", SaveConfig = true, ConfigFolder = "RipperHubmuscleclicker"})

-- Functions

function CopiedDiscordNotifications()
    OrionLib:MakeNotification({
        Name = "Discord",
        Content = "Discord Invite Copied!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

-- Tabs

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local InfoTab = Window:MakeTab({
	Name = "Information",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Home Tab Content

HomeTab:AddLabel("Ripper Hub")
HomeTab:AddParagraph("Coming soon...", "Muscle Clicker is coming soon!")

-- Info Tab Content

InfoTab:AddLabel("Ripper Hub Information")
InfoTab:AddLabel("Made by Meme.rip#6927")
InfoTab:AddParagraph("Muscle Clicker", "Verison 0.0")
InfoTab:AddParagraph("Ripper Hub", "Verison 1.3")

-- Buttons

HomeTab:AddButton({
	Name = "Copy Discord Invite!",
	Callback = function()
      		setclipboard("https://discord.com/invite/CKQuGPqx8M")
			  CopiedDiscordNotifications()
  	end    
})


OrionLib:Init()
