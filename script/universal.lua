local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ripper Hub - Universal", HidePremium = true, IntroText = "Ripper Hub", SaveConfig = true, ConfigFolder = "RipperHubuniversal"})


-- Functions

-- Discord Copied Notification
function CopiedDiscordNotifications()
    OrionLib:MakeNotification({
        Name = "Discord",
        Content = "Discord Invite Copied!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

-- FPS Boost
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

-- Tabs

local HomeTab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HomeTab:AddLabel("Ripper Hub")
HomeTab:AddParagraph("Unsupported Game", "Universal")

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
InfoTab:AddParagraph("Universal", "Verison 1.0")
InfoTab:AddParagraph("Ripper Hub", "Verison 1.3")

-- Buttons

HomeTab:AddButton({
	Name = "Copy Discord Invite!",
	Callback = function()
      		setclipboard("https://discord.com/invite/CKQuGPqx8M")
			  CopiedDiscordNotifications()
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
	Name = "JumpPower",
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
