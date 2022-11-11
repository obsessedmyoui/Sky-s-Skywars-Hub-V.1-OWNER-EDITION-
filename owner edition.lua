-- sky and law's personal script

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sky's Skywars Hub V.3 (OWNER EDITION)", "Ocean")

-- Main
local Main = Window:NewTab("Trump Cards")
local MainSection = Main:NewSection("Trump Card Features")
local ToggleSection = Main:NewSection("Toggle")
local BasicSection = Main:NewSection("Basics || FREE VERSION SECTION")

BasicSection:NewButton("Autofarm", "hold pickaxe before you auto mine ores", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ResY6ccq"))()
end)



BasicSection:NewButton("AntiCheat Bypass", "bypass", function()
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
		venyx:Notify("Really", "Bypassed")           
	end
end) 

MainSection:NewButton("Auto Win Farm", "ez", function()
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

MainSection:NewKeybind("Box Mine", "better mining algorithm", Enum.KeyCode.C, function()
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

end)

BasicSection:NewButton("Baseplate", "a huge platform underneath", function()
    local baseplate    = Instance.new("Part")
	baseplate.Parent   = workspace
	baseplate.Name = "MomentoXD"
	baseplate.Transparency = 0.5
	baseplate.Size     = Vector3.new(800,1,800) -- change size
	baseplate.Anchored = true
	baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-112,0)

	if value == false then
		game.Workspace["MomentoXD"]:Destroy()
	end
end)

MainSection:NewButton("No Collision Blocks", "null", function()
    local Why = game:GetService("Players").LocalPlayer
		local Char = Why.Character
		local backpack = Why.Backpack

		backpack.Block.Parent =  Why.Character
		Char.Block.Left:Destroy()
		Char.Block.Parent = Why.Backpack
		end)

BasicSection:NewButton("Infinite Yield", "abuse cry babies", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewButton("Ender", "use baseplate before this if you're dumb", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/FiKmv1bS"))()  
end)

MainSection:NewButton("Porn Hub", "use baseplate before this if you're dumb", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()  
end)

ToggleSection:NewKeybind("Toggle Keybind", "Un/Toggle UI", Enum.KeyCode.Backspace, function()
	Library:ToggleUI()
end)

BasicSection:NewButton("Delete Killplates", "deletes killplates", function()
    game.workspace.Lobby.KillPlates:remove()
end)




-- Local Player
local Player = Window:NewTab("LocalPlayer")
local PlayerSection = Player:NewSection("WS/JP")
local Teleport = Window:NewTab("Teleports")
local TeleportSection = Teleport:NewSection("Teleports")

PlayerSection:NewSlider("Walkspeed", "SONIC?!?", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jump Power", "LMAO U BIRD", 150, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- Combat
local Combat = Window:NewTab("Combat")
local CombatSection = Combat:NewSection("Combat Features")

CombatSection:NewButton("Hitbox 1", "reach", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/86MVeD35"))()
end)

CombatSection:NewButton("Melee Bot", "aimbot but swordbot", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/2deFsYQn"))()  
end)

-- Lazy Section

local Lazy = Window:NewTab("Lazy")
local LazySection = Lazy:NewSection("The only scripts u need")

LazySection:NewButton("Hitbox 1", "reach", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/86MVeD35"))()
end)

LazySection:NewButton("AntiCheat Bypass", "bypass", function()
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
		venyx:Notify("Really", "Bypassed")           
	end
end) 

LazySection:NewButton("Middle Island", "teleports you to the middle island", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)
end)

LazySection:NewButton("Baseplate", "a huge platform underneath", function()
    local baseplate    = Instance.new("Part")
	baseplate.Parent   = workspace
	baseplate.Name = "MomentoXD"
	baseplate.Transparency = 0.5
	baseplate.Size     = Vector3.new(800,1,800) -- change size
	baseplate.Anchored = true
	baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-112,0)

	if value == false then
		game.Workspace["MomentoXD"]:Destroy()
	end
end)

LazySection:NewButton("Delete Killplates", "deletes killplates", function()
    game.workspace.Lobby.KillPlates:remove()
end)

LazySection:NewButton("Infinite Yield", "abuse cry babies", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

LazySection:NewButton("7 Personalities", "use baseplate for this if u're dumb", function()
    loadstring(game:HttpGetAsync("https://bit.ly/3IUKqjB"))()
end)





-- Teleports

TeleportSection:NewButton("Lobby TP", "teleports you to the lobby", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
end)

TeleportSection:NewButton("Shop TP", "teleports you to the shop", function()
    local plr = game:GetService('Players').LocalPlayer.Character
plr.HumanoidRootPart.CFrame = CFrame.new(60, 260.5, 0)
end)

TeleportSection:NewButton("VIP", "teleports you to vip", function()
    local plr = game:GetService('Players').LocalPlayer.Character
plr.HumanoidRootPart.CFrame = CFrame.new(-11, 264, -79)
end)


TeleportSection:NewButton("Mega VIP", "teleports you to mega vip", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)

TeleportSection:NewButton("Middle Island", "teleports you to the middle island", function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)
end)

-- Other
local Other = Window:NewTab("Others")
local OtherSection = Other:NewSection("Other Features")

OtherSection:NewButton("Skywars GUI", "i did not steal this.", function()
    loadstring(game:HttpGet("https://paste.ee/r/r9gnA"))()  
end)
