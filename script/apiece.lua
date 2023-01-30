local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ripper Hub - A Piece", HidePremium = true, IntroText = "Ripper Hub", SaveConfig = true, ConfigFolder = "RipperHubapiece"})

--Values

getgenv().autospin = true
getgenv().autospinf = true
getgenv().autoclaim = true
getgenv().dfstat = true
getgenv().strnstat = true
getgenv().durastat = true
getgenv().swordstat = true
getgenv().spamm = true
getgenv().geppospam = true
getgenv().lagswitch = true

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

function fpsboost()
	local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end

-- Auto Spin
function autospin()
    while getgenv().autospin == true do
local args = {
    [1] = "SPINB"
}

game:GetService("ReplicatedStorage").Remotes.SpinsRE:FireServer(unpack(args))
wait(1)
    end
end

-- Auto Spin Enhanced
function autospinf()
    while getgenv().autospinf == true do
		local args = {
			[1] = "GIVE"
		}
		
		game:GetService("ReplicatedStorage").Remotes.SpinsRE:FireServer(unpack(args))
wait(1)
    end
end


-- Auto Claim Spins
function autoclaim()
	while getgenv().autoclaim == true do

game:GetService("ReplicatedStorage").Remotes.FreeSpinNew:FireServer()
wait(1)
	end
end

-- Auto Devil Fruit Stats

--Devil Fruit
function dfstat()
	while getgenv().dfstat == true do

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
	while getgenv().strnstat == true do
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
	while getgenv().durastat == true do
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
	while getgenv().swordstat == true do
		local args = {
			[1] = "SwordP",
			[2] = "1"
		}
		
		game:GetService("ReplicatedStorage").Remotes.Stat:FireServer(unpack(args))
wait(1)
	end
end

-- Fist M1 Spam
function spamm()
	while getgenv().spamm == true do
		local args = {
			[1] = "Fist",
			[2] = "M1",
			[3] = 1,
			[4] = CFrame.new(13.082233428955078, 35.91757583618164, 239.77537536621094) * CFrame.Angles(-0, 0, -0)
		}
		
		game:GetService("ReplicatedStorage").Remotes.Cast:FireServer(unpack(args))
		wait(0.1)
	end
end

-- Geppo Spam
function geppospam()
	while getgenv().geppospam == true do
		local args = {
			[1] = "Geppo"
		}
		
		game:GetService("Players").LocalPlayer.Character.CharacterHandler.RemoteEvent:FireServer(unpack(args))
		wait(0.5)
	end
end

-- Lag Switch
function lagswitch()
    while getgenv().lagswitch == true do
local args = {
    [1] = CFrame.new(66.67923736572266, 5.510211944580078, 30.865888595581055) * CFrame.Angles(-0.5542637705802917, 0.11948587000370026, 0.07365090399980545)
}

game:GetService("ReplicatedStorage").Lightning.Skill:FireServer(unpack(args))

wait(0.1)
    end
end

-- TP to Player
local players_storage = {};
local players = game.Players;
local localPlayer = players.LocalPlayer;

local character = localPlayer.Character;
local insert = table.insert;
local remove = table.remove;

function getnames()
    local res = {};
    for index, player in next, players_storage do
        insert(res, player.Name);
    end;
    
    return res;
end;

players.PlayerAdded:connect(function(player)
    players_storage[player.Name] = player;
    players_dropdown:Refresh(getnames(players_storage));
end);

players.PlayerRemoving:connect(function(player)
    players_storage[player.Name] = nil;
end);

for index, player in next, players:GetPlayers() do
    players_storage[player.Name] = player;
end;

--Teleport Spawn
function tpspawn()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(65.9353485, 1.75868607, -21.2998161, 0.999902606, -6.78614924e-08, -0.0139562804, 6.72819027e-08, 1, -4.19985895e-08, 0.0139562804, 4.10554932e-08, 0.999902606)
end 

--Teleport Holloween Island
function tpholloween()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3015.15112, 127.604118, -1374.08093, 0.255426735, 9.91708333e-08, 0.966828406, 1.86908178e-08, 1, -1.07511283e-07, -0.966828406, 4.55320723e-08, 0.255426735)
end 

