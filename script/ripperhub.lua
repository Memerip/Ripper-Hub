local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ripper Hub - A Piece", HidePremium = true, IntroText = "Ripper Hub", SaveConfig = true, ConfigFolder = "RipperHubapiece"})

--Values

_G.autospin = true
_G.autoclaim = true
_G.dfstat = true
_G.strnstat = true
_G.durastat = true
_G.swordstat = true

--Functions

-- Discord Copied Notification
function CopiedDiscordNotifications()
    OrionLib:MakeNotification({
        Name = "Discord",
        Content = "Discord Invite Copied!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

-- Auto Spin
function autospin()
    while _G.autospin == true do
local args = {
    [1] = "SPINB"
}

game:GetService("ReplicatedStorage").Remotes.SpinsRE:FireServer(unpack(args))
wait(1)
    end
end


-- Auto Claim Spins
function autoclaim()
	while _G.autoclaim == true do

game:GetService("ReplicatedStorage").Remotes.FreeSpinNew:FireServer()
wait(1)
	end
end

-- Auto Devil Fruit Stats

--Devil Fruit
function dfstat()
	while _G.dfstat == true do

local args = {
    [1] = "DFPoints",
    [2] = "1"
}

game:GetService("ReplicatedStorage").Remotes.Stat:FireServer(unpack(args))
wait(1)
	end
end

-- Strength
function strnstat()
	while _G.strnstat == true do
		local args = {
			[1] = "Strn",
			[2] = "1"
		}
		
		game:GetService("ReplicatedStorage").Remotes.Stat:FireServer(unpack(args))
wait(1)
	end
end

-- Durability
function durastat()
	while _G.durastat == true do
		local args = {
			[1] = "Dura",
			[2] = "1"
		}
		
		game:GetService("ReplicatedStorage").Remotes.Stat:FireServer(unpack(args))		
wait(1)
	end
end

-- Sword
function swordstat()
	while _G.swordstat == true do
		local args = {
			[1] = "SwordP",
			[2] = "1"
		}
		
		game:GetService("ReplicatedStorage").Remotes.Stat:FireServer(unpack(args))
wait(1)
	end
end

--Teleport Spawn
function tpspawn()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(65.9353485, 1.75868607, -21.2998161, 0.999902606, -6.78614924e-08, -0.0139562804, 6.72819027e-08, 1, -4.19985895e-08, 0.0139562804, 4.10554932e-08, 0.999902606)
end 

-- Tabs

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddLabel("Ripper Hub v1.0")
HomeTab:AddParagraph("Made by Meme.rip#6927", "Join my Discord Server https://discord.com/invite/CKQuGPqx8M")
HomeTab:AddLabel("Supported Game")
HomeTab:AddParagraph("A Piece", "Verison 1.0")

local AutoTab = Window:MakeTab({
	Name = "Auto",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TeleportTab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local QuestTab = Window:MakeTab({
	Name = "Quest Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Toggles

-- Auto Fruit
AutoTab:AddLabel("Auto Fruit")
AutoTab:AddToggle({
	Name = "Auto Spin Fruit",
	Default = false,
	Callback = function(Value)
		_G.autospin = Value
        autospin()
	end    
})

AutoTab:AddToggle({
	Name = "Auto Claim Spins",
	Default = false,
	Callback = function(Value)
		_G.autoclaim = Value
        autoclaim()
	end    
})

-- Auto Stats
AutoTab:AddLabel("Auto Stats")
AutoTab:AddToggle({
	Name = "Auto Fruit Stats",
	Default = false,
	Callback = function(Value)
		_G.dfstat = Value
        dfstat()
	end    
})

AutoTab:AddToggle({
	Name = "Auto Strength Stats",
	Default = false,
	Callback = function(Value)
		_G.strnstat = Value
        strnstat()
	end    
})

AutoTab:AddToggle({
	Name = "Auto Durability Stats",
	Default = false,
	Callback = function(Value)
		_G.durastat = Value
        durastat()
	end    
})

AutoTab:AddToggle({
	Name = "Auto Sword Stats",
	Default = false,
	Callback = function(Value)
		_G.swordstat = Value
        swordstat()
	end    
})

-- Buttons

HomeTab:AddButton({
	Name = "Copy Discord Invite!",
	Callback = function()
      		setclipboard("https://discord.com/invite/CKQuGPqx8M")
			  CopiedDiscordNotifications()
  	end    
})

TeleportTab:AddButton({
	Name = "Spawn",
	Callback = function()
      		tpspawn()
  	end    
})

TeleportTab:AddParagraph("More soon...", " Coming in Verison 1.1")

QuestTab:AddButton({
	Name = "Bandits",
	Callback = function()
model = game:GetService("Workspace").QuestNpc.Bandits
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Bandit Leader",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Bandit Leader"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Monkeys",
	Callback = function()
model = game:GetService("Workspace").QuestNpc.Monkeys
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Monkey King",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Monkey King"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Kill Ninjas",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Kill Ninjas"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Sakura Samurai",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Sakura Samurai"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Desert Bandits",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Desert Bandits"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Sand King",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Sand King"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Tundra Bandits",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Tundra Bandits"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Cool Sword Enjoyer Chad",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Cool Sword Enjoyer"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Cool Blade guy",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Cool Blade Enthusiast"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "RPS Fan",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Rock, Paper, Scissors Fan"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Yeti",
	Callback = function()
model = game:GetService("Workspace").QuestNpc.Yeti
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Pirates",
	Callback = function()
model = game:GetService("Workspace").QuestNpc.Pirates
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Cool Pirate",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Cool Pirate"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Corrupted Marines",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Corrupted Marines"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Marine Boss",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Marine Boss"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Sky Bandits",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Sky Bandits"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Sky Lord",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Sky Lord"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

QuestTab:AddButton({
	Name = "Cool Spear Lover",
	Callback = function()
model = game:GetService("Workspace").QuestNpc["Cool Spear Lover"]
humpart = game.Players.LocalPlayer.Character.HumanoidRootPart
goto = humpart.CFrame * CFrame.new(0,0,-3)
if model.PrimaryPart then
    model:SetPrimaryPartCFrame(goto)
end
  	end    
})

-- Sliders

MiscTab:AddSlider({
	Name = "Speed",
	Min = 25,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
	end    
})

MiscTab:AddSlider({
	Name = "JumpPower (Buggy)",
	Min = 25,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value) 
	end    
})


OrionLib:Init()
