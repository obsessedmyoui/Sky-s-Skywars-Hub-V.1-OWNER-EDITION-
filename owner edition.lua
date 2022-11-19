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
local islandsection = teleport:addSection("Island Teleports")
local others = venyx:addPage("Others", 5012544693)
local midsection = skywars:addSection("Mid Features")

local uitogl = others:addSection("UI Toggle")

uitogl:addKeybind("GUI Toggle Keybind", Enum.KeyCode.Insert, function(val)
	venyx:toggle()
end, function()
end)





tcsection:addButton("End Round", function ()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/obsessedmyoui/End-Round/main/end%20round%20sw.txt"))()
end)

tcsection:addButton("Fling Everyone", function ()
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

midsection:addButton("ESP", function ()
	ALLYCOLOR = {0, 255, 255}
	ENEMYCOLOR = {255, 0, 0}
	TRANSPARENCY = 0.5
	HEALTHBAR_ACTIVATED = true
	function createFlex()
		players = game:GetService("Players")
		faces = {"Front", "Back", "Bottom", "Left", "Right", "Top"}
		currentPlayer = nil
		lplayer = players.LocalPlayer
		players.PlayerAdded:Connect(
			function(G)
				currentPlayer = G
				G.CharacterAdded:Connect(
					function(H)
						createESP(H)
					end
				)
			end
		)
		function checkPart(I)
			if (I:IsA("Part") or I:IsA("MeshPart")) and I.Name ~= "HumanoidRootPart" then
				return true
			end
		end
		function actualESP(I)
			for u = 0, 5 do
				surface = Instance.new("SurfaceGui", I)
				surface.Face = Enum.NormalId[faces[u + 1]]
				surface.AlwaysOnTop = true
				frame = Instance.new("Frame", surface)
				frame.Size = UDim2.new(1, 0, 1, 0)
				frame.BorderSizePixel = 0
				frame.BackgroundTransparency = TRANSPARENCY
				if currentPlayer.Team == players.LocalPlayer.Team then
					frame.BackgroundColor3 = Color3.new(ALLYCOLOR[1], ALLYCOLOR[2], ALLYCOLOR[3])
				else
					frame.BackgroundColor3 = Color3.new(ENEMYCOLOR[1], ENEMYCOLOR[2], ENEMYCOLOR[3])
				end
			end
		end
		function createHealthbar(J)
			board = Instance.new("BillboardGui", J)
			board.Name = "total"
			board.Size = UDim2.new(1, 0, 1, 0)
			board.StudsOffset = Vector3.new(3, 1, 0)
			board.AlwaysOnTop = true
			bar = Instance.new("Frame", board)
			bar.BackgroundColor3 = Color3.new(255, 0, 0)
			bar.BorderSizePixel = 0
			bar.Size = UDim2.new(0.2, 0, 4, 0)
			bar.Name = "total2"
			health = Instance.new("Frame", bar)
			health.BackgroundColor3 = Color3.new(0, 255, 0)
			health.BorderSizePixel = 0
			health.Size = UDim2.new(1, 0, J.Parent.Humanoid.Health / 100, 0)
			J.Parent.Humanoid.Changed:Connect(
				function(K)
					J.total.total2.Frame.Size = UDim2.new(1, 0, J.Parent.Humanoid.Health / 100, 0)
				end
			)
		end
		function createESP(c)
			bugfix = c:WaitForChild("Head")
			for u, v in pairs(c:GetChildren()) do
				if checkPart(v) then
					actualESP(v)
				end
			end
			if HEALTHBAR_ACTIVATED then
				createHealthbar(c:WaitForChild("HumanoidRootPart"))
			end
		end
		for u, L in pairs(players:GetChildren()) do
			if L ~= players.LocalPlayer then
				currentPlayer = L
				createESP(L.Character)
				L.CharacterAdded:Connect(
					function(H)
						createESP(H)
					end
				)
			end
		end
	end
	createFlex()
end
)

midsection:addButton("Infinite Yield", function ()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

midsection:addButton("Ores ESP", function ()
	function CreateESPPart(M, N)
		local O = M
		local P = Instance.new("BoxHandleAdornment")
		P.Size = M.Size + Vector3.new(0.1, 0.1, 0.1)
		P.Name = "EspPart"
		P.Adornee = O
		P.Color3 = N
		P.AlwaysOnTop = true
		P.ZIndex = 5
		P.Transparency = 0.2
		P.Parent = M
	end
	local t = workspace:getDescendants()
	for u = 1, #t do
		if t[u].Name == "Block" and t[u].Parent.Name == "Ores" then
			CreateESPPart(t[u], Color3.fromRGB(193, 223, 240))
		end
	end
end
)

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

tpsection:addButton("Group Room", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121, 264, -0)
end)

tpsection:addButton("Game Store", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
		CFrame.new(
			-59.9186897,
			264,
			0.00818219129,
			0.0125666363,
			2.58190047e-09,
			0.999921024,
			-6.16111384e-10,
			1,
			-2.57436117e-09,
			-0.999921024,
			-5.8371169e-10,
			0.0125666363
		)
end
)

tpsection:addButton("VIP", function ()
	local plr = game:GetService('Players').LocalPlayer.Character
	plr.HumanoidRootPart.CFrame = CFrame.new(-11, 264, -79)
end)

tpsection:addButton("Mega VIP", function ()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
end)

islandsection:addButton("Middle Island", function ()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)
end)

islandsection:addButton("Island 1", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 169, -104)
end
)

islandsection:addButton("Island 2", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 169, -104)
end
)

islandsection:addButton("Island 3", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(116, 169, -103)
end
)

islandsection:addButton("Island 4", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, 169, -0)
end
)

islandsection:addButton("Island 5", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(112, 169, 124)
end
)

islandsection:addButton("Island 6", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-120, 165, 124)
end
)

islandsection:addButton("Island 7", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-112, 165, 16)
end
)

islandsection:addButton("Island 8", function ()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 264, 20)
end
)

cbsection:addButton("Hitbox", function ()
	loadstring(game:HttpGet("https://pastebin.com/raw/86MVeD35"))()
end)

cbsection:addButton("Melee Bot", function ()
	loadstring(game:HttpGet("https://pastebin.com/raw/2deFsYQn"))()  
end)