--Teleport Tundra Island
function tptundra()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1405.90759, 10.6768694, 941.903076, -0.674336135, -2.18824532e-08, -0.73842454, 7.49302043e-09, 1, -3.6476667e-08, 0.73842454, -3.01305647e-08, -0.674336135)
end 

-- Tabs

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddLabel("Ripper Hub")
HomeTab:AddParagraph("Supported Game", "A Piece")

local StatTab = Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local FruitTab = Window:MakeTab({
	Name = "Fruit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TeleportTab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local FunTab = Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local UniversalTab = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local InfoTab = Window:MakeTab({
	Name = "Information",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

InfoTab:AddLabel("Ripper Hub Information")
InfoTab:AddLabel("Made by Meme.rip#6927")
InfoTab:AddParagraph("A Piece", "Verison 1.1")
InfoTab:AddParagraph("Ripper Hub", "Verison 1.3")

-- Toggles

-- Auto Fruit
FruitTab:AddLabel("Auto Fruit")
FruitTab:AddToggle({
	Name = "Auto Spin Fruit",
	Default = false,
	Callback = function(Value)
		getgenv().autospin = Value
        autospin()
	end    
})

FruitTab:AddLabel("Activate faster auto spin with Auto Spin!")
FruitTab:AddToggle({
	Name = "Auto Spin Fruit (faster)",
	Default = false,
	Callback = function(Value)
		getgenv().autospinf = Value
        autospinf()
	end    
})


FruitTab:AddToggle({
	Name = "Auto Claim Spins",
	Default = false,
	Callback = function(Value)
		getgenv().autoclaim = Value
        autoclaim()
	end    
})

-- Auto Stats
StatTab:AddLabel("Auto Stats")
StatTab:AddToggle({
	Name = "Auto Fruit Stats",
	Default = false,
	Callback = function(Value)
		getgenv().dfstat = Value
        dfstat()
	end    
})

StatTab:AddToggle({
	Name = "Auto Strength Stats",
	Default = false,
	Callback = function(Value)
		getgenv().strnstat = Value
        strnstat()
	end    
})

StatTab:AddToggle({
	Name = "Auto Durability Stats",
	Default = false,
	Callback = function(Value)
		getgenv().durastat = Value
        durastat()
	end    
})

StatTab:AddToggle({
	Name = "Auto Sword Stats",
	Default = false,
	Callback = function(Value)
		getgenv().swordstat = Value
        swordstat()
	end    
})

-- Fun
FunTab:AddToggle({
	Name = "Spam Fist M1",
	Default = false,
	Callback = function(Value)
		getgenv().spamm = Value
        spamm()
	end    
})

FunTab:AddToggle({
	Name = "Geppo Spam",
	Default = false,
	Callback = function(Value)
		getgenv().geppospam = Value
        geppospam()
	end    
})

--Crash
FunTab:AddLabel("A Piece Lag Switch (equip gear 5 sword to use)")
FunTab:AddToggle({
	Name = "Lag Switch",
	Default = false,
	Callback = function(Value)
		getgenv().lagswitch = Value
        lagswitch()
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

TeleportTab:AddLabel("Islands")

TeleportTab:AddButton({
	Name = "Spawn",
	Callback = function()
      		tpspawn()
  	end    
})

TeleportTab:AddButton({
	Name = "Tundra",
	Callback = function()
      		tptundra()
  	end    
})

TeleportTab:AddLabel("Limited Time")

TeleportTab:AddButton({
	Name = "Holloween Island",
	Callback = function()
      		tpholloween()
  	end    
})

TeleportTab:AddLabel("NPC's")
TeleportTab:AddLabel("NOTE: Teleports NPC to you")

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

TeleportTab:AddButton({
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

UniversalTab:AddButton({
	Name = "FPS Booster",
	Callback = function()
      		fpsboost()
  	end    
})

-- Sliders

UniversalTab:AddSlider({
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

UniversalTab:AddSlider({
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

-- Drop Downs

UniversalTab:AddLabel("Teleport to Player")
local names = getnames(players_storage);
UniversalTab:AddDropdown({
    Name = "Select Player",
    Default = names[0],
    Options = names,
    Callback = function(name)
        for index, player in next, players_storage do
            if (index == name) then
                localPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame;
            end;
        end;
    end;  
});


OrionLib:Init()
