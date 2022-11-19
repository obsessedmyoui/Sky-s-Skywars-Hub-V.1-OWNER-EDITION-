local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Timepiece Hub V.4 (Owner Edition)", 5013109572)

local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}


local skywars = venyx:addPage("Main", 5012544693)
local tcsection = skywars:addSection("Trump Cards")
local player = venyx:addPage("Local Player", 5012544693)
local playersection = player:addSection("WS/JP")
local fesection = player:addSection("FE Script")
local combat = venyx:addPage("Combat", 5012544693)
local cbsection = combat:addSection("Combat Features")
local teleport = venyx:addPage("Teleports", 5012544693)
local tpsection = teleport:addSection("Teleports")
local others = venyx:addPage("Others", 5012544693)
local midsection = skywars:addSection("Mid Features")

local uitogl = others:addSection("UI Toggle")

uitogl:addKeybind("GUI Toggle Keybind", Enum.KeyCode.Insert, function(val)
	venyx:toggle()
end, function()
end)



tcsection:addButton("Win Round", function ()
	local Adrix        = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.01)
	ZZ = game:GetService('RunService').Stepped:connect(function()
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then 
				v.CanCollide = false
			end
		end
	end)
	local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
	local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
	BG.P         = 9e4
	BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
	BV.velocity  = Vector3.new(0, 3.75, 0)
	BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)
	wait()
	NoLol = game:GetService('RunService').Heartbeat:connect(function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~="Torso" then 
				v.Velocity = Vector3.new(0,-2333333,0)
			end
		end
	end)
	XD = game:GetService("Players").LocalPlayer

	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name ~= XD.Name then
			if v.Character:FindFirstChild('Role') and v.Character:FindFirstChild('Torso') then
				wait(0.1)
				XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
				wait(0.1)
				XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
				wait(0.1)
			end 
		end    
	end
	wait(0.2)
	ZZ:Disconnect()

	NoLol:Disconnect()
	wait(0.1)
	BG:Destroy()
	BV:Destroy()
	game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Adrix
	game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
	wait()
	game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false
end)

tcsection:addButton("End Round", function ()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/obsessedmyoui/End-Round/main/end%20round%20sw.txt"))()
end)

tcsection:addButton("No Collision Blocks", function ()
	local Why = game:GetService("Players").LocalPlayer
	local Char = Why.Character
	local backpack = Why.Backpack

	backpack.Block.Parent =  Why.Character
	Char.Block.Left:Destroy()
	Char.Block.Parent = Why.Backpack
end)

tcsection:addButton("Porn Hub", function ()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()  
end)

tcsection:addKeybind("Mine Aura", Enum.KeyCode.C, function()
	function onTouched(part)       
		local h = part
		if h.Name == "Block" then
			game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
		end
	end
	Partz              = Instance.new("Part")
	Partz.Parent       = workspace
	Partz.Transparency = 1
	Partz.CanCollide   = false
	Partz.Massless     = true
	Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,9,0)
	Partz.Size         = Vector3.new(15,20,15)

	local light         = Instance.new("SelectionBox")
	light.Adornee       = Partz
	light.LineThickness = 0.05
	light.Color3        = Color3.fromRGB(0, 255, 0)
	light.Parent        = Partz
	light.Name          = "SelectBox"

	local bruh = Partz.Touched:connect(onTouched)

	wait()
	bruh:Disconnect()
	Partz:Destroy()
end, function()
	print("Changed Keybind")
end)

midsection:addButton("Auto Farm Ores", function ()
	loadstring(game:HttpGet("https://pastebin.com/raw/ResY6ccq"))()
end)

midsection:addButton("Anticheat Bypass", function ()
	if game:GetService("Players").LocalPlayer.PlayerGui.Extra:FindFirstChild("Local") then
		local plr       = game:GetService("Players").LocalPlayer
		local workspace = game:GetService("Workspace")
		plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
		plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
		plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
		plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
		wait()
		workspace:FindFirstChild("Local"):Destroy()
		workspace:FindFirstChild("Local"):Destroy()
		workspace:FindFirstChild("MobileFix"):Destroy()
		workspace:FindFirstChild("XboxFix"):Destroy()
		game.workspace.Borders.InvisibleBorder:remove()
		game.workspace.Lobby.KillPlates:remove()
		venyx:Notify("Bypassed", "Bypassed: true")

		plr.CharacterAdded:Connect(function()
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
			wait()
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("MobileFix"):Destroy()
			workspace:FindFirstChild("XboxFix"):Destroy()
		end)
	else
		venyx:Notify("Bypassed", "Really")           
	end
end)

midsection:addButton("Baseplate", function ()
	local baseplate    = Instance.new("Part")
	baseplate.Parent   = workspace
	baseplate.Name = "MomentoXD"
	baseplate.Transparency = 0.5
	baseplate.Size     = Vector3.new(800,1,800) -- change size
	baseplate.Anchored = true
	baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-110,0)

	if value == false then
		game.Workspace["MomentoXD"]:Destroy()
	end
end)

midsection:addButton("Infinite Yield", function ()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

midsection:addButton("Remove Killplates", function ()
	game.workspace.Lobby.KillPlates:remove()
end)

playersection:addSlider("Walkspeed", 16, 16, 500, function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

playersection:addSlider("Jump Power", 50, 50, 250, function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

fesection:addButton("7 Personalities", function ()
	loadstring(game:HttpGetAsync("https://bit.ly/3IUKqjB"))()
end)

tpsection:addButton("Lobby", function ()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
end)

tpsection:addButton("Shop", function ()
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(60, 261, 0)
end)

tpsection:addButton("VIP", function ()
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(-11, 264, -79)
end)

tpsection:addButton("Mega VIP", function ()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)

tpsection:addButton("Middle Island", function ()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)
end)

cbsection:addButton("Hitbox", function ()
	loadstring(game:HttpGet("https://pastebin.com/raw/86MVeD35"))()
end)

cbsection:addButton("Melee Bot", function ()
	loadstring(game:HttpGet("https://pastebin.com/raw/2deFsYQn"))()  
end)
