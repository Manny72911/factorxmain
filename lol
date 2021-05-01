local loopVariables = {
	["Antibag"] = false;
	["Antislow"] = false;
	["Antistomp"] = false;
	["Antiflash"] = false;
	["Godbullet"] = false;
	["Godblock"] = false;
	["Walkspeed"] = false;-- // not a loop but yk
	["Jumppower"] = false;-- // not a loop but yk
	["Flying"] = false;-- // not a loop but yk
	["Noclip"] = false;
	["Freefists"] = false;
	["Targetting"] = false;
	["Arresting"] = false;
	["Infinitezoom"] = false;
	["Airstrike"] = false;
	["Toolreach"] = false;
	["Fistreach"] = false;
	["Rpglock"] = false;
	["Spectating"] = false;
	["Annoying"] = false;
	["Autostomp"] = false;
	["AutoGrabMoneyInMagnitude"] = false;
}

game.StarterGui:SetCore("SendNotification", {
	Title = "Factor X",
	Text = "Welcome To Factor X!"
})
game.StarterGui:SetCore("SendNotification", {
	Title = "Factor X",
	Text = "Update logs; 4/30/2021 / Added Godmode + Unban"
})

gsPlayers = game:GetService("Players")
gsWorkspace = game:GetService("Workspace")
gsLighting = game:GetService("Lighting")
gsReplicatedStorage = game:GetService("ReplicatedStorage")
gsCoreGui = game:GetService("CoreGui")
gsTween = game:GetService("TweenService")
gsHttp = game:GetService("HttpService")

LP = gsPlayers.LocalPlayer
Mouse = LP:GetMouse()

LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)

local ChatLogsv2 = Instance.new("ScreenGui")
local MainChatFrame = Instance.new("Frame")
ChatLogsv2.Name = "ChatLogsv2"
ChatLogsv2.Parent = gsCoreGui
MainChatFrame.Name = "MainChatFrame"
MainChatFrame.Parent = ChatLogsv2
MainChatFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainChatFrame.BackgroundTransparency = 1
MainChatFrame.Position = UDim2.new(0, 760, 0, 261)
MainChatFrame.Size = UDim2.new(0, 525, 0, 337)
MainChatFrame.Visible = false

local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos


local function updateChat(input)
	local delta = input.Position - dragStart
	local dragTime = 0.055
	local SmoothDrag = {}
	SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	local dragSmoothFunction = gsTween:Create(MainChatFrame, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
	dragSmoothFunction:Play()
end

game:GetService("Players").PlayerAdded:connect(function(plr)
	plr.Chatted:connect(function(chat)
		CreateChatText(plr, chat)
	end)
end)

MainChatFrame.Position = UDim2.new(0, 760, 0, 261)
MainChatFrame.Visible = true
local ScreenGui = Instance.new("ScreenGui")
local FactorX = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local Line = Instance.new("ImageLabel")
local Pages = Instance.new("TextLabel")
local Line_2 = Instance.new("ImageLabel")
local Line_3 = Instance.new("ImageLabel")
local PagesFrame = Instance.new("Frame")
local Combat = Instance.new("TextButton")
local Teleports = Instance.new("TextButton")
local Autobuys = Instance.new("TextButton")
local Autofarms = Instance.new("TextButton")
local Extras = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local CombatFrame = Instance.new("Frame")
local Fly = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local KillNear = Instance.new("TextButton")
local FlyHands = Instance.new("TextButton")
local Godmode = Instance.new("TextButton")
local GodmodeV2 = Instance.new("TextButton")
local Godblock = Instance.new("TextButton")
local Godbullet = Instance.new("TextButton")
local RpgMouse = Instance.new("TextButton")
local RpgDisabler = Instance.new("TextButton")
local SilentAim = Instance.new("TextButton")
local Aimlock = Instance.new("TextButton")
local Hulk = Instance.new("TextButton")
local RpgRide = Instance.new("TextButton")
local FreeFists = Instance.new("TextButton")
local Bikefly = Instance.new("TextButton")
local Fistreach = Instance.new("TextButton")
local DracoModMenu = Instance.new("TextButton")
local CrewIdKiller = Instance.new("TextButton")
local GrandeSky = Instance.new("TextButton")
local MeleeReach = Instance.new("TextButton")
local Unban = Instance.new("TextButton")
local TargetGui = Instance.new("TextButton")
local BurgetGalaxy = Instance.new("TextButton")
local TeleportsFrame = Instance.new("Frame")
local AdminBase = Instance.new("TextButton")
local Bank = Instance.new("TextButton")
local Consino = Instance.new("TextButton")
local Knife = Instance.new("TextButton")
local FoodShop1 = Instance.new("TextButton")
local GunShop1 = Instance.new("TextButton")
local GunShop2 = Instance.new("TextButton")
local GraveYard = Instance.new("TextButton")
local SellingPlace1 = Instance.new("TextButton")
local SellingPlace2 = Instance.new("TextButton")
local FoodShop2 = Instance.new("TextButton")
local Park = Instance.new("TextButton")
local AutoBuysFrame = Instance.new("Frame")
local Shotgun = Instance.new("TextButton")
local Lmg = Instance.new("TextButton")
local Rev = Instance.new("TextButton")
local Smg = Instance.new("TextButton")
local Silencer = Instance.new("TextButton")
local Ar = Instance.new("TextButton")
local Ak = Instance.new("TextButton")
local Rpg = Instance.new("TextButton")
local Taco = Instance.new("TextButton")
local Hamburger = Instance.new("TextButton")
local Bag = Instance.new("TextButton")
local Lettuce = Instance.new("TextButton")
local Wegihet = Instance.new("TextButton")
local Bat = Instance.new("TextButton")
local Knife_2 = Instance.new("TextButton")
local AutofarmsFrame = Instance.new("Frame")
local Hospital = Instance.new("TextButton")
local Shoe = Instance.new("TextButton")
local Racemodex = Instance.new("TextButton")
local AutoArrest2 = Instance.new("TextButton")
local AutoArrest1 = Instance.new("TextButton")
local Ruzzel2 = Instance.new("TextButton")
local Ruzzel1 = Instance.new("TextButton")
local Raycodex = Instance.new("TextButton")
local Fist = Instance.new("TextButton")
local ExtrasFrame = Instance.new("Frame")
local FreeCam = Instance.new("TextButton")
local AntiStomp = Instance.new("TextButton")
local AntiPepper = Instance.new("TextButton")
local AntiBan = Instance.new("TextButton")
local KillAll = Instance.new("TextButton")
local InfCash = Instance.new("TextButton")
local SplitGrande = Instance.new("TextButton")
local Airstrike = Instance.new("TextButton")
local AnmationGui = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local CopyDiscoLink = Instance.new("TextButton")
local MoneyEsp = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

FactorX.Name = "FactorX"
FactorX.Parent = ScreenGui
FactorX.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
FactorX.Position = UDim2.new(0.134387344, 0, 0.16533865, 0)
FactorX.Size = UDim2.new(0, 554, 0, 335)

UICorner.Parent = FactorX

Name.Name = "Name"
Name.Parent = FactorX
Name.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.276173294, 0, 0.0149253728, 0)
Name.Size = UDim2.new(0, 276, 0, 44)
Name.Font = Enum.Font.SourceSansBold
Name.Text = "Factor X"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

Line.Name = "Line"
Line.Parent = FactorX
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderColor3 = Color3.fromRGB(255, 255, 255)
Line.Position = UDim2.new(0, 0, 0.149253726, 0)
Line.Size = UDim2.new(0, 554, 0, 0)
Line.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

Pages.Name = "Pages"
Pages.Parent = FactorX
Pages.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Pages.BorderSizePixel = 0
Pages.Position = UDim2.new(0.0198555961, 0, 0.173134327, 0)
Pages.Size = UDim2.new(0, 104, 0, 42)
Pages.Font = Enum.Font.SourceSans
Pages.Text = "Pages"
Pages.TextColor3 = Color3.fromRGB(255, 255, 255)
Pages.TextScaled = true
Pages.TextSize = 14.000
Pages.TextWrapped = true

Line_2.Name = "Line"
Line_2.Parent = FactorX
Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Line_2.Position = UDim2.new(0.250902534, 0, 0.149253726, 0)
Line_2.Size = UDim2.new(0, 0, 0, 285)
Line_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

Line_3.Name = "Line"
Line_3.Parent = FactorX
Line_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
Line_3.Position = UDim2.new(0.0198555961, 0, 0.319402993, 0)
Line_3.Size = UDim2.new(0, 104, 0, 0)
Line_3.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

PagesFrame.Name = "PagesFrame"
PagesFrame.Parent = FactorX
PagesFrame.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
PagesFrame.BorderSizePixel = 0
PagesFrame.Position = UDim2.new(0.0198555961, 0, 0.352238804, 0)
PagesFrame.Size = UDim2.new(0, 104, 0, 199)

Combat.Name = "Combat"
Combat.Parent = PagesFrame
Combat.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Combat.BorderSizePixel = 0
Combat.Position = UDim2.new(0.057692308, 0, 0.0301507544, 0)
Combat.Size = UDim2.new(0, 92, 0, 29)
Combat.Font = Enum.Font.SourceSans
Combat.Text = "Combat"
Combat.TextColor3 = Color3.fromRGB(255, 255, 255)
Combat.TextScaled = true
Combat.TextSize = 14.000
Combat.TextWrapped = true
Combat.MouseButton1Down:Connet(function()
	CombatFrame.Visible = true
	TeleportsFrame.Visible = false
	AutoBuysFrame.Visible = false
	AutofarmsFrame.Visible = false
	ExtrasFrame.Visible = false
end)

Teleports.Name = "Teleports"
Teleports.Parent = PagesFrame
Teleports.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Teleports.BorderSizePixel = 0
Teleports.Position = UDim2.new(0.057692308, 0, 0.226130649, 0)
Teleports.Size = UDim2.new(0, 92, 0, 29)
Teleports.Font = Enum.Font.SourceSans
Teleports.Text = "Teleports"
Teleports.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleports.TextScaled = true
Teleports.TextSize = 14.000
Teleports.TextWrapped = true
Teleports.MouseButton1Down:Connet(function()
	CombatFrame.Visible = false
	TeleportsFrame.Visible = true
	AutoBuysFrame.Visible = false
	AutofarmsFrame.Visible = false
	ExtrasFrame.Visible = false
end)

Autobuys.Name = "Autobuys"
Autobuys.Parent = PagesFrame
Autobuys.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Autobuys.BorderSizePixel = 0
Autobuys.Position = UDim2.new(0.057692308, 0, 0.427135676, 0)
Autobuys.Size = UDim2.new(0, 92, 0, 29)
Autobuys.Font = Enum.Font.SourceSans
Autobuys.Text = "Autobuys"
Autobuys.TextColor3 = Color3.fromRGB(255, 255, 255)
Autobuys.TextScaled = true
Autobuys.TextSize = 14.000
Autobuys.TextWrapped = true
Autobuys.MouseButton1Down:Connet(function()
	CombatFrame.Visible = false
	TeleportsFrame.Visible = false
	AutoBuysFrame.Visible = true
	AutofarmsFrame.Visible = false
	ExtrasFrame.Visible = false
end)


Autofarms.Name = "Autofarms"
Autofarms.Parent = PagesFrame
Autofarms.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Autofarms.BorderSizePixel = 0
Autofarms.Position = UDim2.new(0.057692308, 0, 0.618090451, 0)
Autofarms.Size = UDim2.new(0, 92, 0, 29)
Autofarms.Font = Enum.Font.SourceSans
Autofarms.Text = "Autofarms"
Autofarms.TextColor3 = Color3.fromRGB(255, 255, 255)
Autofarms.TextScaled = true
Autofarms.TextSize = 14.000
Autofarms.TextWrapped = true
Autofarms.MouseButton1Down:Connet(function()
	CombatFrame.Visible = false
	TeleportsFrame.Visible = false
	AutoBuysFrame.Visible = false
	AutofarmsFrame.Visible = true
	ExtrasFrame.Visible = false
end)

Extras.Name = "Extras"
Extras.Parent = PagesFrame
Extras.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Extras.BorderSizePixel = 0
Extras.Position = UDim2.new(0.057692308, 0, 0.819095492, 0)
Extras.Size = UDim2.new(0, 92, 0, 29)
Extras.Font = Enum.Font.SourceSans
Extras.Text = "Extras"
Extras.TextColor3 = Color3.fromRGB(255, 255, 255)
Extras.TextScaled = true
Extras.TextSize = 14.000
Extras.TextWrapped = true
Extras.MouseButton1Down:Connet(function()
	CombatFrame.Visible = false
	TeleportsFrame.Visible = false
	AutoBuysFrame.Visible = false
	AutofarmsFrame.Visible = false
	ExtrasFrame.Visible = true
end)

UICorner_2.Parent = PagesFrame

Close.Name = "Close"
Close.Parent = FactorX
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.870036125, 0, 0.0149253728, 0)
Close.Size = UDim2.new(0, 48, 0, 39)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Down:Connect(function()
	FactorX:Destroy()
end)

CombatFrame.Name = "CombatFrame"
CombatFrame.Parent = FactorX
CombatFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CombatFrame.BorderSizePixel = 0
CombatFrame.Position = UDim2.new(0.261732846, 0, 0.173134327, 0)
CombatFrame.Size = UDim2.new(0, 409, 0, 271)

Fly.Name = "Fly"
Fly.Parent = CombatFrame
Fly.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.0220048893, 0, 0.0221402217, 0)
Fly.Size = UDim2.new(0, 86, 0, 33)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Fly [X]"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true
Fly.MouseButton1Down:Connect(function()
	local plr = game.Players.LocalPlayer
	local mouse = plr:GetMouse()
	local Humanoid = game.Players.LocalPlayer.Character.Humanoid or game.Players.LocalPlayer.Character.humanoid  

	localplayer = plr

	if workspace:FindFirstChild("Core") then
		workspace.Core:Destroy()
	end

	local Core = Instance.new("Part")
	Core.Name = "Core"
	Core.Size = Vector3.new(0.05, 0.05, 0.05)

	spawn(function()
		Core.Parent = workspace
		local Weld = Instance.new("Weld", Core)
		Weld.Part0 = Core
		Weld.Part1 = localplayer.Character.LowerTorso
		Weld.C0 = CFrame.new(0, 0, 0)
	end)

	workspace:WaitForChild("Core")

	local torso = workspace.Core
	flying = true
	local speed=10
	local keys={a=false,d=false,w=false,s=false} 
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
		gyro.cframe = torso.CFrame
		repeat
			wait()
			Humanoid.PlatformStand=true
			local new=gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed=5
			end
			if keys.w then 
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.s then 
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.d then 
				new = new * CFrame.new(speed,0,0)
				speed=speed+0
			end
			if keys.a then 
				new = new * CFrame.new(-speed,0,0)
				speed=speed+0
			end
			if speed>10 then
				speed=5
			end
			pos.position=new.p
			if keys.w then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
			elseif keys.s then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
			else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until flying == false
		if gyro then gyro:Destroy() end
		if pos then pos:Destroy() end
		flying=false
		Humanoid.PlatformStand=false
		speed=10
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		elseif key=="x" then
			if flying==true then
				flying=false
			else
				flying=true
				start()
			end
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start()
end)

Noclip.Name = "Noclip"
Noclip.Parent = CombatFrame
Noclip.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0.253722757, 0, 0.0221402217, 0)
Noclip.Size = UDim2.new(0, 86, 0, 33)
Noclip.Font = Enum.Font.SourceSans
Noclip.Text = "Noclip -- click again to disable"
Noclip.TextColor3 = Color3.fromRGB(255, 255, 255)
Noclip.TextScaled = true
Noclip.TextSize = 14.000
Noclip.TextWrapped = true
Noclip.MouseButton1Down:Connect(function()
	if (loopVariables.Noclip == false) then
		loopVariables.Noclip = true;
	else
		loopVariables.Noclip = false;
	end;
	game:GetService('RunService').Stepped:connect(function()
		if loopVariables.Noclip == true then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)
end)

KillNear.Name = "KillNear"
KillNear.Parent = CombatFrame
KillNear.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
KillNear.BorderSizePixel = 0
KillNear.Position = UDim2.new(0.49047792, 0, 0.0221402217, 0)
KillNear.Size = UDim2.new(0, 86, 0, 33)
KillNear.Font = Enum.Font.SourceSans
KillNear.Text = "Kill Near [E]"
KillNear.TextColor3 = Color3.fromRGB(255, 255, 255)
KillNear.TextScaled = true
KillNear.TextSize = 14.000
KillNear.TextWrapped = true
KillNear.MouseButton1Down:Connect(function()
	-- // Settings
	local Settings = {
		["MaxStudDistance"] = 20;
		["LoopBind"] = Enum.KeyCode.E;
	};

	-- // Variables
	local Players 			= game:GetService("Players");
	local localPlayer 		= Players.LocalPlayer;
	local localCharacter = localPlayer.Character;
	local toggle 			= false;

	-- // Services
	local RunService 		= game:GetService("RunService");
	local UserInputService 	= game:GetService("UserInputService");


	-- // Functions
	function cosbyFind(str)
		if (not str) then
			return
		end;
		for _, v in next, Players:GetPlayers() do 
			if (v.Name:lower():find(str:lower()) == 1) then 
				return v.Name;
			end;
		end;
	end;

	function checkDistance(plr)
		local Distance 			= localPlayer:DistanceFromCharacter(game:GetService("Players")[plr].Character:FindFirstChild("HumanoidRootPart").Position);
		if (Distance < Settings.MaxStudDistance) then
			return true; -- // Returns true if they are within the MaxStudDistance.
		else
			return false; -- // Returns false if they aren't in the MaxStudDistance.
		end;
	end;

	function DetatchWrists()
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightHand"):FindFirstChild("RightWrist"):Remove();
		game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftHand"):FindFirstChild("LeftWrist"):Remove();
	end;

	function ReAttachWrists()
		-- // Credits to: i am a corpse#6924 <@!717357503993741362>
		local rightwrist = Instance.new("Motor6D");
		rightwrist.Name = "RightWrist";
		rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
		rightwrist.C0 = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		rightwrist.C1 = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
		rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;

		local leftwrist = Instance.new("Motor6D");
		leftwrist.Name = "LeftWrist";
		leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
		leftwrist.C0 = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		leftwrist.C1 = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
		leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;
	end;

	function TargetPlayer(plr, shit)
		local targ = Players[plr];
		if (targ.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == false) then
			repeat
				wait();
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftHand").CFrame = targ.Character:FindFirstChild("UpperTorso").CFrame;
				game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightHand").CFrame = targ.Character:FindFirstChild("UpperTorso").CFrame;
			until targ.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true or toggle == false
		end;
	end;

	-- // Loop Check Distance.
	RunService.RenderStepped:Connect(function()
		if (toggle == true) then
			for _, v in next, Players:GetPlayers() do
				local dist = checkDistance(v.Name);
				if (dist == true) then
					if (v.Name == localPlayer.Name) then
					else
						pcall(TargetPlayer(v.Name, toggle));
					end;
				end;
			end;
		end;
	end);

	UserInputService.InputBegan:Connect(function(key, e)
		if (e) then
			return
		end;
		if (key.KeyCode == Settings.LoopBind) then
			if (toggle == false) then
				toggle = true;
				print("Enabled.")
				pcall(DetatchWrists());
			elseif (toggle == true) then
				toggle = false;
				print("Disabled.")
				pcall(ReAttachWrists());
			end;
		end;
	end);
end)

FlyHands.Name = "FlyHands"
FlyHands.Parent = CombatFrame
FlyHands.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
FlyHands.BorderSizePixel = 0
FlyHands.Position = UDim2.new(0.729751825, 0, 0.0221402217, 0)
FlyHands.Size = UDim2.new(0, 86, 0, 33)
FlyHands.Font = Enum.Font.SourceSans
FlyHands.Text = "Fix Hands"
FlyHands.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyHands.TextScaled = true
FlyHands.TextSize = 14.000
FlyHands.TextWrapped = true
FlyHands.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.RightHand.Size = Vector3.new(1,1,1)
	game.Players.LocalPlayer.Character.LeftHand.Size = Vector3.new(1,1,1)
end)

Godmode.Name = "Godmode"
Godmode.Parent = CombatFrame
Godmode.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Godmode.BorderSizePixel = 0
Godmode.Position = UDim2.new(0.0220048893, 0, 0.173873901, 0)
Godmode.Size = UDim2.new(0, 86, 0, 33)
Godmode.Font = Enum.Font.SourceSans
Godmode.Text = "Godmode"
Godmode.TextColor3 = Color3.fromRGB(255, 255, 255)
Godmode.TextScaled = true
Godmode.TextSize = 14.000
Godmode.TextWrapped = true
Godmode.MouseButton1Down:Connect(function()
	local Plr = game.Players.LocalPlayer; Plr.Character.RagdollConstraints:Destroy(); Plr.Character.Head.Neck:Destroy(); repeat wait() until Plr.Character and Plr.Character:FindFirstChild("BodyEffects") and Plr.Character:FindFirstChild("Head") and Plr.Character.Head:FindFirstChild("Neck"); Plr.Character.BodyEffects.BreakingParts:Destroy(); wait(1); local pp = Instance.new("Folder", Plr.Character); pp.Name = "FULLY_LOADED_CHAR"
end)

GodmodeV2.Name = "GodmodeV2"
GodmodeV2.Parent = CombatFrame
GodmodeV2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
GodmodeV2.BorderSizePixel = 0
GodmodeV2.Position = UDim2.new(0.253722697, 0, 0.173873901, 0)
GodmodeV2.Size = UDim2.new(0, 86, 0, 33)
GodmodeV2.Font = Enum.Font.SourceSans
GodmodeV2.Text = "Godmode V2"
GodmodeV2.TextColor3 = Color3.fromRGB(255, 255, 255)
GodmodeV2.TextScaled = true
GodmodeV2.TextSize = 14.000
GodmodeV2.TextWrapped = true
GodmodeV2.MouseButton1Down:Connect(function()
	local localPlayer = game:GetService('Players').LocalPlayer;
	local localCharacter = localPlayer.Character;
	localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
	localCharacter:ClearAllChildren()
	local newCharacter = localPlayer.CharacterAdded:Wait();
	local spoofFolder = Instance.new('Folder');
	spoofFolder.Name = 'FULLY_LOADED_CHAR';
	spoofFolder.Parent = newCharacter;
	newCharacter:WaitForChild('BodyEffects').Dead:Destroy();
	local spoofValue = Instance.new('BoolValue', newCharacter.BodyEffects);
	spoofValue.Name = 'Dead';
end)

Godblock.Name = "Godblock"
Godblock.Parent = CombatFrame
Godblock.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Godblock.BorderSizePixel = 0
Godblock.Position = UDim2.new(0.49047792, 0, 0.173873901, 0)
Godblock.Size = UDim2.new(0, 86, 0, 33)
Godblock.Font = Enum.Font.SourceSans
Godblock.Text = "Godblock"
Godblock.TextColor3 = Color3.fromRGB(255, 255, 255)
Godblock.TextScaled = true
Godblock.TextSize = 14.000
Godblock.TextWrapped = true
Godblock.MouseButton1Down:Connect(function()
	local Player = game.Players.LocalPlayer
	if (loopVariables.Godblock == false) then
		loopVariables.Godblock = true;
		Player.Character:FindFirstChild("BodyEffects"):FindFirstChild("Defense"):Destroy();
	else
		loopVariables.Godblock = false;
		local shit = Instance.new("NumberValue", Player.Character:FindFirstChild("BodyEffects"));
		shit.Name = "Defense";
	end;
end)

Godbullet.Name = "Godbullet"
Godbullet.Parent = CombatFrame
Godbullet.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Godbullet.BorderSizePixel = 0
Godbullet.Position = UDim2.new(0.729751825, 0, 0.173873901, 0)
Godbullet.Size = UDim2.new(0, 86, 0, 33)
Godbullet.Font = Enum.Font.SourceSans
Godbullet.Text = "Godbullet"
Godbullet.TextColor3 = Color3.fromRGB(255, 255, 255)
Godbullet.TextScaled = true
Godbullet.TextSize = 14.000
Godbullet.TextWrapped = true
Godbullet.MouseButton1Down:Connect(function()
	local Player = game.Players.LocalPlayer
	if (loopVariables.Godbullet == false) then
		loopVariables.Godbullet = true;
		Player.Character:FindFirstChild("BodyEffects"):FindFirstChild("Defense"):Destroy();
		Player.Character:FindFirstChild("BodyEffects"):FindFirstChild("Armor"):Destroy();
	else
		loopVariables.Godbullet = false;
		local shit = Instance.new("NumberValue", Player.Character:FindFirstChild("BodyEffects"));
		shit.Name = "Defense";
		local shit = Instance.new("IntValue", Player.Character:FindFirstChild("BodyEffects"));
		shit.Name = "Armor";
	end;
end)

RpgMouse.Name = "RpgMouse"
RpgMouse.Parent = CombatFrame
RpgMouse.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
RpgMouse.BorderSizePixel = 0
RpgMouse.Position = UDim2.new(0.729751825, 0, 0.321716994, 0)
RpgMouse.Size = UDim2.new(0, 86, 0, 33)
RpgMouse.Font = Enum.Font.SourceSans
RpgMouse.Text = "Rpg Mouse"
RpgMouse.TextColor3 = Color3.fromRGB(255, 255, 255)
RpgMouse.TextScaled = true
RpgMouse.TextSize = 14.000
RpgMouse.TextWrapped = true
RpgMouse.MouseButton1Down:Connect(function()
	-- SETTINGS --
	local speed = 20
	--------------

	local plr = game.Players.LocalPlayer
	local Mouse = plr:GetMouse()

	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = math.huge

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("Head") then
				local pos = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer.Character.PrimaryPart
	end

	game.Workspace.Ignored.ChildAdded:connect(function(child)
		wait()
		if child.Name == "Launcher" and math.abs((child.Position-plr.Character.HumanoidRootPart.Position).Magnitude)<30 then
			child:WaitForChild("BodyVelocity"):Destroy()
			local target = getClosestPlayerToCursor()
			local e = Instance.new("BodyVelocity", child)
			wait()
			e.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
			while child and child.Parent ~= nil do
				child.CFrame = CFrame.lookAt(child.CFrame.p, target.CFrame.p)*CFrame.Angles(math.rad(90), 0, 0)
				e.Velocity = ((child.CFrame * CFrame.new(0, -speed, 0)).p - child.CFrame.p)
				game.RunService.Stepped:wait()
				setsimulationradius(math.huge^math.huge, math.huge)
			end
		end
	end)
end)

RpgDisabler.Name = "RpgDisabler"
RpgDisabler.Parent = CombatFrame
RpgDisabler.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
RpgDisabler.BorderSizePixel = 0
RpgDisabler.Position = UDim2.new(0.49047792, 0, 0.321716994, 0)
RpgDisabler.Size = UDim2.new(0, 86, 0, 33)
RpgDisabler.Font = Enum.Font.SourceSans
RpgDisabler.Text = "Rpg Disabler"
RpgDisabler.TextColor3 = Color3.fromRGB(255, 255, 255)
RpgDisabler.TextScaled = true
RpgDisabler.TextSize = 14.000
RpgDisabler.TextWrapped = true
RpgDisabler.MouseButton1Down:Connect(function()
	game:GetService("RunService").Stepped:connect(function()
		setsimulationradius(9e9,9e9)
		for _, child in next, game.Workspace.Ignored:GetChildren() do
			if child.Name == "Launcher" and 10>(child.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
				child.Name = "reflected"
				local bv = child:FindFirstChild("BodyVelocity")
				local oldveloc = bv.Velocity
				local oldp  = bv.P
				bv:Destroy()
				local e = Instance.new("BodyVelocity", child)
				e.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				e.P = oldp
				e.Velocity = -oldveloc
			end
		end
	end)
end)

SilentAim.Name = "SilentAim"
SilentAim.Parent = CombatFrame
SilentAim.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SilentAim.BorderSizePixel = 0
SilentAim.Position = UDim2.new(0.253722697, 0, 0.321716994, 0)
SilentAim.Size = UDim2.new(0, 86, 0, 33)
SilentAim.Font = Enum.Font.SourceSans
SilentAim.Text = "Silent Aim"
SilentAim.TextColor3 = Color3.fromRGB(255, 255, 255)
SilentAim.TextScaled = true
SilentAim.TextSize = 14.000
SilentAim.TextWrapped = true
SilentAim.MouseButton1Down:Connect(function()
	local players = game.GetService(game, "Players")
	local guiservice = game.GetService(game, "GuiService")
	local runservice = game.GetService(game, "RunService")
	local renderstepped = runservice.RenderStepped
	local localPlayer = players.LocalPlayer
	local currentCamera = game.GetService(game, "Workspace").CurrentCamera
	local mouse = localPlayer.GetMouse(localPlayer)

	-- // MT Vars + Funcs
	local mt = getrawmetatable(game)
	local backupnamecall = mt.__namecall
	local backupnewindex = mt.__newindex
	local backupindex = mt.__index
	local setreadonly = setreadonly or make_writeable
	local getnamecallmethod = getnamecallmethod or get_namecall_method
	local newcclosure = newcclosure or function(f) return f end
	setreadonly(mt, false)

	game.Players.LocalPlayer.Character.BodyEffects.Armor:Destroy()
	-- // Silent Aim Vars
	getgenv().SilentAim = {
		Enabled = true,
		FOVRep = true,
		TeamCheck = false,
		VisibleCheck = true,
		FOV = 30,
		HitChance = 100,
	}

	local circle = Drawing.new("Circle")
	function updateCircle()
		if circle.__OBJECT_EXISTS then
			circle.Transparency = 1
			circle.Visible = SilentAim["FOVRep"]
			circle.Thickness = 2
			circle.Color = Color3.fromRGB(231, 84, 128)
			circle.NumSides = 12
			circle.Radius = (SilentAim["FOV"] * 6) / 2
			circle.Filled = false
			circle.Position = Vector2.new(mouse.X, mouse.Y + (guiservice.GetGuiInset(guiservice).Y))
		end
	end
	renderstepped.Connect(renderstepped, updateCircle)


	-- // Silent Aim Funcs
	function isPartVisible(part)
		local camera = game.GetService(game, "Workspace").CurrentCamera
		local character = game.GetService(game, "Players").LocalPlayer.Character.GetDescendants(game.GetService(game, "Players").LocalPlayer.Character)
		local castPoints = {part.Position}
		return camera.GetPartsObscuringTarget(camera, castPoints, character)
	end

	setreadonly(math, false); math.chance = function(percentage) local percentage = math.floor(percentage); local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100)/100; return chance <= percentage/100 end; setreadonly(math, true);

	local getClosestPlayerToCursor = function()
		local closestPlayer = nil
		local chance = math.chance(SilentAim["HitChance"])
		local shortestDistance = math.huge
		for i, v in pairs(players.GetPlayers(players)) do
			if v ~= localPlayer and v.Character and v.Character.FindFirstChild(v.Character, "Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character.PrimaryPart ~= nil and v.Character.FindFirstChild(v.Character, "Head") then
				if SilentAim["VisibleCheck"] and not isPartVisible(v.Character.PrimaryPart) then
					return (chance and closestPlayer or localPlayer)
				end
				if SilentAim["TeamCheck"] then
					if v.Team ~= localPlayer.Team then      
						local pos = currentCamera.WorldToViewportPoint(currentCamera, v.Character.PrimaryPart.Position)
						local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
						if magnitude < (SilentAim["FOV"] * 6 - 8) then
							if magnitude < shortestDistance then
								closestPlayer = v
								shortestDistance = magnitude
							end
						end
					end
				else
					local pos = currentCamera.WorldToViewportPoint(currentCamera, v.Character.PrimaryPart.Position)
					local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
					if magnitude < (SilentAim["FOV"] * 6 - 8) then
						if magnitude < shortestDistance then
							closestPlayer = v
							shortestDistance = magnitude
						end
					end
				end
			end
		end  
		return (chance and closestPlayer or localPlayer)
	end
	local e
	runservice.Stepped:connect(function()
		if e then 
			game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", e.Character.Head.Position)
		end
	end)
	while wait(1) do
		e = getClosestPlayerToCursor()
	end



	setreadonly(mt, false)
end)

Aimlock.Name = "Aimlock"
Aimlock.Parent = CombatFrame
Aimlock.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Aimlock.BorderSizePixel = 0
Aimlock.Position = UDim2.new(0.0220048148, 0, 0.321716994, 0)
Aimlock.Size = UDim2.new(0, 86, 0, 33)
Aimlock.Font = Enum.Font.SourceSans
Aimlock.Text = "Aimlock [Right Click]"
Aimlock.TextColor3 = Color3.fromRGB(255, 255, 255)
Aimlock.TextScaled = true
Aimlock.TextSize = 14.000
Aimlock.TextWrapped = true
Aimlock.MouseButton1Down:Connect(function()
	local CC = game:GetService'Workspace'.CurrentCamera
	local Plr
	local enabled = false
	local accomidationfactor = 0.165
	local mouse = game.Players.LocalPlayer:GetMouse()
	local placemarker = Instance.new("Part", game.Workspace)
	local guimain = Instance.new("Folder", game.CoreGui)

	function makemarker(Parent, Adornee, Color, Size, Size2)
		local e = Instance.new("BillboardGui", Parent)
		e.Name = "PP"
		e.Adornee = Adornee
		e.Size = UDim2.new(Size, Size2, Size, Size2)
		e.AlwaysOnTop = true
		local a = Instance.new("Frame", e)
		a.Size = UDim2.new(1, 0, 1, 0)
		a.BackgroundTransparency = 0.4
		a.BackgroundColor3 = Color
		local g = Instance.new("UICorner", a)
		g.CornerRadius = UDim.new(50, 50)
		return(e)
	end

	local data = game.Players:GetPlayers()
	function noob(player)
		local character
		repeat wait() until player.Character
		local handler = makemarker(guimain, player.Character:WaitForChild("Head"), Color3.fromRGB(255, 255, 255), 0.3, 3)
		handler.Name = player.Name
		player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("Head") end)

		local TextLabel = Instance.new("TextLabel", handler)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, 0, 0, -50)
		TextLabel.Size = UDim2.new(0, 100, 0, 100)
		TextLabel.Font = Enum.Font.SourceSansSemibold
		TextLabel.TextSize = 14
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextStrokeTransparency = 0
		TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
		TextLabel.Text = 'Name: '..player.Name
		TextLabel.ZIndex = 10

		spawn(function()
			while wait() do
				if player.Character then
					TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
				end
			end
		end)
	end

	for i = 1, #data do
		if data[i] ~= game.Players.LocalPlayer then
			noob(data[i])
		end
	end

	game.Players.PlayerAdded:connect(function(Player)
		noob(Player)
	end)

	spawn(function()
		placemarker.Anchored = true
		placemarker.CanCollide = false
		placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
		placemarker.Transparency = 1
		makemarker(placemarker, placemarker, Color3.fromRGB(0, 0, 255), 0.15, 0)
	end)    

	local UserInputService = game:GetService'UserInputService'

	UserInputService.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			enabled = true 
			Plr = getClosestPlayerToCursor()
			guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		end
	end)

	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			enabled = false
			guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		end
	end)

	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = math.huge

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("Head") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end

	game:GetService'RunService'.Stepped:connect(function()
		if enabled and Plr.Character and Plr.Character:FindFirstChild("Head") then
			placemarker.CFrame = CFrame.new(Plr.Character.Head.Position+(Plr.Character.Head.Velocity*accomidationfactor))
		else
			placemarker.CFrame = CFrame.new(0, 9999, 0)
		end
	end)

	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character.Head.Position+(Plr.Character.Head.Velocity*accomidationfactor)
			return old(unpack(args))
		end
		return old(...)
	end)
end)

Hulk.Name = "Hulk"
Hulk.Parent = CombatFrame
Hulk.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Hulk.BorderSizePixel = 0
Hulk.Position = UDim2.new(0.729751825, 0, 0.808042884, 0)
Hulk.Size = UDim2.new(0, 86, 0, 33)
Hulk.Font = Enum.Font.SourceSans
Hulk.Text = "Hulk"
Hulk.TextColor3 = Color3.fromRGB(255, 255, 255)
Hulk.TextScaled = true
Hulk.TextSize = 14.000
Hulk.TextWrapped = true
Hulk.MouseButton1Down:Connect(function()
	local d = {}
	local e = {}
	local g = {}
	local h = {}
	local j = {}
	local k = {}
	local function l()
		local m = 3
		local n = checkcaller
		local o = getrawmetatable(game)
		setreadonly(o, false)
		local p = o.__index
		local q = o.__newindex
		local r = o.__namecall
		o.__index =
			newcclosure(
				function(s, t)
				if n() then
					return p(s, t)
				end
				if d[s] and d[s][t] then
					local u = d[s][t]
					if u["IsCallback"] == true then
						return u["Value"](s)
					else
						return u["Value"]
					end
				end
				if g[t] then
					local v = g[t]
					if v["IsCallback"] == true then
						return v["Value"](s)
					else
						return v["Value"]
					end
				end
				if j[s] and j[s][t] then
					return k[s][t]
				end
				return p(s, t)
			end
			)
		o.__newindex =
			newcclosure(
				function(w, x, y)
				if n() then
					return q(w, x, y)
				end
				if e[w] and e[w][x] then
					local z = e[w][x]
					if z["Callback"] == nil then
						return
					else
						z["Callback"](w, y)
						return
					end
				end
				if h[x] then
					local A = h[x]
					if A["Callback"] == nil then
						return
					else
						A["Callback"](w, y)
						return
					end
				end
				if j[w] and j[w][x] then
					local B = j[w][x]
					if type(y) ~= B["Type"] then
						error("bad argument #3 to '" .. x .. "' (" .. B["Type"] .. " expected, got " .. type(x) .. ")")
					end
					k[w][x] = y
					return
				end
				return q(w, x, y)
			end
			)
		local D = game.Players.LocalPlayer.Character.Humanoid
		local function A(_)
			local a0 = p(D, _)
			local a1 = type(a0)
			if not j[D] then
				j[D] = {}
			end
			if not k[D] then
				k[D] = {}
			end
			j[D][_] = {Type = a1}
			k[D][_] = p(D, _)
			local a2 = function()
				j[D][_] = nil
				k[D][_] = nil
			end
			return {remove = a2, Remove = a2}
		end
		A("WalkSpeed")
		A("JumpPower")
	end
	l()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	-- // Services
	local Players = game:GetService("Players")

	-- // Vars
	local LocalPlayer = Players.LocalPlayer

	-- // Disable Jump Limit
	function rJumpLimit(Character)
		local connections = getconnections(Character.Humanoid.Jumping)

		for i = 1, #connections do
			local connection = connections[i]
			if (getfenv(connection.Function).script.Name == "Framework") then
				connection:Disable()
			end
		end
	end

	-- //
	rJumpLimit(LocalPlayer.Character)
	LocalPlayer.CharacterAdded:Connect(function(Character)
		LocalPlayer.PlayerGui:WaitForChild("Framework")
		rJumpLimit(Character)
	end)
end)

RpgRide.Name = "RpgRide"
RpgRide.Parent = CombatFrame
RpgRide.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
RpgRide.BorderSizePixel = 0
RpgRide.Position = UDim2.new(0.0220048148, 0, 0.473450601, 0)
RpgRide.Size = UDim2.new(0, 86, 0, 33)
RpgRide.Font = Enum.Font.SourceSans
RpgRide.Text = "Rpg Ride"
RpgRide.TextColor3 = Color3.fromRGB(255, 255, 255)
RpgRide.TextScaled = true
RpgRide.TextSize = 14.000
RpgRide.TextWrapped = true
RpgRide.MouseButton1Down:Connect(function()
	-- SETTINGS --
	local speed = 20
	local turnSpeed = 3
	--------------

	local plr = game.Players.LocalPlayer
	local Mouse = plr:GetMouse()
	local peniscock
	local movers
	local control = {w=false,a=false,s=false,d=false,q=false,e=false}

	game:GetService("RunService").Stepped:connect(function()
		if plr.PlayerGui:FindFirstChild("MainScreenGui") and plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
			plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
		else
			local c = plr.PlayerGui.MainScreenGui.Bar.HP
			local g = c:Clone()
			g.Name = "Speed"
			g.Position = UDim2.new(0.5, 0, 1, -120)
			g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
			g.Picture.Image.Image = "rbxassetid://181035717"
			g.TextLabel.Text = "Speed"
			g.Parent = c.Parent
		end
		if peniscock and peniscock.Parent ~= nil then
			setsimulationradius(math.huge^math.huge, math.huge)
			if movers then
				movers[1].Position = (peniscock.CFrame*CFrame.new(0, -speed/20, -2))*CFrame.Angles(math.rad(-90), 0, 0).p
				movers[2].cframe = (peniscock.CFrame*CFrame.new(0, -speed/20, -2))*CFrame.Angles(math.rad(-90), 0, 0)
				if plr.Character.Humanoid.Sit ~= true then
					peniscock = nil
				end
			else
				movers={}
				local bp = Instance.new("BodyPosition", plr.Character.LowerTorso)
				local bg = Instance.new("BodyGyro", plr.Character.LowerTorso)
				bp.P = 1e5
				bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
				movers[1], movers[2] = bp, bg
			end
			if control.w then
				peniscock.CFrame = peniscock.CFrame * CFrame.Angles(math.rad(turnSpeed), 0, 0)
			end
			if control.s then
				peniscock.CFrame = peniscock.CFrame * CFrame.Angles(math.rad(-turnSpeed), 0, 0)
			end
			if control.a then
				peniscock.CFrame = peniscock.CFrame * CFrame.Angles(0, 0, math.rad(-turnSpeed))
			end
			if control.d then
				peniscock.CFrame = peniscock.CFrame * CFrame.Angles(0, 0, math.rad(turnSpeed))
			end
		end
		if control.q and speed > 0 then
			speed = speed - 1
		end
		if control.e and speed < 100 then
			speed = speed + 1
		end
	end)

	Mouse.KeyDown:connect(function(KEY)
		local key = KEY:lower()
		if control[key] ~= nil then
			control[key]=true
		end
	end)

	Mouse.KeyUp:connect(function(KEY)
		local key = KEY:lower()
		if control[key] ~= nil then
			control[key]=false
		end
	end)

	game.Workspace.Ignored.ChildAdded:connect(function(child)
		wait()
		if child.Name == "Launcher" and math.abs((child.Position-plr.Character.HumanoidRootPart.Position).Magnitude)<30 then
			plr.Character.Humanoid.Sit = true
			peniscock = child
			child:WaitForChild("BodyVelocity"):Destroy()
			local e = Instance.new("BodyVelocity", child)
			while peniscock and peniscock.Parent ~= nil do
				game.RunService.Stepped:wait()
				e.Velocity = ((child.CFrame * CFrame.new(0, -speed, 0)).p - child.CFrame.p)
			end
			movers[1]:Destroy()
			movers[2]:Destroy()
			movers = nil
		end
	end)
end)

FreeFists.Name = "FreeFists"
FreeFists.Parent = CombatFrame
FreeFists.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
FreeFists.BorderSizePixel = 0
FreeFists.Position = UDim2.new(0.253722697, 0, 0.473450601, 0)
FreeFists.Size = UDim2.new(0, 86, 0, 33)
FreeFists.Font = Enum.Font.SourceSans
FreeFists.Text = "Free Fists"
FreeFists.TextColor3 = Color3.fromRGB(255, 255, 255)
FreeFists.TextScaled = true
FreeFists.TextSize = 14.000
FreeFists.TextWrapped = true
FreeFists.MouseButton1Down:Connect(function()

	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")

	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()

	local Character = LocalPlayer.Character
	local RightHand = Character.RightHand
	local Character = LocalPlayer.Character
	local LeftHand = Character.LeftHand

	wait(3)

	local Box = Instance.new("SelectionBox")
	Box.LineThickness = 0.15
	Box.Color3 = Color3.new(0, 1, 0.0313725)
	Box.Adornee = RightHand
	Box.Parent = RightHand

	LeftHand.LeftWrist:Destroy()
	game.Players.LocalPlayer.Character.LeftHand.Size = Vector3.new(4,4,4)

	local Box = Instance.new("SelectionBox")
	Box.LineThickness = 0.15
	Box.Color3 = Color3.new(0.215686, 1, 0)
	Box.Adornee = LeftHand
	Box.Parent = LeftHand

	RightHand.RightWrist:Destroy() 
	game.Players.LocalPlayer.Character.RightHand.Size = Vector3.new(4,4,4)

	while true do 
		pcall(function()
			RightHand.Position = Mouse.Hit.p
			RightHand.Rotation = Vector3.new(0,0,0)
			RightHand.Massless = true
			LeftHand.Position = Mouse.Hit.p
			LeftHand.Rotation = Vector3.new(0,0,0)
			LeftHand.Massless = true
		end)
		pcall(function()
			local Tool = Character:FindFirstChildOfClass("Tool")
			Tool.Handle.Position = RightHand.Position
			Tool.Handle.Position = LeftHand.Position
		end)
		RunService.RenderStepped:Wait()
	end
end)

Bikefly.Name = "Bikefly"
Bikefly.Parent = CombatFrame
Bikefly.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Bikefly.BorderSizePixel = 0
Bikefly.Position = UDim2.new(0.49047792, 0, 0.473450601, 0)
Bikefly.Size = UDim2.new(0, 86, 0, 33)
Bikefly.Font = Enum.Font.SourceSans
Bikefly.Text = "Bikefly"
Bikefly.TextColor3 = Color3.fromRGB(255, 255, 255)
Bikefly.TextScaled = true
Bikefly.TextSize = 14.000
Bikefly.TextWrapped = true
Bikefly.MouseButton1Down:Connect(function()
	local speed = 20
	local old
	local Plr = game.Players.LocalPlayer
	local wheels = {}
	local control = {q=false,e=false,w=false,a=false,s=false,d=false}
	local Mouse = Plr:GetMouse()

	Mouse.KeyDown:connect(function(KEY)
		local key = KEY:lower()
		if control[key] ~= nil then
			control[key]=true
		end
	end)

	Mouse.KeyUp:connect(function(KEY)
		local key = KEY:lower()
		if control[key] ~= nil then
			control[key]=false
		end
	end)

	while game.RunService.Stepped:wait() do
		local seat = (Plr.Character or Plr.CharacterAdded:wait()):WaitForChild("Humanoid").SeatPart
		if Plr.PlayerGui:FindFirstChild("MainScreenGui") and Plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and Plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
			Plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
		else
			local c = Plr.PlayerGui.MainScreenGui.Bar.HP
			local g = c:Clone()
			g.Name = "Speed"
			g.Position = UDim2.new(0.5, 0, 1, -120)
			g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
			g.Picture.Image.Image = "rbxassetid://181035717"
			g.TextLabel.Text = "Speed"
			g.Parent = c.Parent
		end
		if seat ~= nil and seat:IsDescendantOf(game.Workspace.Vehicles) then
			if seat ~= old then
				if old then
					old.Vel:Destroy()
					old.Gyro:Destroy()
				end
				old = seat
				for i = 1, 2 do
					if wheels[i] then
						wheels[i][2].Parent = wheels[i][1]
					end
					local wheel = seat.Parent.Wheel
					wheels[i] = {seat.Parent, wheel}
					wheel:remove()
				end
				local gyro = Instance.new("BodyGyro", seat)
				gyro.Name = "Gyro"
				local pos = Instance.new("BodyVelocity", seat)
				pos.Name = "Vel"
				gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				pos.MaxForce = Vector3.new(9e9, 9e9, 9e9)
			else 
				seat.Gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				local vel = CFrame.new(0, 0, 0)
				if control.w then
					vel = vel * CFrame.new(0, 0, -speed)
				end
				if control.s then
					vel = vel * CFrame.new(0, 0, speed)
				end
				if control.a then
					vel = vel * CFrame.new(-speed, 0, 0)
				end
				if control.d then
					vel = vel * CFrame.new(speed, 0, 0)
				end
				seat.Vel.Velocity = (seat.CFrame*vel).p - seat.CFrame.p
			end
		end
		if control.e and speed<100 then
			speed = speed + 1
		end
		if control.q and speed > 0 then
			speed = speed - 1
		end
	end
end)

local fistreach = false
Fistreach.Name = "Fistreach"
Fistreach.Parent = CombatFrame
Fistreach.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Fistreach.BorderSizePixel = 0
Fistreach.Position = UDim2.new(0.729751825, 0, 0.473450601, 0)
Fistreach.Size = UDim2.new(0, 86, 0, 33)
Fistreach.Font = Enum.Font.SourceSans
Fistreach.Text = "Fist Reach"
Fistreach.TextColor3 = Color3.fromRGB(255, 255, 255)
Fistreach.TextScaled = true
Fistreach.TextSize = 14.000
Fistreach.TextWrapped = true
Fistreach.MouseButton1Down:Connect(function()
	if fistreach == true then
		fistreach = false
		game.Players.LocalPlayer.Character.RightHand.Size = Vector3.new(0.5, 0.5, 0.5)
		game.Players.LocalPlayer.Character.LeftHand.Size = Vector3.new(0.5, 0.5, 0.5)
		game.Players.LocalPlayer.Character.RightHand.Massless = true
		game.Players.LocalPlayer.Character.LeftHand.Massless = true
		game.Players.LocalPlayer.Character.RightHand.Transparency = 0
		game.Players.LocalPlayer.Character.LeftHand.Transparency = 0
	end
end)

DracoModMenu.Name = "DracoModMenu"
DracoModMenu.Parent = CombatFrame
DracoModMenu.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
DracoModMenu.BorderSizePixel = 0
DracoModMenu.Position = UDim2.new(0.729751825, 0, 0.636856258, 0)
DracoModMenu.Size = UDim2.new(0, 86, 0, 33)
DracoModMenu.Font = Enum.Font.SourceSans
DracoModMenu.Text = "Draco Mod Menu"
DracoModMenu.TextColor3 = Color3.fromRGB(255, 255, 255)
DracoModMenu.TextScaled = true
DracoModMenu.TextSize = 14.000
DracoModMenu.TextWrapped = true
DracoModMenu.MouseButton1Down:Connect(function()
	wait();
	local UserInputService = game:GetService("UserInputService")
	local ScreenGui = Instance.new("ScreenGui", game.CoreGui); ScreenGui.Name = "Drxco's Menu"
	local Frame = Instance.new("Frame", ScreenGui)
	local Main = Instance.new("ScrollingFrame", ScreenGui)
	Main.Size = UDim2.new(0.3, 0, 0.4, 0)
	Main.Position = UDim2.new(0.65, 0, 0.2, 0)
	ScreenGui.Parent = nil
	local MainEvent = game.ReplicatedStorage.MainEvent
	local CurrentCamera = workspace.CurrentCamera
	local Plr = game.Players.LocalPlayer
	function enableGUI()
		local v5 = 0
		local players = game.Players:GetChildren()

		table.sort(players, function(p1, p2)
			return p1:GetFullName() < p2:GetFullName()
		end)

		local v7, v8, v9 = pairs(players)
		while true do
			local v10, Target = v7(v8, v9)
			if not v10 then
				break;
			end;
			v9 = v10;

			local v12 = Instance.new("TextButton");
			v12.Size = UDim2.new(0.25, 0, 0, 45);
			v12.Position = UDim2.new(0, 0, 0, v5 * 50);
			v12.BackgroundColor3 = BrickColor.Red().Color;
			v12.Text = Target.Name;
			v12.TextScaled = true;
			v12.Parent = Main;

			local View = v12:Clone();
			View.Text = "Spectate"
			View.Position = UDim2.new(0.75, 0, 0, v5 * 50);
			View.Size = UDim2.new(0.25, 0, 0, 45);
			View.BackgroundColor3 = BrickColor.White().Color;
			View.Parent = Main;

			local v14 = v12:Clone();
			v14.Size = UDim2.new(0.25, 0, 0, 45);
			v14.Position = UDim2.new(0.25, 0, 0, v5 * 50);
			v14.BackgroundColor3 = BrickColor.Green().Color;
			v14.Text = "UnBan";
			v14.Parent = Main;

			local v15 = Instance.new("TextBox");
			v15.Size = UDim2.new(0.25, 0, 0, 45);
			v15.Position = UDim2.new(0.5, 0, 0, v5 * 50);
			v15.Text = "Ban/UnBan Note Here";
			v15.Font = v12.Font;
			v15.TextScaled = true;
			v15.Parent = Main;

			v5 = v5 + 1;
			local u4 = false;
			v12.MouseButton1Click:connect(function()
				if u4 == false then
					u4 = true;
					MainEvent:FireServer("BANREMOTE", Target, v15.Text);
					wait(0.5);
					u4 = false;
				end;
			end);

			v14.MouseButton1Click:connect(function()
				MainEvent:FireServer("UNBANREMOTE", Target, v15.Text);
			end);

			View.MouseButton1Click:connect(function()
				CurrentCamera.CameraSubject = Target.Character.Humanoid;
			end);	
		end;
		Main.CanvasSize = UDim2.new(0, 0, 0, v5 * 50);
		ScreenGui.Parent = game.CoreGui
	end;

	enableGUI()
	--Frame.FindServer.MouseButton1Click:connect(function()
	--	MainEvent:FireServer("FindServer", Frame.PlayerName.Text);
	--end);
	--Frame.JoinServer.MouseButton1Click:connect(function()
	--	MainEvent:FireServer("JoinServer", Frame.ServerId.Text);
	--end);
	local u5 = false;
	UserInputService.InputBegan:connect(function(p3, p4)
		if not p4 and p3.UserInputType == Enum.UserInputType.Keyboard and p3.KeyCode == Enum.KeyCode.B and u5 == false then
			u5 = true;
			if ScreenGui.Parent == nil then
				enableGUI();
			else
				ScreenGui.Parent = nil;
				for v16, v17 in pairs(Main:GetChildren()) do
					v17:Destroy();
				end;
			end;
			wait(0.2);
			u5 = false;
		end;
	end);
	local v18 = {};
	while wait() do
		if ScreenGui.Parent == Plr.PlayerGui then
			for v19 = #v18, 1, -1 do
				v18[v19]:Destroy();
				table.remove(v18, v19);
			end;
			for v20, v21 in pairs(game.Players:GetChildren()) do
				pcall(function()
					local l__Character__22 = v21.Character;
					if CurrentCamera.CFrame.lookVector:Dot((l__Character__22.LowerTorso.Position - CurrentCamera.CFrame.p).unit) > 0 then
						local v23 = CurrentCamera:WorldToScreenPoint(l__Character__22.UpperTorso.Position);
						local v24 = Instance.new("TextLabel");
						v24.Name = l__Character__22.Name;
						local v25 = game.Players:GetPlayerFromCharacter(l__Character__22);
						v24.Text = l__Character__22.Name;
						v24.TextSize = 20;
						v24.Font = Enum.Font.ArialBold;
						v24.TextColor3 = (CurrentCamera.CFrame.p - l__Character__22.LowerTorso.Position).magnitude < 75 and Color3.fromRGB(137, 211, 205) or Color3.new(1, 0, 0);
						v24.Position = UDim2.new(0, v23.x, 0, v23.y);
						v24.Parent = ScreenGui;
						table.insert(v18, v24);
					end;
				end);
			end;
		end;
	end;
end)

CrewIdKiller.Name = "CrewIdKiller"
CrewIdKiller.Parent = CombatFrame
CrewIdKiller.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CrewIdKiller.BorderSizePixel = 0
CrewIdKiller.Position = UDim2.new(0.49047792, 0, 0.636856258, 0)
CrewIdKiller.Size = UDim2.new(0, 86, 0, 33)
CrewIdKiller.Font = Enum.Font.SourceSans
CrewIdKiller.Text = "Crew Id Killer"
CrewIdKiller.TextColor3 = Color3.fromRGB(255, 255, 255)
CrewIdKiller.TextScaled = true
CrewIdKiller.TextSize = 14.000
CrewIdKiller.TextWrapped = true
CrewIdKiller.MouseButton1Down:Connect(function()
	local Run = false
	local ScreenGui = Instance.new("ScreenGui")
	local Toolbar = Instance.new("Frame")
	local Background = Instance.new("Frame")
	local Name = Instance.new("TextLabel")
	local LoopTp = Instance.new("TextButton")
	local Name_Box = Instance.new("TextBox")
	local oldtargets = Instance.new("Folder", game:GetService("ReplicatedStorage"))

	ScreenGui.Parent = game.CoreGui

	Toolbar.Name = "Toolbar"
	Toolbar.Parent = ScreenGui
	Toolbar.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Toolbar.Position = UDim2.new(0.02541296, 0, 0.163390666, 0)
	Toolbar.Size = UDim2.new(0, 269, 0, 34)
	Toolbar.Active = true
	Toolbar.Draggable = true

	Background.Name = "Background"
	Background.Parent = Toolbar
	Background.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Background.BackgroundTransparency = 0.500
	Background.Position = UDim2.new(0, 0, 0.986920536, 0)
	Background.Size = UDim2.new(0, 268, 0, 72)

	Name.Name = "Name"
	Name.Parent = Toolbar
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.00371747208, 0, 0, 0)
	Name.Size = UDim2.new(0, 268, 0, 34)
	Name.Font = Enum.Font.SourceSans
	Name.Text = "Remote Kill"
	Name.TextColor3 = Color3.fromRGB(255, 255, 255)
	Name.TextScaled = true
	Name.TextSize = 14.000
	Name.TextWrapped = true

	LoopTp.Name = "tpon"
	LoopTp.Parent = Toolbar
	LoopTp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LoopTp.BackgroundTransparency = 1.000
	LoopTp.Position = UDim2.new(0, 0, 1, 0)
	LoopTp.Size = UDim2.new(0, 268, 0, 36)
	LoopTp.Font = Enum.Font.Gotham
	LoopTp.Text = "Execute"
	LoopTp.TextColor3 = Color3.fromRGB(255, 255, 255)
	LoopTp.TextSize = 20.000
	LoopTp.MouseButton1Click:Connect(function(DO)
		local TargetIns
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if  v:FindFirstChild("DataFolder") and v.DataFolder:FindFirstChild("Information") and v.DataFolder.Information:FindFirstChild("Crew") and not (v and v.Character and v.Character:FindFirstChild("BodyEffects") and ((v.Character.BodyEffects:FindFirstChild("K.O") and not v.Character.BodyEffects:FindFirstChild("Defense") and v.Character.BodyEffects["K.O"].Value) or (v.Character.BodyEffects:FindFirstChild("Dead") and v.Character.BodyEffects["Dead"].Value))) then
				if string.find(v.DataFolder.Information["Crew"].Value,Name_Box.Text) and not oldtargets:FindFirstChild(i) then
					TargetIns = v
					local OldTargets2 = Instance.new("IntValue", oldtargets);OldTargets2.Name = i
					print("Target set to "..v.name)
				end
			end
		end

		if not TargetIns then print("Target not found");return end

		Run = true

		local Plr = game.Players.LocalPlayer
		local HRPPosition = Plr.Character.HumanoidRootPart.CFrame
		local Hand = Plr.Character.RightHand
		local HandPosition = Hand.Position
		local HandCFrame = Hand.CFrame

		Plr.Character.Humanoid:UnequipTools()
		wait(0.1)
		Plr.Character.Humanoid:EquipTool(Plr.Backpack.Combat)
		wait(0.1)

		if Hand:FindFirstChild("RightWrist") then
			Hand.RightWrist:Destroy()
		end

		spawn(function()
			while Run do
				wait()
				Plr.Character.Combat:Activate()
				wait(3)
				Plr.Character.Combat:Deactivate()
			end
		end)
		wait(1)
		repeat
			wait()
			if not TargetIns then break end
			local Pos = Vector3.new(math.random(-1,1),0,math.random(-1,1))
			Hand.Position = TargetIns.Character.HumanoidRootPart.Position + Pos
			Hand.CFrame = TargetIns.Character.HumanoidRootPart.CFrame + Pos
		until game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V) or (TargetIns and TargetIns.Character and TargetIns.Character:FindFirstChild("BodyEffects") and ((TargetIns.Character.BodyEffects:FindFirstChild("K.O") and TargetIns.Character.BodyEffects["K.O"].Value) or (TargetIns.Character.BodyEffects:FindFirstChild("Dead") and TargetIns.Character.BodyEffects["Dead"].Value)))
		Run = false

		Plr.Character.HumanoidRootPart.CFrame = HRPPosition

		Hand.Position = HandPosition
		Hand.CFrame = HandCFrame
		wait(0.1)
		local RightWrist = Instance.new("Weld", Hand)
		RightWrist.Part0 = Hand
		RightWrist.Part1 = Plr.Character.RightLowerArm
		RightWrist.C0 = CFrame.new(0.0682975054, -0.450790346, -0.204141855, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		RightWrist.C1 = CFrame.new(-0.0443148613, 0.233287811, 0.124126196, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		RightWrist.Name = ("RightWrist")
		wait(1)
		Plr.Character.HumanoidRootPart.CFrame = TargetIns.Character.UpperTorso.CFrame
		wait(3)
		DO()
	end)

	local plr = game.Players.LocalPlayer
	mouse = plr:GetMouse()
	mouse.KeyDown:connect(function(key)
		if key == "c" then
			for index, pp in pairs(oldtargets:GetChildren()) do
				pp:Destroy()
			end
		end
	end)

	Name_Box.Name = "LoopTp"
	Name_Box.Parent = LoopTp
	Name_Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name_Box.BackgroundTransparency = 1.000 
	Name_Box.Position = UDim2.new(0, 0, 1, 0)
	Name_Box.Size = UDim2.new(0, 268, 0, 36)
	Name_Box.Font = Enum.Font.Gotham
	Name_Box.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
	Name_Box.PlaceholderText = "CrewID"
	Name_Box.Text = ""
	Name_Box.TextColor3 = Color3.fromRGB(255, 255, 255)
	Name_Box.TextSize = 20.000
end)

GrandeSky.Name = "GrandeSky"
GrandeSky.Parent = CombatFrame
GrandeSky.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
GrandeSky.BorderSizePixel = 0
GrandeSky.Position = UDim2.new(0.253722697, 0, 0.808042884, 0)
GrandeSky.Size = UDim2.new(0, 86, 0, 33)
GrandeSky.Font = Enum.Font.SourceSans
GrandeSky.Text = "Grande Sky"
GrandeSky.TextColor3 = Color3.fromRGB(255, 255, 255)
GrandeSky.TextScaled = true
GrandeSky.TextSize = 14.000
GrandeSky.TextWrapped = true
GrandeSky.MouseButton1Down:Connect(function()
	local Plr = game.Players.LocalPlayer
	local lastPos = Plr.Character.HumanoidRootPart.CFrame
	local e = 0
	local p = 0
	local a = {}
	repeat
		Plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Grenade] - $700"].Head.CFrame
		wait(0.5)
		fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $700"].ClickDetector)
		for i, v in pairs(Plr.Backpack:GetChildren()) do
			if v.Name == "[Grenade]" then
				e = 0
				for i, v in pairs(a) do
					e = e + 1
				end
				table.insert(a, v)
				v.Parent = Plr.Character
			end
		end
	until e >= 100

	for i, v in pairs(a) do
		local p = (i*0.01)+0.50
		v.GripUp = Vector3.new(0, 1, 0)
		if i <=e/2 then
			v.GripPos = Vector3.new(((p^4)*math.cos(18.5*(math.pi*p)))*40, 0, ((p^4)*math.sin(18.5*(math.pi*p)))*40)
		else
			v.GripPos = Vector3.new(((p^4)*math.cos(18.5*(math.pi*p)))*40, 0, ((p^4)*math.sin(18.5*(math.pi*p)))*40)
		end
	end
	Plr.Character.Humanoid:UnequipTools()
	wait(5)
	for _, burger in pairs(a) do
		burger.Parent = Plr.Character
	end
	Plr.Character.HumanoidRootPart.CFrame = lastPos
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local char = LocalPlayer.Character
	local Ignored = game.workspace.Ignored
	local backpack = LocalPlayer.Backpack
	local x = 0
	local Grenade = "[Grenade]"
	local DroppedGrenade = "Handle"
	for i,v in pairs(backpack:GetChildren()) do
		if v.Name == Grenade then
			v.Parent = char
		end
	end
	for i,v in pairs(char:GetChildren()) do
		if v.Name == Grenade then
			v:Activate()
			v:Activate()
		end
	end
	wait (1)
	for i,v in pairs(Ignored:GetChildren()) do
		if v.Name == DroppedGrenade then
			x = x + 1
			v.Name = DroppedGrenade..x
		end
	end
	wait(1)
	x = 0
	for i, player in pairs(game.Players:GetPlayers()) do
		x = x + 1
		local launch = Ignored:WaitForChild(DroppedGrenade..x)
		if LocalPlayer.Name == player.Name then do
				launch.Position = Vector3.new(0,1000,0)
			end
		else do
				game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
				game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
				launch.Position = player.Character.HumanoidRootPart.Position
				wait (0.02)
			end

		end
	end
end)

MeleeReach.Name = "Melee Reach"
MeleeReach.Parent = CombatFrame
MeleeReach.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
MeleeReach.BorderSizePixel = 0
MeleeReach.Position = UDim2.new(0.0220048148, 0, 0.636856258, 0)
MeleeReach.Size = UDim2.new(0, 86, 0, 33)
MeleeReach.Font = Enum.Font.SourceSans
MeleeReach.Text = "Melee Reach"
MeleeReach.TextColor3 = Color3.fromRGB(255, 255, 255)
MeleeReach.TextScaled = true
MeleeReach.TextSize = 14.000
MeleeReach.TextWrapped = true
MeleeReach.MouseButton1Down:Connect(function()
	local Plr = game.Players.LocalPlayer
	for i,v in pairs(Plr.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name ~= "Combat" then
				local pp = v.Handle
				v.TextureId = 0
				if v.Name ~= "[SledgeHammer]" and v.Name ~= "[StopSign]" then
					pp.MeshId = 0
					pp.Transparency = 1
				elseif v.Name == "[SledgeHammer]" then v.Part:Destroy() wait(0.1) v.Part:Destroy()
				elseif v.Name == "[StopSign]" then v.Sign:Destroy() end

				pp.Size = Vector3.new(50, 50, 50)
				print(v)
				Plr.Character.Humanoid:UnequipTools()
				local tooloutline = Instance.new("SelectionBox",v.Handle)
				tooloutline.Adornee = pp
			else 
				for i,v in ipairs(Plr.Character:GetDescendants()) do
					if v:IsA("MeshPart") then v.Massless = true
						v.CanCollide = false
						v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
					end
				end

				for i,v in ipairs(game.workspace:GetDescendants()) do
					if v:IsA("Seat") then 
						v:Destroy()
					end
				end

				Plr.Character.RightHand.Size = Vector3.new(35, 35, 35)
				Plr.Character.RightHand.Transparency = 1

				game:GetService('RunService').Stepped:connect(function()
					if Plr.Character:FindFirstChild("Combat") and not Plr.Character.RightHand:FindFirstChild("ppsuc") then
						local HandHitBox = Instance.new("SelectionBox",Plr.Character.RightHand)
						HandHitBox.Adornee = Plr.Character.RightHand
						HandHitBox.Name = "ppsuc"
					elseif not Plr.Character:FindFirstChild("Combat") and Plr.Character.RightHand:FindFirstChild("ppsuc") then
						Plr.Character.RightHand.ppsuc:Destroy()
					end
				end)
			end
		end
	end
end)

Unban.Name = "Unban"
Unban.Parent = CombatFrame
Unban.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Unban.BorderSizePixel = 0
Unban.Position = UDim2.new(0.0220048148, 0, 0.808042884, 0)
Unban.Size = UDim2.new(0, 86, 0, 33)
Unban.Font = Enum.Font.SourceSans
Unban.Text = "Unban"
Unban.TextColor3 = Color3.fromRGB(255, 255, 255)
Unban.TextScaled = true
Unban.TextSize = 14.000
Unban.TextWrapped = true
Unban.MouseButton1Down:Connect(function()
	local localPlayer = game:GetService('Players').LocalPlayer;
	local localCharacter = localPlayer.Character;
	localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
	localCharacter:ClearAllChildren()
	local newCharacter = localPlayer.CharacterAdded:Wait();
	local spoofFolder = Instance.new('Folder');
	spoofFolder.Name = 'FULLY_LOADED_CHAR';
	spoofFolder.Parent = newCharacter;
	newCharacter:WaitForChild('BodyEffects').Dead:Destroy();
	local spoofValue = Instance.new('BoolValue', newCharacter.BodyEffects);
	spoofValue.Name = 'Dead';
end)

TargetGui.Name = "TargetGui"
TargetGui.Parent = CombatFrame
TargetGui.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
TargetGui.BorderSizePixel = 0
TargetGui.Position = UDim2.new(0.49047792, 0, 0.808042884, 0)
TargetGui.Size = UDim2.new(0, 86, 0, 33)
TargetGui.Font = Enum.Font.SourceSans
TargetGui.Text = "Target Gui"
TargetGui.TextColor3 = Color3.fromRGB(255, 255, 255)
TargetGui.TextScaled = true
TargetGui.TextSize = 14.000
TargetGui.TextWrapped = true
TargetGui.MouseButton1Down:Connect(function()
	-- we skiddes
	local TargetGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TextButton = Instance.new("TextButton")
	local TextButton_2 = Instance.new("TextButton")
	local TextButton_3 = Instance.new("TextButton")
	local TextButton_4 = Instance.new("TextButton")
	local TextButton_5 = Instance.new("TextButton")
	local TextBox = Instance.new("TextBox")
	local function ShrinkName()
		TextBox.FocusLost:connect(function()
			for i,v in pairs(game.Players:GetChildren()) do
				if (string.sub(string.lower(v.Name),1,string.len(TextBox.Text))) == string.lower(TextBox.Text) then
					TextBox.Text = v.Name
				end
			end
		end)
	end

	ShrinkName()
	function findPlayer(name)
		name = name:lower()
		if name == 'me' then
			return game:GetService'Players'.LocalPlayer
		end
		for i,v in pairs(game:GetService'Players':GetPlayers()) do
			if v.Name:lower():find(name) == 1 then
				return v
			end
		end
	end

	--Properties:

	TargetGui.Name = "TargetGui"
	TargetGui.Parent = game.CoreGui

	Frame.Parent = TargetGui
	Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Frame.Position = UDim2.new(0.187088266, 0, 0.221115544, 0)
	Frame.Size = UDim2.new(0, 475, 0, 237)

	UICorner.Parent = Frame

	TextButton.Parent = Frame
	TextButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	TextButton.BorderColor3 = Color3.fromRGB(554, 55, 55)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.863157868, 0, 0.0295358654, 0)
	TextButton.Size = UDim2.new(0, 53, 0, 50)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "X"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true
	TextButton.MouseButton1Down:Connect(function()
		Frame:Destroy()
	end)

	TextButton_2.Parent = Frame
	TextButton_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	TextButton_2.BorderColor3 = Color3.fromRGB(554, 55, 55)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Position = UDim2.new(0.0315789469, 0, 0.0632911325, 0)
	TextButton_2.Size = UDim2.new(0, 139, 0, 50)
	TextButton_2.Font = Enum.Font.SourceSans
	TextButton_2.Text = "Bag"
	TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.TextScaled = true
	TextButton_2.TextSize = 14.000
	TextButton_2.TextWrapped = true
	TextButton_2.MouseButton1Down:Connct(function()
		local TargetPlr = TextBox.Text
		function getRoot(char)
			local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
			return rootPart
		end

		if TargetPlr and game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop['[BrownBag] - $25'].Head.CFrame
			wait(.30)
			fireclickdetector(game.Workspace.Ignored.Shop['[BrownBag] - $25'].ClickDetector)
			game.Players.LocalPlayer.Backpack:WaitForChild("[BrownBag]").Parent = game.Players.LocalPlayer.Character

			local A_1 = "[Factor X] Attempting To Bag " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
			wait(.5)
			repeat
				pcall(function()
					wait()
					getRoot(game.Players[TargetPlr].Character).CFrame = getRoot(game.Players.LocalPlayer.Character).CFrame + Vector3.new(1,3,0)
					game.Players.LocalPlayer.Character["[BrownBag]"]:Activate()
				end)
			until game.Players[TargetPlr].Character:FindFirstChild("Christmas_Sock")
			local A_1 = "[Factor X] Successfully Bagged " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
		elseif game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
			local A_1 = "[Factor X] " .. TargetPlr .. " Is Already Bagged." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
		end
	end)

	TextButton_3.Parent = Frame
	TextButton_3.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	TextButton_3.BorderColor3 = Color3.fromRGB(554, 55, 55)
	TextButton_3.BorderSizePixel = 0
	TextButton_3.Position = UDim2.new(0.374736845, 0, 0.0632911325, 0)
	TextButton_3.Size = UDim2.new(0, 139, 0, 50)
	TextButton_3.Font = Enum.Font.SourceSans
	TextButton_3.Text = "Target"
	TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_3.TextScaled = true
	TextButton_3.TextSize = 14.000
	TextButton_3.TextWrapped = true
	TextButton_3.MouseButton1Down:Connect(function()
		local localPlayer     = game:GetService("Players").LocalPlayer;
		local localCharacter  = localPlayer.Character;
		local Target          = findPlayer(TextBox.Text);

		if Target and game.Players[Target.Name].Character.BodyEffects['K.O'].Value == false then
			pcall(function()
				localCharacter.LeftHand.LeftWrist:Destroy();
				localCharacter.RightHand.RightWrist:Destroy();
			end);
			repeat
				wait();
				localCharacter.LeftHand.CFrame = game.Players[Target.Name].Character.LowerTorso.CFrame;
				localCharacter.RightHand.CFrame = game.Players[Target.Name].Character.LowerTorso.CFrame;
			until game.Players[Target.Name].Character.BodyEffects['K.O'].Value == true
			game.StarterGui:SetCore("SendNotification", {
				Title = "Factor X";
				Text = Target.Name .. "Lmao What a Noob Go Stomp Him He got Knocked";
				Duration = 5;
			})
		elseif game.Players[Target.Name].Character.BodyEffects['K.O'].Value == true then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Factor X";
				Text = Target.Name .. " Ez He already Knocked.";
				Duration = 5;
			})
		end;
	end)

	TextButton_4.Parent = Frame
	TextButton_4.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	TextButton_4.BorderColor3 = Color3.fromRGB(554, 55, 55)
	TextButton_4.BorderSizePixel = 0
	TextButton_4.Position = UDim2.new(0.031578958, 0, 0.345991552, 0)
	TextButton_4.Size = UDim2.new(0, 139, 0, 50)
	TextButton_4.Font = Enum.Font.SourceSans
	TextButton_4.Text = "View"
	TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_4.TextScaled = true
	TextButton_4.TextSize = 14.000
	TextButton_4.TextWrapped = true
	TextButton_4.MouseButton1Down:Connect(function()
		local TargetPlr = TextBox.Text;
		game.Workspace.Camera.CameraSubject = game.Players[TargetPlr].Character.Humanoid;
		local A_1 = "[Factor X] Spectating " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
	end)

	TextButton_5.Parent = Frame
	TextButton_5.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	TextButton_5.BorderColor3 = Color3.fromRGB(554, 55, 55)
	TextButton_5.BorderSizePixel = 0
	TextButton_5.Position = UDim2.new(0.374736845, 0, 0.345991552, 0)
	TextButton_5.Size = UDim2.new(0, 139, 0, 50)
	TextButton_5.Font = Enum.Font.SourceSans
	TextButton_5.Text = "Unview"
	TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_5.TextScaled = true
	TextButton_5.TextSize = 14.000
	TextButton_5.TextWrapped = true
	TextButton_5.MouseButton1Down:Connect(function()
		local TargetPlr = TextBox.Text;
		local A_1 = "[DaHoodHub] Stopped Spectating " .. TargetPlr .. "." local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
		game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
	end)

	TextBox.Parent = Frame
	TextBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.726315796, 0, 0.443037987, 0)
	TextBox.Size = UDim2.new(0, 103, 0, 50)
	TextBox.Font = Enum.Font.SourceSans
	TextBox.Text = "playername"
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true
end)

BurgetGalaxy.Name = "BurgetGalaxy"
BurgetGalaxy.Parent = CombatFrame
BurgetGalaxy.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
BurgetGalaxy.BorderSizePixel = 0
BurgetGalaxy.Position = UDim2.new(0.253722697, 0, 0.636856258, 0)
BurgetGalaxy.Size = UDim2.new(0, 86, 0, 33)
BurgetGalaxy.Font = Enum.Font.SourceSans
BurgetGalaxy.Text = "Burger Galaxy"
BurgetGalaxy.TextColor3 = Color3.fromRGB(255, 255, 255)
BurgetGalaxy.TextScaled = true
BurgetGalaxy.TextSize = 14.000
BurgetGalaxy.TextWrapped = true
BurgetGalaxy.MouseButton1Down:Connect(function()
	local Plr = game.Players.LocalPlayer
	local lastPos = Plr.Character.HumanoidRootPart.CFrame
	local e = 0
	local p = 0
	local a = {}
	repeat
		Plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Hamburger] - $5"].Head.CFrame
		wait(0.5)
		fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Hamburger] - $5"].ClickDetector)
		for i, v in pairs(Plr.Backpack:GetChildren()) do
			if v.Name == "[Hamburger]" then
				e = 0
				for i, v in pairs(a) do
					e = e + 1
				end
				table.insert(a, v)
				v.Parent = Plr.Character
			end
		end
	until e >= 100

	for i, v in pairs(a) do
		local p = (i*0.01)+0.50
		v.GripUp = Vector3.new(0, 1, 0)
		if i <=e/2 then
			v.GripPos = Vector3.new(((p^4)*math.cos(18.5*(math.pi*p)))*40, 0, ((p^4)*math.sin(18.5*(math.pi*p)))*40)
		else
			v.GripPos = Vector3.new(((p^4)*math.cos(18.5*(math.pi*p)))*40, 0, ((p^4)*math.sin(18.5*(math.pi*p)))*40)
		end
	end
	Plr.Character.Humanoid:UnequipTools()
	wait(5)
	for _, burger in pairs(a) do
		burger.Parent = Plr.Character
	end
	Plr.Character.HumanoidRootPart.CFrame = lastPos
end)

TeleportsFrame.Name = "TeleportsFrame"
TeleportsFrame.Parent = FactorX
TeleportsFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TeleportsFrame.BorderSizePixel = 0
TeleportsFrame.Position = UDim2.new(0.263537914, 0, 0.170149252, 0)
TeleportsFrame.Size = UDim2.new(0, 400, 0, 272)
TeleportsFrame.Visible = false

AdminBase.Name = "AdminBase"
AdminBase.Parent = TeleportsFrame
AdminBase.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AdminBase.BorderSizePixel = 0
AdminBase.Position = UDim2.new(0, 0, 0.0404411778, 0)
AdminBase.Size = UDim2.new(0, 120, 0, 38)
AdminBase.Font = Enum.Font.SourceSans
AdminBase.Text = "Admin Base"
AdminBase.TextColor3 = Color3.fromRGB(255, 255, 255)
AdminBase.TextScaled = true
AdminBase.TextSize = 14.000
AdminBase.TextWrapped = true
AdminBase.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-729.895, -37.642, -885.8)
end)

Bank.Name = "Bank"
Bank.Parent = TeleportsFrame
Bank.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Bank.BorderSizePixel = 0
Bank.Position = UDim2.new(0.331428528, 0, 0.0404411778, 0)
Bank.Size = UDim2.new(0, 120, 0, 38)
Bank.Font = Enum.Font.SourceSans
Bank.Text = "Bank"
Bank.TextColor3 = Color3.fromRGB(255, 255, 255)
Bank.TextScaled = true
Bank.TextSize = 14.000
Bank.TextWrapped = true
Bank.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.668, 23.631, -285.169)
end)
	
Consino.Name = "Consino"
Consino.Parent = TeleportsFrame
Consino.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Consino.BorderSizePixel = 0
Consino.Position = UDim2.new(0.660000026, 0, 0.0404411778, 0)
Consino.Size = UDim2.new(0, 120, 0, 38)
Consino.Font = Enum.Font.SourceSans
Consino.Text = "Consino"
Consino.TextColor3 = Color3.fromRGB(255, 255, 255)
Consino.TextScaled = true
Consino.TextSize = 14.000
Consino.TextWrapped = true
Consino.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new( -864, 22, -161))
end)

Knife.Name = "Knife"
Knife.Parent = TeleportsFrame
Knife.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Knife.BorderSizePixel = 0
Knife.Position = UDim2.new(0, 0, 0.273071736, 0)
Knife.Size = UDim2.new(0, 120, 0, 38)
Knife.Font = Enum.Font.SourceSans
Knife.Text = "Knife"
Knife.TextColor3 = Color3.fromRGB(255, 255, 255)
Knife.TextScaled = true
Knife.TextSize = 14.000
Knife.TextWrapped = true
Knife.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-270, 22, -244))
end)

FoodShop1.Name = "FoodShop1"
FoodShop1.Parent = TeleportsFrame
FoodShop1.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
FoodShop1.BorderSizePixel = 0
FoodShop1.Position = UDim2.new(0.660000026, 0, 0.277460992, 0)
FoodShop1.Size = UDim2.new(0, 120, 0, 38)
FoodShop1.Font = Enum.Font.SourceSans
FoodShop1.Text = "FoodShop 1#"
FoodShop1.TextColor3 = Color3.fromRGB(255, 255, 255)
FoodShop1.TextScaled = true
FoodShop1.TextSize = 14.000
FoodShop1.TextWrapped = true
FoodShop1.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-333.492065, 23.6826477, -292.959625)
end)

GunShop1.Name = "GunShop1"
GunShop1.Parent = TeleportsFrame
GunShop1.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
GunShop1.BorderSizePixel = 0
GunShop1.Position = UDim2.new(0.331428528, 0, 0.518869936, 0)
GunShop1.Size = UDim2.new(0, 120, 0, 38)
GunShop1.Font = Enum.Font.SourceSans
GunShop1.Text = "GunShop 1#"
GunShop1.TextColor3 = Color3.fromRGB(255, 255, 255)
GunShop1.TextScaled = true
GunShop1.TextSize = 14.000
GunShop1.TextWrapped = true
GunShop1.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582, 7.172, -739.015)
end)

GunShop2.Name = "GunShop2"
GunShop2.Parent = TeleportsFrame
GunShop2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
GunShop2.BorderSizePixel = 0
GunShop2.Position = UDim2.new(0.660000026, 0, 0.514480829, 0)
GunShop2.Size = UDim2.new(0, 120, 0, 38)
GunShop2.Font = Enum.Font.SourceSans
GunShop2.Text = "GunShop 2#"
GunShop2.TextColor3 = Color3.fromRGB(255, 255, 255)
GunShop2.TextScaled = true
GunShop2.TextSize = 14.000
GunShop2.TextWrapped = true
GunShop2.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(475.022, 48.005, -603.737)
end)

GraveYard.Name = "GraveYard"
GraveYard.Parent = TeleportsFrame
GraveYard.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
GraveYard.BorderSizePixel = 0
GraveYard.Position = UDim2.new(0, 0, 0.760279179, 0)
GraveYard.Size = UDim2.new(0, 120, 0, 38)
GraveYard.Font = Enum.Font.SourceSans
GraveYard.Text = "GraveYard"
GraveYard.TextColor3 = Color3.fromRGB(255, 255, 255)
GraveYard.TextScaled = true
GraveYard.TextSize = 14.000
GraveYard.TextWrapped = true
GraveYard.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(198.268, 21.749, 34.383)
end)

SellingPlace1.Name = "SellingPlace1"
SellingPlace1.Parent = TeleportsFrame
SellingPlace1.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SellingPlace1.BorderSizePixel = 0
SellingPlace1.Position = UDim2.new(0.331428528, 0, 0.760279179, 0)
SellingPlace1.Size = UDim2.new(0, 120, 0, 38)
SellingPlace1.Font = Enum.Font.SourceSans
SellingPlace1.Text = "Selling Place 1#"
SellingPlace1.TextColor3 = Color3.fromRGB(255, 255, 255)
SellingPlace1.TextScaled = true
SellingPlace1.TextSize = 14.000
SellingPlace1.TextWrapped = true
SellingPlace1.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.518, 21.755, -481.680)
end)

SellingPlace2.Name = "SellingPlace2"
SellingPlace2.Parent = TeleportsFrame
SellingPlace2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SellingPlace2.BorderSizePixel = 0
SellingPlace2.Position = UDim2.new(0.660000026, 0, 0.760279179, 0)
SellingPlace2.Size = UDim2.new(0, 120, 0, 38)
SellingPlace2.Font = Enum.Font.SourceSans
SellingPlace2.Text = "Selling Place 2#"
SellingPlace2.TextColor3 = Color3.fromRGB(255, 255, 255)
SellingPlace2.TextScaled = true
SellingPlace2.TextSize = 14.000
SellingPlace2.TextWrapped = true
SellingPlace2.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236.006, 23.151, -1120.531)
end)

FoodShop2.Name = "FoodShop2"
FoodShop2.Parent = TeleportsFrame
FoodShop2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
FoodShop2.BorderSizePixel = 0
FoodShop2.Position = UDim2.new(0, 0, 0.518869936, 0)
FoodShop2.Size = UDim2.new(0, 120, 0, 38)
FoodShop2.Font = Enum.Font.SourceSans
FoodShop2.Text = "FoodShop 2#"
FoodShop2.TextColor3 = Color3.fromRGB(255, 255, 255)
FoodShop2.TextScaled = true
FoodShop2.TextSize = 14.000
FoodShop2.TextWrapped = true
FoodShop2.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(301.780121, 49.2826538, -619.999634)
end)

Park.Name = "Park"
Park.Parent = TeleportsFrame
Park.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Park.BorderSizePixel = 0
Park.Position = UDim2.new(0.331428528, 0, 0.273071736, 0)
Park.Size = UDim2.new(0, 120, 0, 38)
Park.Font = Enum.Font.SourceSans
Park.Text = "Park"
Park.TextColor3 = Color3.fromRGB(255, 255, 255)
Park.TextScaled = true
Park.TextSize = 14.000
Park.TextWrapped = true
Park.MouseButton1Down:Connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(360.966, 48.5, -522.987)
end)

AutoBuysFrame.Name = "AutoBuysFrame"
AutoBuysFrame.Parent = FactorX
AutoBuysFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
AutoBuysFrame.BorderSizePixel = 0
AutoBuysFrame.Position = UDim2.new(0.265342951, 0, 0.173134327, 0)
AutoBuysFrame.Size = UDim2.new(0, 407, 0, 266)
AutoBuysFrame.Visible = false

Shotgun.Name = "Shotgun"
Shotgun.Parent = AutoBuysFrame
Shotgun.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Shotgun.BorderSizePixel = 0
Shotgun.Position = UDim2.new(0.0147420149, 0, 0.0375939831, 0)
Shotgun.Size = UDim2.new(0, 116, 0, 39)
Shotgun.Font = Enum.Font.SourceSans
Shotgun.Text = "Shotgun"
Shotgun.TextColor3 = Color3.fromRGB(255, 255, 255)
Shotgun.TextScaled = true
Shotgun.TextSize = 14.000
Shotgun.TextWrapped = true
Shotgun.MouseButton1Down:Connect(function()
	local Player = game:GetService("Players").LocalPlayer
	local Players = game:GetService("Players")
	local lol = game.Workspace.Ignored.Shop["[Shotgun] - $1250"]
	local AncientPOS = plr.Character.HumanoidRootPart.Position

	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Lmg.Name = "Lmg"
Lmg.Parent = AutoBuysFrame
Lmg.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Lmg.BorderSizePixel = 0
Lmg.Position = UDim2.new(0.328390807, 0, 0.0375939831, 0)
Lmg.Size = UDim2.new(0, 116, 0, 39)
Lmg.Font = Enum.Font.SourceSans
Lmg.Text = "Lmg"
Lmg.TextColor3 = Color3.fromRGB(255, 255, 255)
Lmg.TextScaled = true
Lmg.TextSize = 14.000
Lmg.TextWrapped = true
Lmg.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[LMG] - $3750"]
		local Player = game:GetService("Players").LocalPlayer
		local Players = game:GetService("Players")
		local lol = game.Workspace.Ignored.Shop["[Shotgun] - $1250"]

		game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
		wait(.1)
		fireclickdetector(lol.ClickDetector,4)
		wait(2)
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Rev.Name = "Rev"
Rev.Parent = AutoBuysFrame
Rev.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Rev.BorderSizePixel = 0
Rev.Position = UDim2.new(0.653764784, 0, 0.0375939831, 0)
Rev.Size = UDim2.new(0, 116, 0, 39)
Rev.Font = Enum.Font.SourceSans
Rev.Text = "Rev"
Rev.TextColor3 = Color3.fromRGB(255, 255, 255)
Rev.TextScaled = true
Rev.TextSize = 14.000
Rev.TextWrapped = true
Rev.MouseButton1Down:Connect(function()
	local Player = game:GetService("Players").LocalPlayer
	local Players = game:GetService("Players")
	local lol = game.Workspace.Ignored.Shop["[Revolver] - $1300"]
	local AncientPOS = plr.Character.HumanoidRootPart.Position
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Smg.Name = "Smg"
Smg.Parent = AutoBuysFrame
Smg.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Smg.BorderSizePixel = 0
Smg.Position = UDim2.new(0.0147420149, 0, 0.248120308, 0)
Smg.Size = UDim2.new(0, 116, 0, 39)
Smg.Font = Enum.Font.SourceSans
Smg.Text = "Smg"
Smg.TextColor3 = Color3.fromRGB(255, 255, 255)
Smg.TextScaled = true
Smg.TextSize = 14.000
Smg.TextWrapped = true
Smg.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[SMG] - $750"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Silencer.Name = "Silencer"
Silencer.Parent = AutoBuysFrame
Silencer.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Silencer.BorderSizePixel = 0
Silencer.Position = UDim2.new(0.328390807, 0, 0.248120308, 0)
Silencer.Size = UDim2.new(0, 116, 0, 39)
Silencer.Font = Enum.Font.SourceSans
Silencer.Text = "Silencer"
Silencer.TextColor3 = Color3.fromRGB(255, 255, 255)
Silencer.TextScaled = true
Silencer.TextSize = 14.000
Silencer.TextWrapped = true
Silencer.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[Silencer] - $550"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Ar.Name = "Ar"
Ar.Parent = AutoBuysFrame
Ar.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Ar.BorderSizePixel = 0
Ar.Position = UDim2.new(0.653764784, 0, 0.248120308, 0)
Ar.Size = UDim2.new(0, 116, 0, 39)
Ar.Font = Enum.Font.SourceSans
Ar.Text = "Ar"
Ar.TextColor3 = Color3.fromRGB(255, 255, 255)
Ar.TextScaled = true
Ar.TextSize = 14.000
Ar.TextWrapped = true
Ar.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[AR] - $1000"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Ak.Name = "Ak"
Ak.Parent = AutoBuysFrame
Ak.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Ak.BorderSizePixel = 0
Ak.Position = UDim2.new(0.0147420149, 0, 0.432330817, 0)
Ak.Size = UDim2.new(0, 116, 0, 39)
Ak.Font = Enum.Font.SourceSans
Ak.Text = "Ak"
Ak.TextColor3 = Color3.fromRGB(255, 255, 255)
Ak.TextScaled = true
Ak.TextSize = 14.000
Ak.TextWrapped = true
Ak.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[AK47] - $2250"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Rpg.Name = "Rpg"
Rpg.Parent = AutoBuysFrame
Rpg.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Rpg.BorderSizePixel = 0
Rpg.Position = UDim2.new(0.328390807, 0, 0.432330817, 0)
Rpg.Size = UDim2.new(0, 116, 0, 39)
Rpg.Font = Enum.Font.SourceSans
Rpg.Text = "Rpg"
Rpg.TextColor3 = Color3.fromRGB(255, 255, 255)
Rpg.TextScaled = true
Rpg.TextSize = 14.000
Rpg.TextWrapped = true
Rpg.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[RPG] - $6000"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Taco.Name = "Taco"
Taco.Parent = AutoBuysFrame
Taco.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Taco.BorderSizePixel = 0
Taco.Position = UDim2.new(0.653764784, 0, 0.432330817, 0)
Taco.Size = UDim2.new(0, 116, 0, 39)
Taco.Font = Enum.Font.SourceSans
Taco.Text = "Taco"
Taco.TextColor3 = Color3.fromRGB(255, 255, 255)
Taco.TextScaled = true
Taco.TextSize = 14.000
Taco.TextWrapped = true
Taco.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[Taco] - $4"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Hamburger.Name = "Hamburger"
Hamburger.Parent = AutoBuysFrame
Hamburger.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Hamburger.BorderSizePixel = 0
Hamburger.Position = UDim2.new(0.0147420149, 0, 0.627819538, 0)
Hamburger.Size = UDim2.new(0, 116, 0, 39)
Hamburger.Font = Enum.Font.SourceSans
Hamburger.Text = "Hamburger"
Hamburger.TextColor3 = Color3.fromRGB(255, 255, 255)
Hamburger.TextScaled = true
Hamburger.TextSize = 14.000
Hamburger.TextWrapped = true
Hamburger.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[Hamburger] - $5"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Bag.Name = "Bag"
Bag.Parent = AutoBuysFrame
Bag.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Bag.BorderSizePixel = 0
Bag.Position = UDim2.new(0.328390807, 0, 0.627819538, 0)
Bag.Size = UDim2.new(0, 116, 0, 39)
Bag.Font = Enum.Font.SourceSans
Bag.Text = "Bag"
Bag.TextColor3 = Color3.fromRGB(255, 255, 255)
Bag.TextScaled = true
Bag.TextSize = 14.000
Bag.TextWrapped = true
Bag.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[BrownBag] - $25"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)

	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Lettuce.Name = "Lettuce"
Lettuce.Parent = AutoBuysFrame
Lettuce.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Lettuce.BorderSizePixel = 0
Lettuce.Position = UDim2.new(0.653764784, 0, 0.627819538, 0)
Lettuce.Size = UDim2.new(0, 116, 0, 39)
Lettuce.Font = Enum.Font.SourceSans
Lettuce.Text = "Lettuce"
Lettuce.TextColor3 = Color3.fromRGB(255, 255, 255)
Lettuce.TextScaled = true
Lettuce.TextSize = 14.000
Lettuce.TextWrapped = true
Lettuce.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)

	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Wegihet.Name = "Wegihet"
Wegihet.Parent = AutoBuysFrame
Wegihet.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Wegihet.BorderSizePixel = 0
Wegihet.Position = UDim2.new(0.0147420149, 0, 0.827067673, 0)
Wegihet.Size = UDim2.new(0, 116, 0, 39)
Wegihet.Font = Enum.Font.SourceSans
Wegihet.Text = "Wegiht"
Wegihet.TextColor3 = Color3.fromRGB(255, 255, 255)
Wegihet.TextScaled = true
Wegihet.TextSize = 14.000
Wegihet.TextWrapped = true
Wegihet.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[Weights] - $120"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)

	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Bat.Name = "Bat"
Bat.Parent = AutoBuysFrame
Bat.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Bat.BorderSizePixel = 0
Bat.Position = UDim2.new(0.328390807, 0, 0.827067673, 0)
Bat.Size = UDim2.new(0, 116, 0, 39)
Bat.Font = Enum.Font.SourceSans
Bat.Text = "Key"
Bat.TextColor3 = Color3.fromRGB(255, 255, 255)
Bat.TextScaled = true
Bat.TextSize = 14.000
Bat.TextWrapped = true
Bat.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[Key] - $120"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

Knife_2.Name = "Knife"
Knife_2.Parent = AutoBuysFrame
Knife_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Knife_2.BorderSizePixel = 0
Knife_2.Position = UDim2.new(0.653764784, 0, 0.819548845, 0)
Knife_2.Size = UDim2.new(0, 116, 0, 39)
Knife_2.Font = Enum.Font.SourceSans
Knife_2.Text = "Knife"
Knife_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Knife_2.TextScaled = true
Knife_2.TextSize = 14.000
Knife_2.TextWrapped = true
Knife_2.MouseButton1Down:Connect(function()
	local lol = game.Workspace.Ignored.Shop["[Knife] - $150"]
	game.Players.LocalPlayer.Character:MoveTo(lol.Head.Position)
	wait(.1)
	fireclickdetector(lol.ClickDetector,4)
	wait(2)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(AncientPOS)	
end)

AutofarmsFrame.Name = "AutofarmsFrame"
AutofarmsFrame.Parent = FactorX
AutofarmsFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
AutofarmsFrame.BorderSizePixel = 0
AutofarmsFrame.Position = UDim2.new(0.265342951, 0, 0.170149252, 0)
AutofarmsFrame.Size = UDim2.new(0, 398, 0, 260)
AutofarmsFrame.Visible = false

Hospital.Name = "Hospital"
Hospital.Parent = AutofarmsFrame
Hospital.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Hospital.BorderSizePixel = 0
Hospital.Position = UDim2.new(0.331780523, 0, 0.0423076935, 0)
Hospital.Size = UDim2.new(0, 116, 0, 56)
Hospital.Font = Enum.Font.SourceSans
Hospital.Text = "Hospital Autofarm"
Hospital.TextColor3 = Color3.fromRGB(255, 255, 255)
Hospital.TextScaled = true
Hospital.TextSize = 14.000
Hospital.TextWrapped = true
Hospital.MouseButton1Down:Connect(function()
	local job = game:GetService("Workspace").Ignored.HospitalJob
	while true do
		wait(3)
		if job:FindFirstChild('Can I get the Red bottle') then 
			fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob.Red.ClickDetector)
			wait(.1)
			fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob["Can I get the Red bottle"].ClickDetector)

		elseif job:FindFirstChild('Can I get the Green bottle') then
			fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob.Green.ClickDetector)
			wait(.1)
			fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob["Can I get the Green bottle"].ClickDetector)
		elseif job:FindFirstChild('Can I get the Blue bottle') then
			fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob.Blue.ClickDetector)
			wait(.1)
			fireclickdetector(game:GetService("Workspace").Ignored.HospitalJob["Can I get the Blue bottle"].ClickDetector)

		end
	end 
end)

Shoe.Name = "Shoe"
Shoe.Parent = AutofarmsFrame
Shoe.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Shoe.BorderSizePixel = 0
Shoe.Position = UDim2.new(0.668639541, 0, 0.0423076935, 0)
Shoe.Size = UDim2.new(0, 116, 0, 56)
Shoe.Font = Enum.Font.SourceSans
Shoe.Text = "Shoe Autofarm"
Shoe.TextColor3 = Color3.fromRGB(255, 255, 255)
Shoe.TextScaled = true
Shoe.TextSize = 14.000
Shoe.TextWrapped = true
Shoe.MouseButton1Down:Connect(function()
	game:GetService("Workspace").MAP.Map["hood kicks"]:Destroy()
	while wait(1) do --make it what u want
		local descendants = game.Workspace.Ignored.Drop:GetDescendants()
		for index, descendant in pairs(descendants) do
			if descendant.Name == "MeshPart" then  
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(descendant.Position)
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
				wait(1)
				fireclickdetector(game.Workspace.Ignored.Drop.MeshPart.ClickDetector)
				wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored["Clean the shoes on the floor and come to me for cash"].LowerTorso.CFrame
				fireclickdetector(game:GetService("Workspace").Ignored["Clean the shoes on the floor and come to me for cash"].ClickDetector)
				wait(1)
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
			end
		end
	end
end)

Racemodex.Name = "Racemodex"
Racemodex.Parent = AutofarmsFrame
Racemodex.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Racemodex.BorderSizePixel = 0
Racemodex.Position = UDim2.new(0.0150753772, 0, 0.425384641, 0)
Racemodex.Size = UDim2.new(0, 116, 0, 56)
Racemodex.Font = Enum.Font.SourceSans
Racemodex.Text = "Racemodex Autofarm"
Racemodex.TextColor3 = Color3.fromRGB(255, 255, 255)
Racemodex.TextScaled = true
Racemodex.TextSize = 14.000
Racemodex.TextWrapped = true
Racemodex.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/74VJ07iY​", true))()
end)

AutoArrest2.Name = "AutoArrest2"
AutoArrest2.Parent = AutofarmsFrame
AutoArrest2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AutoArrest2.BorderSizePixel = 0
AutoArrest2.Position = UDim2.new(0.331780523, 0, 0.425384641, 0)
AutoArrest2.Size = UDim2.new(0, 116, 0, 56)
AutoArrest2.Font = Enum.Font.SourceSans
AutoArrest2.Text = "AutoArrest v2"
AutoArrest2.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoArrest2.TextScaled = true
AutoArrest2.TextSize = 14.000
AutoArrest2.TextWrapped = true
AutoArrest2.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/Da%20Hood%20Auto%20Arrest"), true))()
end)

AutoArrest1.Name = "AutoArrest1"
AutoArrest1.Parent = AutofarmsFrame
AutoArrest1.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AutoArrest1.BorderSizePixel = 0
AutoArrest1.Position = UDim2.new(0.668639541, 0, 0.425384641, 0)
AutoArrest1.Size = UDim2.new(0, 116, 0, 56)
AutoArrest1.Font = Enum.Font.SourceSans
AutoArrest1.Text = "AutoArrest V1"
AutoArrest1.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoArrest1.TextScaled = true
AutoArrest1.TextSize = 14.000
AutoArrest1.TextWrapped = true
AutoArrest1.MouseButton1Down:Connect(function()
	wait(0.5); if _G.AutoArrest == false or game.PlaceId ~= 2788229376 then return else repeat wait() until game.Players.LocalPlayer end

	wait(15)
	for i, v in next, game.Workspace:GetDescendants() do
		if v:IsA("Seat") then
			v:Destroy()
		end
	end
	local Plr = game.Players.LocalPlayer

	function serverhop()
		print("PENIS")
		Plr:Destroy()
		local x = {}
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
				x[#x + 1] = v.id
			end
		end
		if #x > 0 then
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
		end
	end

	spawn(function()
		wait(300)
		serverhop()
	end)

	game:GetService("RunService").Stepped:connect(function()
		Plr.Character.Humanoid:ChangeState(11)
	end)
	Plr.CharacterAdded:Connect(function(character)
		repeat wait() until character:FindFirstChild("FULLY_LOADED_CHAR")
		e(character)
	end)
	function e(character)
		for i, v in pairs(game.Workspace.Ignored.ItemsDrop:GetChildren()) do
			if v:FindFirstChild("[Knife]") and Plr.Character:FindFirstChild("[Knife]") == nil and Plr.Backpack:FindFirstChild("[Knife]") == nil then
				Plr.Character.HumanoidRootPart.CFrame = v.CFrame
				wait(1)
			end
		end
		for i, v in pairs(character:GetChildren()) do
			if v:FindFirstChild("LocalScript") then
				v:Destroy()
			end
		end
	end
	e(Plr.character)
	local target
	while wait() do
		target = nil
		local highest = 0
		for i, v in pairs(game.Players:GetPlayers()) do
			if v:FindFirstChild("DataFolder") and v.Character:FindFirstChild("FULLY_LOADED_CHAR") and v.Character.BodyEffects:FindFirstChild("Defense") and tonumber(v.DataFolder.Information.Wanted.Value) > 500 and tonumber(v.DataFolder.Information.Wanted.Value) >= highest and v.Character.BodyEffects:FindFirstChild("Armor") then
				target = v 
				highest = tonumber(v.DataFolder.Information.Wanted.Value)
			end
		end
		if not target then serverhop() end
		local e = true
		local penis = 0
		local bagged = false
		local A = false
		spawn(function() pcall(function()
				while bagged == false do
					if target and target.Character and target.Character:FindFirstChild("Christmas_Sock") == nil and penis <= 5 and Plr.Character.Humanoid.Health > 80 then
						if Plr.Backpack:FindFirstChild("[BrownBag]") == nil then
							A = false
							pcall(function()
								repeat wait()
									Plr.character.HumanoidRootPart.CFrame = CFrame.new(-316.034454, 48.2788467, -723.860474, 0.983254969, -0.000297372608, -0.182234928, 0.000218386791, 0.999999881, -0.000453495246, 0.182235047, 0.000406103791, 0.98325491)
									fireclickdetector(game:GetService("Workspace").Ignored.Shop["[BrownBag] - $25"].ClickDetector)
								until Plr.Backpack:FindFirstChild("[BrownBag]") ~= nil
							end)
							A = true
						end
						Plr.Character.Humanoid:EquipTool(Plr.Backpack["[BrownBag]"])
						Plr.Character["[BrownBag]"]:Activate()
						penis = penis + 1
					elseif penis >= 2 or target.Character:FindFirstChild("Christmas_Sock") or not target then
						bagged = true
					end
					wait(3)
				end
			end) end)
		spawn(function()
			while e do wait()
				pcall(function()
					if Plr.Character.Humanoid.Health > 80 then
						if not target.Character.BodyEffects["K.O"].Value then
							if A then
								Plr.Character.HumanoidRootPart.CFrame = CFrame.new(target.Character.UpperTorso.Position + Vector3.new(0, -5, 0))
							end
						else
							Plr.Character.HumanoidRootPart.CFrame = target.Character.UpperTorso.CFrame
						end
					else
						Plr.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
						if Plr.Character:FindFirstChild("[Chicken]") == nil or Plr.Backpack:FindFirstChild("[Chicken]") == nil then
							Plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Chicken] - $7"].Head.CFrame
							wait(0.5)
							fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
						end
						pcall(function()Plr.Character.Humanoid:EquipTool(Plr.Backpack["[Chicken]"])end)
						pcall(function()
							Plr.Character["[Chicken]"]:Activate()
							wait(0.1)
							Plr.Character["[Chicken]"]:Deactivate()
						end)
					end
				end)
			end
		end)
		repeat wait() until bagged
		pcall(function()
			repeat wait()
				repeat wait()
					pcall(function()
						if Plr.Character.Humanoid.Health > 80 then
							pcall(function()Plr.Character.Humanoid:EquipTool(Plr.Backpack["[Knife]"])end)
							wait(0.1)
							Plr.Character["[Knife]"].GripPos = Vector3.new(0, 5, 0)
							Plr.Character["[Knife]"].Handle.Size = Vector3.new(20, 20, 20)
							Plr.Character["[Knife]"]:Activate()
							wait(2)
							Plr.Character["[Knife]"]:Deactivate()
							wait(1)
						end
					end)
				until not target or target.Character.BodyEffects["K.O"].Value or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V)
				repeat wait() 
					if Plr.Character.Humanoid.Health > 80 then
						pcall(function()Plr.Character.Humanoid:EquipTool(Plr.Backpack.Cuff)end)
						pcall(function()
							Plr.Character.Cuff:Activate()
							wait(0.1)
							Plr.Character.Cuff:Deactivate()
						end)
					end
				until not target.Character.BodyEffects["K.O"].Value or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V)
			until tonumber(target.DataFolder.Information.Wanted.Value) == 0 or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.V)
		end)
		e = false
	end
end)

Ruzzel2.Name = "Ruzzel2"
Ruzzel2.Parent = AutofarmsFrame
Ruzzel2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Ruzzel2.BorderSizePixel = 0
Ruzzel2.Position = UDim2.new(0.0150753772, 0, 0.781098962, 0)
Ruzzel2.Size = UDim2.new(0, 116, 0, 56)
Ruzzel2.Font = Enum.Font.SourceSans
Ruzzel2.Text = "Ruzzel's Autofarm V1"
Ruzzel2.TextColor3 = Color3.fromRGB(255, 255, 255)
Ruzzel2.TextScaled = true
Ruzzel2.TextSize = 14.000
Ruzzel2.TextWrapped = true
Ruzzel2.MouseButton1Down:Connect(function()
	-- // Settings
	local lagSensitivity = 10

	-- // Services
	local Players = game:GetService("Players")
	local Workspace = game:GetService("Workspace")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local stats = game:GetService("Stats")
	local RunService = game:GetService("RunService")

	-- // Vars
	local LocalPlayer = Players.LocalPlayer
	local MainEvent = ReplicatedStorage.MainEvent
	local Target = nil

	-- // Metatable vars
	local mt = getrawmetatable(game)
	local backupindex = mt.__index
	setreadonly(mt, false)

	RunService.Stepped:connect(function()
		pcall(function()
			LocalPlayer.Character.Humanoid:ChangeState(11)
		end)
	end)

	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)

	repeat wait() until game:IsLoaded()
	local benchmark = 0
	local enabled = true
	spawn(function()
		wait(10)
		enabled = false
	end)
	while enabled do RunService.Stepped:wait()
		local c = stats.PhysicsReceiveKbps
		if c>benchmark then
			benchmark = c
			print("current benchmark (recived kbps)", benchmark)
		end
	end

	local allWeapons = {
		["[Glock]"] = true,
		["[Silencer]"] = true,
		["[Shotgun]"] = true,
		["[SMG]"] = true,
		["[AR]"] = true,
		["[P90]"] = true,
		["[SilencerAR]"] = true,
		["[Revolver]"] = true,
		["[AK47]"] = true,
		["[TacticalShotgun]"] = true,
		["[DrumGun]"] = true,
		["[AUG]"] = true,
		["[LMG]"] = true,
		["[Double-Barrel SG]"] = true
	}

	-- // Equip Tool
	equipTool = function(Name)
		if (LocalPlayer.Character:FindFirstChild(Name)) then
			return LocalPlayer.Character[Name]
		end

		if (LocalPlayer.Backpack:FindFirstChild(Name)) then
			local tool = LocalPlayer.Backpack[Name]
			LocalPlayer.Character.Humanoid:EquipTool(tool)
			return LocalPlayer.Character:WaitForChild(Name)
		end
	end

	-- // Automation: Get Nearby Cash
	getNearbyCash = function(customWait)
		-- // Vars
		local drops = Workspace.Ignored.Drop:GetChildren()

		-- // Loop
		for i = 1, #drops do
			local v = drops[i]
			if (v.Name == "MoneyDrop" and (LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 20) then
				wait(customWait or 0.7)
				fireclickdetector(v.ClickDetector, 0)
			end
		end
	end

	-- // MT Hook
	mt.__index = newcclosure(function(t, k)
		if (t:IsA("Mouse") and (k == "Hit" or k == "Target")) then
			if (Target) then
				return (k == "Hit" and Target.CFrame or Target)
			end
		end
		return backupindex(t, k)
	end)

	-- // Automation: Get Cashiers
	local yes = false
	while wait() do
		pcall(function()
			local WeaponName
			LocalPlayer.Character.Humanoid:UnequipTools()
			for i, v in next, LocalPlayer.Backpack:GetChildren() do
				if allWeapons[v.Name] then
					WeaponName = v.Name
				end
			end
			-- // Handling
			if (not WeaponName) then
				WeaponName = "Combat"
			end

			-- // Vars
			local saved = LocalPlayer.Character.HumanoidRootPart.CFrame
			local cashiers = Workspace.Cashiers:GetChildren()

			-- // Loop
			local debug = true
			for i = 1, #cashiers do
				local cashier = cashiers[i]
				if game:GetService("Stats").PhysicsReceiveKbps < benchmark - lagSensitivity then
					print("you-are-too-laggy-young-one")
					local oldpos = LocalPlayer.Character.HumanoidRootPart.CFrame
					repeat wait()
						LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,1e4,0)

					until game:GetService("Stats").PhysicsReceiveKbps > benchmark - lagSensitivity
					LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
				end
				if (cashier.Humanoid.Health > 0) then
					debug = false
					-- // Vars
					local cashierCFrame = cashier.Open.CFrame
					local destinationCFrame = cashierCFrame + (cashierCFrame.lookVector * Vector3.new(0, 0, -2))
					Target = cashier.Open

					-- // Punch + Teleport
					while (cashier.Humanoid.Health > 0) do
						wait()
						-- // Equip melee weapon
						local tool = equipTool(WeaponName)

						-- // Auto Reload
						if (tool:FindFirstChild("Ammo") and tool.Ammo.Value == 0) then
							if LocalPlayer.DataFolder.Inventory[tool.Name].Value == "0" then
								local tobuy = tool.Name:gsub(".", function(chr) if chr == "[" or chr == "]" then return "" else return chr:lower() end end).." ammo"
								local loc
								local best, bestprice = math.huge, math.huge
								local sorted = {}
								for ii = 1, 2 do
									for i, v in next, game.Workspace.Ignored.Shop:GetChildren() do
										local Start, End, TrueEnd, count, str, price = nil, nil, nil, 0, v.Name, ""
										str = str:gsub(".", function(Char)
											count = count + 1
											if Char == '[' then
												Start = count
												return '' 
											elseif Char == ']' then
												End = count
												return '' 
											elseif Char == "$" then
												TrueEnd = count
												return ''
											elseif TrueEnd and count>TrueEnd then
												price = price..Char
												return ''
											elseif (not Start) or (End and count>End) then
												return ''
											else
												return Char:lower()
											end
										end)
										price = tonumber(price)
										if string.find(str, tobuy:lower()) then
											local a, e = string.find(str, tobuy:lower())
											local g = #str-(e-a)
											if g<=best then
												if ii == 2 and price<bestprice then
													bestprice = price
													loc = v
												else
													best = g
												end
											end
										end
									end
								end
								repeat wait()
									LocalPlayer.Character.HumanoidRootPart.CFrame = loc.Head.CFrame
									fireclickdetector(loc.ClickDetector)
									LocalPlayer.Character.Humanoid:UnequipTools()
								until tonumber(LocalPlayer.DataFolder.Inventory[tool.Name].Value) >= 400
							else 
								MainEvent:FireServer("Reload", tool, true)
								repeat wait() until LocalPlayer.Character.BodyEffects.Reload.Value == false
							end
						end

						-- //
						LocalPlayer.Character.HumanoidRootPart.CFrame = destinationCFrame

						tool:Activate()
					end
					-- // Get cash
					getNearbyCash(math.abs(benchmark-game:GetService("Stats").PhysicsReceiveKbps)/6)
					wait(math.abs(benchmark-game:GetService("Stats").PhysicsReceiveKbps)/4)
				end
			end

			if debug then
				LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,1e4,0)
				if yes then
					yes = false
					print("no-more-cashiers-available")
				end
			else
				yes = true
			end

			-- // Reset Mouse
			Target = nil
		end)
	end
end)


Ruzzel1.Name = "Ruzzel1"
Ruzzel1.Parent = AutofarmsFrame
Ruzzel1.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Ruzzel1.BorderSizePixel = 0
Ruzzel1.Position = UDim2.new(0.331780523, 0, 0.781098962, 0)
Ruzzel1.Size = UDim2.new(0, 116, 0, 56)
Ruzzel1.Font = Enum.Font.SourceSans
Ruzzel1.Text = "p90 Auotfarm"
Ruzzel1.TextColor3 = Color3.fromRGB(255, 255, 255)
Ruzzel1.TextScaled = true
Ruzzel1.TextSize = 14.000
Ruzzel1.TextWrapped = true
Ruzzel1.MouseButton1Down:Connect(function()
	local plr = game.Players.LocalPlayer
	plr.Character.Humanoid:UnequipTools()
	if not plr.Backpack:FindFirstChild("[P90]") then repeat  wait() plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[P90] - $1000"].Head.CFrame fireclickdetector(Workspace.Ignored.Shop["[P90] - $1000"].ClickDetector) until plr.Backpack:FindFirstChild("[P90]") end
	plr.Character.Humanoid:EquipTool(plr.Backpack["[P90]"])
	local gun = plr.Character:FindFirstChildOfClass("Tool")
	gun.Name = "poggers"

	repeat wait() until plr.Character:FindFirstChild("FULLY_LOADED_CHAR")
	--SEAT DESTRUCTIONNNNN
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Seat") then
			v:Destroy()
		end
	end
	--anti tp anticheat
	function DeleteAntiCheat()
		for i,v in pairs(plr.Character:GetChildren()) do
			if v.ClassName == "Script" and v.Name ~= "Health" then
				v:Destroy()
			end
		end
	end

	plr.CharacterAdded:Connect(function(character)
		repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("FULLY_LOADED_CHAR")
		DeleteAntiCheat()
		wait(1)
		reset = false
	end)
	DeleteAntiCheat()
	--respawn
	local reset = false
	spawn(function()
		while wait() do
			pcall(function()if plr.Character.Humanoid.Health <= 0 then reset = true end end)
		end
	end)
	--antiafk
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	--network ownership
	game:GetService('RunService').Stepped:connect(function()
		pcall(function()plr.Character.Humanoid:ChangeState(11)end)
		setsimulationradius(math.huge)
	end)

	while wait(0.5) do
		for i,v in pairs(game.Workspace.Cashiers:GetChildren()) do
			if v.Humanoid.Health > 0 then
				spawn(function()
					while v.Humanoid.Health > 0 do
						wait()
						pcall(function()plr.Character.HumanoidRootPart.CFrame = v.Head.CFrame * CFrame.new(0.3, -3.7, 3.4)end)
					end
				end)
				repeat
					pcall(function()plr.Character.Humanoid:EquipTool(plr.Backpack.poggers)end)
					wait(0.5)
					if gun.Ammo.Value == 0 then 
						if plr.DataFolder.Inventory["[P90]"].Value == "0" then
							repeat wait()
								plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["120 [P90 Ammo] - $60"].Head.CFrame
								fireclickdetector(Workspace.Ignored.Shop["120 [P90 Ammo] - $60"].ClickDetector)
								plr.Character.Humanoid:UnequipTools()
							until tonumber(plr.DataFolder.Inventory["[P90]"].Value) >= 1000
						else
							game.ReplicatedStorage.MainEvent:FireServer("Reload", gun)
							repeat wait() until gun.Ammo ~= 0
						end
					else
						pcall(function()
							game.ReplicatedStorage.MainEvent:FireServer("UpdateMousePos", v.Head.Position)
							wait()
							gun:Activate()
							repeat wait() until v.Humanoid.Health <= 0 or gun.Ammo.Value == 0
							gun:Deactivate()
							wait(0.1)
						end)
					end
					wait(0.1)
				until v.Humanoid.Health <= 0

				for ii,vv in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
					wait(0.2)
					if vv.Name ~= "MoneyDrop" then continue end
					if (plr.Character.HumanoidRootPart.Position - vv.Position).Magnitude > 25 then continue end
					vv.Name = "Grabbing"
					vv.Anchored = true
					while game.Workspace.Ignored.Drop:FindFirstChild("Grabbing") do
						wait()
						pcall(function()
							plr.character.HumanoidRootPart.CFrame = vv.CFrame
							if not reset then fireclickdetector(vv.ClickDetector) end
						end)
					end
				end
			end
		end
	end
end)

Raycodex.Name = "Raycodex"
Raycodex.Parent = AutofarmsFrame
Raycodex.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Raycodex.BorderSizePixel = 0
Raycodex.Position = UDim2.new(0.668639541, 0, 0.781098962, 0)
Raycodex.Size = UDim2.new(0, 116, 0, 56)
Raycodex.Font = Enum.Font.SourceSans
Raycodex.Text = "Raycodex's AutoDrop"
Raycodex.TextColor3 = Color3.fromRGB(255, 255, 255)
Raycodex.TextScaled = true
Raycodex.TextSize = 14.000
Raycodex.TextWrapped = true
Raycodex.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/Da%20Hood%20Auto%20Cash%20Drop"), true))()
end)

Fist.Name = "Fist"
Fist.Parent = AutofarmsFrame
Fist.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Fist.BorderSizePixel = 0
Fist.Position = UDim2.new(0.0150753772, 0, 0.0423076935, 0)
Fist.Size = UDim2.new(0, 116, 0, 56)
Fist.Font = Enum.Font.SourceSans
Fist.Text = "Fist Autofarm"
Fist.TextColor3 = Color3.fromRGB(255, 255, 255)
Fist.TextScaled = true
Fist.TextSize = 14.000
Fist.TextWrapped = true
Fist.MouseButton1Down:Connect(function()
	local plr = game.Players.LocalPlayer
	repeat wait() until plr.Character:FindFirstChild("FULLY_LOADED_CHAR")
	--SEAT DESTRUCTIONNNNN
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("Seat") then
			v:Destroy()
		end
	end
	--anti tp anticheat
	function DeleteAntiCheat()
		for i,v in pairs(plr.Character:GetChildren()) do
			if v.ClassName == "Script" and v.Name ~= "Health" then
				v:Destroy()
			end
		end
	end

	plr.CharacterAdded:Connect(function(character)
		repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("FULLY_LOADED_CHAR")
		DeleteAntiCheat()
		wait(1)
		reset = false
	end)
	DeleteAntiCheat()
	--respawn
	local reset = false
	spawn(function()
		while wait() do
			pcall(function()if plr.Character.Humanoid.Health <= 0 then reset = true end end)
		end
	end)
	--antiafk
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	--network ownership
	game:GetService('RunService').Stepped:connect(function()
		pcall(function()plr.Character.Humanoid:ChangeState(11)end)
		setsimulationradius(math.huge)
	end)

	while wait(0.5) do
		for i,v in pairs(game.Workspace.Cashiers:GetChildren()) do
			if v.Humanoid.Health > 0 then
				spawn(function()
					while v.Humanoid.Health > 0 do
						wait()
						pcall(function()plr.Character.HumanoidRootPart.CFrame = v.Head.CFrame * CFrame.new(0, -2, 1.5)end)
					end
				end)
				repeat
					pcall(function()plr.Character.Humanoid:EquipTool(plr.Backpack.Combat)end)
					wait(0.1)
					pcall(function()
						plr.Character.Combat:Activate()
						wait(2)
						plr.Character.Combat:Deactivate()
						wait(1)
					end)
				until v.Humanoid.Health <= 0
				wait(0.1)

				for ii,vv in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
					if vv.Name ~= "MoneyDrop" then continue end
					if (plr.Character.HumanoidRootPart.Position - vv.Position).Magnitude > 25 then continue end
					vv.Name = "Grabbing"
					vv.Anchored = true
					while game.Workspace.Ignored.Drop:FindFirstChild("Grabbing") do
						wait()
						pcall(function()
							plr.character.HumanoidRootPart.CFrame = vv.CFrame
							if not reset then fireclickdetector(vv.ClickDetector) end
						end)
					end
				end
			end
		end
	end
end)

ExtrasFrame.Name = "ExtrasFrame"
ExtrasFrame.Parent = FactorX
ExtrasFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ExtrasFrame.BorderSizePixel = 0
ExtrasFrame.Position = UDim2.new(0.265342951, 0, 0.170149252, 0)
ExtrasFrame.Size = UDim2.new(0, 400, 0, 269)
ExtrasFrame.Visible = false

FreeCam.Name = "FreeCam"
FreeCam.Parent = ExtrasFrame
FreeCam.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
FreeCam.BorderSizePixel = 0
FreeCam.Position = UDim2.new(0.0149999997, 0, 0.040892195, 0)
FreeCam.Size = UDim2.new(0, 119, 0, 40)
FreeCam.Font = Enum.Font.SourceSans
FreeCam.Text = "Free Cam [B]"
FreeCam.TextColor3 = Color3.fromRGB(255, 255, 255)
FreeCam.TextScaled = true
FreeCam.TextSize = 14.000
FreeCam.TextWrapped = true
FreeCam.MouseButton1Down:Connect(function()
	ToggleKey = Enum.KeyCode.B
	SprintKey = Enum.KeyCode.Tab

	localPlayer = game.Players.LocalPlayer

	Camera = game.Workspace.CurrentCamera
	Mouse = localPlayer:GetMouse()

	UserInputService = game:GetService("UserInputService")


	movePosition = Vector2.new(0,0)
	moveDirection = Vector3.new(0,0,0)

	targetMovePosition = movePosition

	Y_Sensitivity = 300;
	X_Sensitivity = 300;

	lastRightButtonDown = Vector2.new(0,0)
	rightMouseButtonDown = false

	targetFOV = 70

	sprinting = false;
	sprintingSpeed = 3;

	keysDown = {}

	moveKeys = {
		[Enum.KeyCode.D] = Vector3.new(1,0,0),
		[Enum.KeyCode.A] = Vector3.new(-1,0,0),
		[Enum.KeyCode.S] = Vector3.new(0,0,1),
		[Enum.KeyCode.W] = Vector3.new(0,0,-1),
		[Enum.KeyCode.E] = Vector3.new(0,1,0),
		[Enum.KeyCode.Q] = Vector3.new(0,-1,0)
	}

	Tween = function(a,b,t)
		if t == 1 then
			return b
		else 
			if tonumber(a) then
				return a * (1-t) + (b*t)
			else
				return a:Lerp(b,t);
			end
		end
	end

	ClampVector3 = function(x,min,max)

		return 
			Vector3.new(
				math.clamp(x.X,min.X,max.X),
				math.clamp(x.Y,min.Y,max.Y),
				math.clamp(x.Z,min.Z,max.Z)
			)

	end


	UserInputService.InputChanged:connect(function(inputObject)
		if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
			movePosition = movePosition + Vector2.new(inputObject.Delta.x,inputObject.Delta.y)
		end
	end)

	CalculateMovement = function()
		local newMovement = Vector3.new(0,0,0)
		for i,v in pairs(keysDown) do
			newMovement = newMovement + (moveKeys[i] or Vector3.new(0,0,0))
		end
		return newMovement
	end

	Round = function(num, numDecimalPlaces)
		return math.floor((num/numDecimalPlaces) + .5)*numDecimalPlaces
	end

	Input = function(input,gameProcessed)
		if moveKeys[input.KeyCode] then
			if input.UserInputState == Enum.UserInputState.Begin then
				keysDown[input.KeyCode] = true
			elseif input.UserInputState == Enum.UserInputState.End then
				keysDown[input.KeyCode] = nil
			end
		else
			if input.UserInputState == Enum.UserInputState.Begin then
				print(input.KeyCode)
				if input.UserInputType == Enum.UserInputType.MouseButton2 then
					rightMouseButtonDown = true
					lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
					UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
				elseif input.KeyCode == Enum.KeyCode.Z then
					targetFOV = 20
				elseif input.KeyCode == SprintKey then
					sprinting = true
				end
			else
				if input.UserInputType == Enum.UserInputType.MouseButton2 then
					rightMouseButtonDown = false
					UserInputService.MouseBehavior = Enum.MouseBehavior.Default
				elseif input.KeyCode == Enum.KeyCode.Z then
					targetFOV = 70
				elseif input.KeyCode == SprintKey then
					sprinting = false
				end
			end
		end
	end

	Mouse.WheelForward:connect(function()
		Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(0,0,-5)
	end)

	Mouse.WheelBackward:connect(function()
		Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(-0,0,5)
	end)

	UserInputService.InputBegan:connect(Input)
	UserInputService.InputEnded:connect(Input)

	local Toggled = false
	game:GetService("UserInputService").InputBegan:connect(function(inputObject)
		if inputObject.KeyCode == ToggleKey then
			Toggled = not Toggled
			if Toggled then
				Camera.CameraType = Enum.CameraType.Scriptable
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
			else
				game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
				game.Workspace.CurrentCamera.CameraType = "Custom"
			end
		end
	end)


	game:GetService("RunService").RenderStepped:Connect(function()
		if Toggled then
			local mouseTarget = Mouse.Hit

			targetMovePosition = movePosition
			Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p) * CFrame.fromEulerAnglesYXZ(-targetMovePosition.Y/Y_Sensitivity ,-targetMovePosition.X/X_Sensitivity, 0) * CFrame.new(CalculateMovement() * ((({[true]=sprintingSpeed})[sprinting]) or .5) )
			Camera.FieldOfView = Tween(Camera.FieldOfView,targetFOV,.5)
			if rightMouseButtonDown then
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
				movePosition = movePosition - (lastRightButtonDown - Vector2.new(Mouse.X,Mouse.Y))
				lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
			end
		end
	end)
end)

AntiStomp.Name = "AntiStomp"
AntiStomp.Parent = ExtrasFrame
AntiStomp.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AntiStomp.BorderSizePixel = 0
AntiStomp.Position = UDim2.new(0.345493466, 0, 0.040892195, 0)
AntiStomp.Size = UDim2.new(0, 119, 0, 40)
AntiStomp.Font = Enum.Font.SourceSans
AntiStomp.Text = "Anti-Stomp"
AntiStomp.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiStomp.TextScaled = true
AntiStomp.TextSize = 14.000
AntiStomp.TextWrapped = true
AntiStomp.MouseButton1Down:Connect(function()
	pcall(function() if tostring(game.PlaceId) == "2788229376" then local corepackages = game:GetService"CorePackages" local localplayer = game:GetService"Players".LocalPlayer local run = game:GetService"RunService" run:BindToRenderStep("rrrrrrrrrrr",2000,function() pcall(function() if localplayer.Character.Humanoid.Health <= 30 then localplayer.Character.Humanoid:UnequipTools() localplayer.Character.Humanoid:Destroy() workspace.CurrentCamera.CameraSubject = localplayer.Character wait() local prt = Instance.new("Model", corepackages); Instance.new("Part", prt).Name="Torso"; Instance.new("Part", prt).Name="Head"; Instance.new("Humanoid", prt).Name="Humanoid"; localplayer.Character=prt end end) pcall(function() if localplayer.Character.Humanoid.FloorMaterial == "Plastic" then ReplicatedStorage:FireServer("Stomp") end end) end) loadstring(game:HttpGet("https://pastebin.com/raw/MQ3wc7Zq", true))() end end)
end)

AntiPepper.Name = "AntiPepper"
AntiPepper.Parent = ExtrasFrame
AntiPepper.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AntiPepper.BorderSizePixel = 0
AntiPepper.Position = UDim2.new(0.701907933, 0, 0.040892195, 0)
AntiPepper.Size = UDim2.new(0, 119, 0, 40)
AntiPepper.Font = Enum.Font.SourceSans
AntiPepper.Text = "Anti-Pepper"
AntiPepper.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiPepper.TextScaled = true
AntiPepper.TextSize = 14.000
AntiPepper.TextWrapped = true
AntiPepper.MouseButton1Down:Connect(function()
	game:GetService("StarterGui").MainScreenGui.PepperSpray:Destroy()
	game:GetService("Lighting").PepperSprayBlur:Destroy()
end)

AntiBan.Name = "AntiBan"
AntiBan.Parent = ExtrasFrame
AntiBan.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AntiBan.BorderSizePixel = 0
AntiBan.Position = UDim2.new(0.0149999997, 0, 0.305363774, 0)
AntiBan.Size = UDim2.new(0, 119, 0, 40)
AntiBan.Font = Enum.Font.SourceSans
AntiBan.Text = "Anti-Ban"
AntiBan.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiBan.TextScaled = true
AntiBan.TextSize = 14.000
AntiBan.TextWrapped = true
AntiBan.MouseButton1Down:Connect(function()
	local Players = game:GetService("Players") -- you should use GetService over game.Players!
	for _, player in pairs(Players:GetPlayers()) do
		-- this code will run for all players
		if player.UserId == 163721789 or player.UserId == 15427717 or player.UserId == 8195210 or player.UserId == 28357488 or player.UserId == 17260230 or player.UserId == 201454243 or player.UserId == 179520654 then  
			wait(1)
			local plr = game:GetService('Players').LocalPlayer
			plr:Kick('KICKED TO AVOID ADMIN-BAN Thanks to factor x! (Admin in server) =)')

		else
			print('Safe')
		end
	end


	local AdminList = {
		163721789, -- JokeTheFool  
		15427717,  -- Sherosama      
		8195210,   -- Benoxa
		822999,    -- AStrongMuscle  
		28357488,  -- UziGarage    
		17260230,  -- NikoSenpai 
		201454243, -- Papa_Mbaye 
		1318185732, -- tuhklia 
		201454243,  -- Papa_Mbaye

	}

	game.Players.PlayerAdded:Connect(function(player)
		for i, v in pairs(AdminList) do
			if player.UserId == v then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Anti-Ban";
					Text = "An admin has joined.. kicking!";
					Duration = 20;
				})
				wait(2)
				local plr = game:GetService('Players').LocalPlayer
				plr:Kick('KICKED TO AVOID ADMIN-BAN (Admin joined) =)')

			end
		end
	end)
end)

KillAll.Name = "KillAll"
KillAll.Parent = ExtrasFrame
KillAll.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
KillAll.BorderSizePixel = 0
KillAll.Position = UDim2.new(0.345493466, 0, 0.305363774, 0)
KillAll.Size = UDim2.new(0, 119, 0, 40)
KillAll.Font = Enum.Font.SourceSans
KillAll.Text = "Kill All"
KillAll.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAll.TextScaled = true
KillAll.TextSize = 14.000
KillAll.TextWrapped = true
KillAll.MouseButton1Down:Connect(function()
	local plr = game.Players.LocalPlayer
	local lastpos = plr.Character.HumanoidRootPart.CFrame
	local playercount; local greadecount; local pp = {}
	local cock = true
	for I in pairs(game.Players:GetPlayers()) do
		playercount = I
	end

	game:GetService('RunService').Stepped:connect(function()
		setsimulationradius(math.huge)
	end)

	spawn(function()
		while cock do wait()
			for i, v in pairs(game.Workspace.Ignored:GetChildren()) do
				if v.Name == "Handle" then
					for index in pairs(pp) do
						table.insert(pp, v)
					end
					v.Name = tostring(i)
				end
			end
		end
	end)

	repeat wait()
		plr.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Grenade] - $700"].Head.CFrame
		fireclickdetector(game.Workspace.Ignored.Shop["[Grenade] - $700"].ClickDetector)
		for ii, vv in pairs(plr.Backpack:GetChildren()) do
			grenadecount = ii
		end
	until grenadecount >= playercount
	plr.Character.HumanoidRootPart.CFrame = lastpos

	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		spawn(function()
			if v.Name == "[Grenade]" then
				v.Parent = plr.Character; v:Activate(); wait(0.1); v:Deactivate(); wait(0.1); v:Activate()
			end
		end)
	end

	for i, v in pairs(game.Players:GetPlayers()) do
		if v ~= plr then
			local mover = Instance.new("BodyPosition", pp[1])
			mover.P = 1e5
			table.remove(pp, 1)
			spawn(function()
				while wait() do
					mover.Position = v.Character.HumanoidRootPart.Position
				end
			end)
		end
	end
	cock = false
end)

InfCash.Name = "InfCash"
InfCash.Parent = ExtrasFrame
InfCash.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
InfCash.BorderSizePixel = 0
InfCash.Position = UDim2.new(0.701907933, 0, 0.305363774, 0)
InfCash.Size = UDim2.new(0, 119, 0, 40)
InfCash.Font = Enum.Font.SourceSans
InfCash.Text = "Inf Cash"
InfCash.TextColor3 = Color3.fromRGB(255, 255, 255)
InfCash.TextScaled = true
InfCash.TextSize = 14.000
InfCash.TextWrapped = true
InfCash.MouseButton1Down:Connect(function()
	local curency = 999999999999999999999999999999111112
	game:GetService("Players").LocalPlayer.DataFolder.Currency.Value = curency
end)

SplitGrande.Name = "SplitGrande"
SplitGrande.Parent = ExtrasFrame
SplitGrande.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SplitGrande.BorderSizePixel = 0
SplitGrande.Position = UDim2.new(0.0149999997, 0, 0.550944507, 0)
SplitGrande.Size = UDim2.new(0, 119, 0, 40)
SplitGrande.Font = Enum.Font.SourceSans
SplitGrande.Text = "Split Grande"
SplitGrande.TextColor3 = Color3.fromRGB(255, 255, 255)
SplitGrande.TextScaled = true
SplitGrande.TextSize = 14.000
SplitGrande.TextWrapped = true
SplitGrande.MouseButton1Down:Connect(function()

	local LocalPlayer = game:GetService("Players").LocalPlayer
	local char = LocalPlayer.Character
	local Ignored = game.workspace.Ignored
	local backpack = LocalPlayer.Backpack
	local x = 0
	local Grenade = "[Grenade]"
	local DroppedGrenade = "Handle"
	for i, v in pairs(backpack:GetChildren()) do
		if v.Name == Grenade then
			v.Parent = char
		end
	end
	for i, v in pairs(char:GetChildren()) do
		if v.Name == Grenade then
			v:Activate()
			v:Activate()
		end
	end
	wait (1)
	for i, v in pairs(Ignored:GetChildren()) do
		if v.Name == DroppedGrenade then
			x = x + 1
			v.Name = DroppedGrenade..x
		end
	end
	wait(1)
	x = 0
	for i, player in pairs(game.Players:GetPlayers()) do
		x = x + 1
		local launch = Ignored:WaitForChild(DroppedGrenade..x)
		if LocalPlayer.Name == player.Name then
			do
				launch.Position = Vector3.new(0, 1000, 0)
			end
		else
			do
				game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge) * math.huge
				game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge, math.huge) * math.huge
				launch.Position = player.Character.HumanoidRootPart.Position
				wait (0.02)
			end

		end
	end
end)

local airstrike = false
Airstrike.Name = "Airstrike"
Airstrike.Parent = ExtrasFrame
Airstrike.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Airstrike.BorderSizePixel = 0
Airstrike.Position = UDim2.new(0.345493466, 0, 0.550944507, 0)
Airstrike.Size = UDim2.new(0, 119, 0, 40)
Airstrike.Font = Enum.Font.SourceSans
Airstrike.Text = "Airstrike"
Airstrike.TextColor3 = Color3.fromRGB(255, 255, 255)
Airstrike.TextScaled = true
Airstrike.TextSize = 14.000
Airstrike.TextWrapped = true
Airstrike.MouseButton1Down:Connect(function()
	local lplayer = game.Players.LocalPlayer
	if airstrike == true then
		airstrike = false
		
		for i, v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do
			if v:isA("Tool") then
				local a = Instance.new("SelectionBox", v.Handle)
				a.Adornee = v.Handle
				v.GripPos = Vector3.new(0, 0, 0)
				lplayer.Character.Humanoid:UnequipTools()
			end
		end
	else 
		airstrike = true
		
		for i, v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do
			if v:isA("Tool") then
				local a = Instance.new("SelectionBox", v.Handle)
				a.Adornee = v.Handle
				v.GripPos = Vector3.new(-1, -1, -1)
				lplayer.Character.Humanoid:UnequipTools()
			end
		end
	end
end)

AnmationGui.Name = "AnmationGui"
AnmationGui.Parent = ExtrasFrame
AnmationGui.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AnmationGui.BorderSizePixel = 0
AnmationGui.Position = UDim2.new(0.701907933, 0, 0.550944507, 0)
AnmationGui.Size = UDim2.new(0, 119, 0, 40)
AnmationGui.Font = Enum.Font.SourceSans
AnmationGui.Text = "Anmation Gui"
AnmationGui.TextColor3 = Color3.fromRGB(255, 255, 255)
AnmationGui.TextScaled = true
AnmationGui.TextSize = 14.000
AnmationGui.TextWrapped = true
AnmationGui.MouseButton1Down:Connect(function()
	local AnimationChanger = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local TopBar = Instance.new("Frame")
	local Close = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local NormalTab = Instance.new("Frame")
	local A_Astronaut = Instance.new("TextButton")
	local A_Bubbly = Instance.new("TextButton")
	local A_Cartoony = Instance.new("TextButton")
	local A_Elder = Instance.new("TextButton")
	local A_Knight = Instance.new("TextButton")
	local A_Levitation = Instance.new("TextButton")
	local A_Mage = Instance.new("TextButton")
	local A_Ninja = Instance.new("TextButton")
	local A_Pirate = Instance.new("TextButton")
	local A_Robot = Instance.new("TextButton")
	local A_Stylish = Instance.new("TextButton")
	local A_SuperHero = Instance.new("TextButton")
	local A_Toy = Instance.new("TextButton")
	local A_Vampire = Instance.new("TextButton")
	local A_Werewolf = Instance.new("TextButton")
	local A_Zombie = Instance.new("TextButton")
	local Category = Instance.new("TextLabel")
	local SpecialTab = Instance.new("Frame")
	local A_Patrol = Instance.new("TextButton")
	local A_Confident = Instance.new("TextButton")
	local A_Popstar = Instance.new("TextButton")
	local A_Cowboy = Instance.new("TextButton")
	local A_Ghost = Instance.new("TextButton")
	local A_Sneaky = Instance.new("TextButton")
	local A_Princess = Instance.new("TextButton")
	local Category_2 = Instance.new("TextLabel")
	local OtherTab = Instance.new("Frame")
	local Category_3 = Instance.new("TextLabel")
	local A_None = Instance.new("TextButton")
	local A_Anthro = Instance.new("TextButton")
	local Animate = game.Players.LocalPlayer.Character.Animate

	AnimationChanger.Name = "AnimationChanger"
	AnimationChanger.Parent = game:WaitForChild("CoreGui")
	AnimationChanger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = AnimationChanger
	Main.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.421999991, 0, -1, 0)
	Main.Size = UDim2.new(0, 300, 0, 250)
	Main.Active = true
	Main.Draggable = true

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(0, 300, 0, 30)

	Close.Name = "Close"
	Close.Parent = TopBar
	Close.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.899999976, 0, 0, 0)
	Close.Size = UDim2.new(0, 30, 0, 30)
	Close.Font = Enum.Font.SciFi
	Close.Text = "x"
	Close.TextColor3 = Color3.new(1, 0, 0.0156863)
	Close.TextSize = 20
	Close.MouseButton1Click:Connect(function()
		wait(0.3)
		Main:TweenPosition(UDim2.new(0.421999991, 0, -1.28400004, 0))
		wait(3)
		AnimationChanger:Destroy()
	end)

	TextLabel.Parent = TopBar
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 0, 0.600000024, 0)
	TextLabel.Size = UDim2.new(0, 270, 0, 10)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "Made by Nyser#4623"
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextSize = 15

	TextLabel_2.Parent = TopBar
	TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_2.BackgroundTransparency = 1
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0, 0, -0.0266667679, 0)
	TextLabel_2.Size = UDim2.new(0, 270, 0, 20)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "Animation Changer"
	TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_2.TextSize = 20

	NormalTab.Name = "NormalTab"
	NormalTab.Parent = Main
	NormalTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
	NormalTab.BackgroundTransparency = 1
	NormalTab.BorderSizePixel = 0
	NormalTab.Position = UDim2.new(0.5, 0, 0.119999997, 0)
	NormalTab.Size = UDim2.new(0, 150, 0, 500)

	A_Astronaut.Name = "A_Astronaut"
	A_Astronaut.Parent = NormalTab
	A_Astronaut.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Astronaut.BorderSizePixel = 0
	A_Astronaut.Position = UDim2.new(0, 0, 0.815764725, 0)
	A_Astronaut.Size = UDim2.new(0, 150, 0, 30)
	A_Astronaut.Font = Enum.Font.SciFi
	A_Astronaut.Text = "Astronaut"
	A_Astronaut.TextColor3 = Color3.new(1, 1, 1)
	A_Astronaut.TextSize = 20
	A_Astronaut.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Bubbly.Name = "A_Bubbly"
	A_Bubbly.Parent = NormalTab
	A_Bubbly.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Bubbly.BorderSizePixel = 0
	A_Bubbly.Position = UDim2.new(0, 0, 0.349019617, 0)
	A_Bubbly.Size = UDim2.new(0, 150, 0, 30)
	A_Bubbly.Font = Enum.Font.SciFi
	A_Bubbly.Text = "Bubbly"
	A_Bubbly.TextColor3 = Color3.new(1, 1, 1)
	A_Bubbly.TextSize = 20
	A_Bubbly.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
		Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
		Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Cartoony.Name = "A_Cartoony"
	A_Cartoony.Parent = NormalTab
	A_Cartoony.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Cartoony.BorderSizePixel = 0
	A_Cartoony.Position = UDim2.new(0, 0, 0.407272667, 0)
	A_Cartoony.Size = UDim2.new(0, 150, 0, 30)
	A_Cartoony.Font = Enum.Font.SciFi
	A_Cartoony.Text = "Cartoony"
	A_Cartoony.TextColor3 = Color3.new(1, 1, 1)
	A_Cartoony.TextSize = 20
	A_Cartoony.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Elder.Name = "A_Elder"
	A_Elder.Parent = NormalTab
	A_Elder.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Elder.BorderSizePixel = 0
	A_Elder.Position = UDim2.new(6.51925802e-09, 0, 0.636310041, 0)
	A_Elder.Size = UDim2.new(0, 150, 0, 30)
	A_Elder.Font = Enum.Font.SciFi
	A_Elder.Text = "Elder"
	A_Elder.TextColor3 = Color3.new(1, 1, 1)
	A_Elder.TextSize = 20
	A_Elder.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Knight.Name = "A_Knight"
	A_Knight.Parent = NormalTab
	A_Knight.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Knight.BorderSizePixel = 0
	A_Knight.Position = UDim2.new(0, 0, 0.52352941, 0)
	A_Knight.Size = UDim2.new(0, 150, 0, 30)
	A_Knight.Font = Enum.Font.SciFi
	A_Knight.Text = "Knight"
	A_Knight.TextColor3 = Color3.new(1, 1, 1)
	A_Knight.TextSize = 20
	A_Knight.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Levitation.Name = "A_Levitation"
	A_Levitation.Parent = NormalTab
	A_Levitation.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Levitation.BorderSizePixel = 0
	A_Levitation.Position = UDim2.new(0, 0, 0.115472436, 0)
	A_Levitation.Size = UDim2.new(0, 150, 0, 30)
	A_Levitation.Font = Enum.Font.SciFi
	A_Levitation.Text = "Levitation"
	A_Levitation.TextColor3 = Color3.new(1, 1, 1)
	A_Levitation.TextSize = 20
	A_Levitation.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Mage.Name = "A_Mage"
	A_Mage.Parent = NormalTab
	A_Mage.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Mage.BorderSizePixel = 0
	A_Mage.Position = UDim2.new(0, 0, 0.696203232, 0)
	A_Mage.Size = UDim2.new(0, 150, 0, 30)
	A_Mage.Font = Enum.Font.SciFi
	A_Mage.Text = "Mage"
	A_Mage.TextColor3 = Color3.new(1, 1, 1)
	A_Mage.TextSize = 20
	A_Mage.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Ninja.Name = "A_Ninja"
	A_Ninja.Parent = NormalTab
	A_Ninja.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Ninja.BorderSizePixel = 0
	A_Ninja.Position = UDim2.new(0, 0, 0.0597896464, 0)
	A_Ninja.Size = UDim2.new(0, 150, 0, 30)
	A_Ninja.Font = Enum.Font.SciFi
	A_Ninja.Text = "Ninja"
	A_Ninja.TextColor3 = Color3.new(1, 1, 1)
	A_Ninja.TextSize = 20
	A_Ninja.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Pirate.Name = "A_Pirate"
	A_Pirate.Parent = NormalTab
	A_Pirate.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Pirate.BorderSizePixel = 0
	A_Pirate.Position = UDim2.new(-0.000333309174, 0, 0.874588311, 0)
	A_Pirate.Size = UDim2.new(0, 150, 0, 30)
	A_Pirate.Font = Enum.Font.SciFi
	A_Pirate.Text = "Pirate"
	A_Pirate.TextColor3 = Color3.new(1, 1, 1)
	A_Pirate.TextSize = 20
	A_Pirate.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Robot.Name = "A_Robot"
	A_Robot.Parent = NormalTab
	A_Robot.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Robot.BorderSizePixel = 0
	A_Robot.Position = UDim2.new(0, 0, 0.291479498, 0)
	A_Robot.Size = UDim2.new(0, 150, 0, 30)
	A_Robot.Font = Enum.Font.SciFi
	A_Robot.Text = "Robot"
	A_Robot.TextColor3 = Color3.new(1, 1, 1)
	A_Robot.TextSize = 20
	A_Robot.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Stylish.Name = "A_Stylish"
	A_Stylish.Parent = NormalTab
	A_Stylish.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Stylish.BorderSizePixel = 0
	A_Stylish.Position = UDim2.new(0, 0, 0.232816339, 0)
	A_Stylish.Size = UDim2.new(0, 150, 0, 30)
	A_Stylish.Font = Enum.Font.SciFi
	A_Stylish.Text = "Stylish"
	A_Stylish.TextColor3 = Color3.new(1, 1, 1)
	A_Stylish.TextSize = 20
	A_Stylish.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_SuperHero.Name = "A_SuperHero"
	A_SuperHero.Parent = NormalTab
	A_SuperHero.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_SuperHero.BorderSizePixel = 0
	A_SuperHero.Position = UDim2.new(0, 0, 0.464919746, 0)
	A_SuperHero.Size = UDim2.new(0, 150, 0, 30)
	A_SuperHero.Font = Enum.Font.SciFi
	A_SuperHero.Text = "SuperHero"
	A_SuperHero.TextColor3 = Color3.new(1, 1, 1)
	A_SuperHero.TextSize = 20
	A_SuperHero.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Toy.Name = "A_Toy"
	A_Toy.Parent = NormalTab
	A_Toy.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Toy.BorderSizePixel = 0
	A_Toy.Position = UDim2.new(6.51925802e-09, 0, 0.756028414, 0)
	A_Toy.Size = UDim2.new(0, 150, 0, 30)
	A_Toy.Font = Enum.Font.SciFi
	A_Toy.Text = "Toy"
	A_Toy.TextColor3 = Color3.new(1, 1, 1)
	A_Toy.TextSize = 20
	A_Toy.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Vampire.Name = "A_Vampire"
	A_Vampire.Parent = NormalTab
	A_Vampire.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Vampire.BorderSizePixel = 0
	A_Vampire.Position = UDim2.new(0, 0, 0.934021354, 0)
	A_Vampire.Size = UDim2.new(0, 150, 0, 30)
	A_Vampire.Font = Enum.Font.SciFi
	A_Vampire.Text = "Vampire"
	A_Vampire.TextColor3 = Color3.new(1, 1, 1)
	A_Vampire.TextSize = 20
	A_Vampire.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Werewolf.Name = "A_Werewolf"
	A_Werewolf.Parent = NormalTab
	A_Werewolf.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Werewolf.BorderSizePixel = 0
	A_Werewolf.Position = UDim2.new(-0.000333368778, 0, 0.174509808, 0)
	A_Werewolf.Size = UDim2.new(0, 150, 0, 30)
	A_Werewolf.Font = Enum.Font.SciFi
	A_Werewolf.Text = "Werewolf"
	A_Werewolf.TextColor3 = Color3.new(1, 1, 1)
	A_Werewolf.TextSize = 20
	A_Werewolf.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Zombie.Name = "A_Zombie"
	A_Zombie.Parent = NormalTab
	A_Zombie.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Zombie.BorderSizePixel = 0
	A_Zombie.Position = UDim2.new(-1.1920929e-07, 0, 0.582352936, 0)
	A_Zombie.Size = UDim2.new(0, 150, 0, 30)
	A_Zombie.Font = Enum.Font.SciFi
	A_Zombie.Text = "Zombie"
	A_Zombie.TextColor3 = Color3.new(1, 1, 1)
	A_Zombie.TextSize = 20
	A_Zombie.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	Category.Name = "Category"
	Category.Parent = NormalTab
	Category.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Category.BorderSizePixel = 0
	Category.Size = UDim2.new(0, 150, 0, 30)
	Category.Text = "Normal"
	Category.TextColor3 = Color3.new(0, 0.835294, 1)
	Category.TextSize = 14

	SpecialTab.Name = "SpecialTab"
	SpecialTab.Parent = Main
	SpecialTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
	SpecialTab.BackgroundTransparency = 1
	SpecialTab.BorderSizePixel = 0
	SpecialTab.Position = UDim2.new(0, 0, 0.119999997, 0)
	SpecialTab.Size = UDim2.new(0, 150, 0, 230)

	A_Patrol.Name = "A_Patrol"
	A_Patrol.Parent = SpecialTab
	A_Patrol.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Patrol.BorderSizePixel = 0
	A_Patrol.Position = UDim2.new(0, 0, 0.259960413, 0)
	A_Patrol.Size = UDim2.new(0, 150, 0, 30)
	A_Patrol.Font = Enum.Font.SciFi
	A_Patrol.Text = "Patrol"
	A_Patrol.TextColor3 = Color3.new(1, 1, 1)
	A_Patrol.TextSize = 20
	A_Patrol.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Confident.Name = "A_Confident"
	A_Confident.Parent = SpecialTab
	A_Confident.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Confident.BorderSizePixel = 0
	A_Confident.Position = UDim2.new(0, 0, 0.389248967, 0)
	A_Confident.Size = UDim2.new(0, 150, 0, 30)
	A_Confident.Font = Enum.Font.SciFi
	A_Confident.Text = "Confident"
	A_Confident.TextColor3 = Color3.new(1, 1, 1)
	A_Confident.TextSize = 20
	A_Confident.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Popstar.Name = "A_Popstar"
	A_Popstar.Parent = SpecialTab
	A_Popstar.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Popstar.BorderSizePixel = 0
	A_Popstar.Position = UDim2.new(0, 0, 0.130671918, 0)
	A_Popstar.Size = UDim2.new(0, 150, 0, 30)
	A_Popstar.Font = Enum.Font.SciFi
	A_Popstar.Text = "Popstar"
	A_Popstar.TextColor3 = Color3.new(1, 1, 1)
	A_Popstar.TextSize = 20
	A_Popstar.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Cowboy.Name = "A_Cowboy"
	A_Cowboy.Parent = SpecialTab
	A_Cowboy.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Cowboy.BorderSizePixel = 0
	A_Cowboy.Position = UDim2.new(0, 0, 0.772964239, 0)
	A_Cowboy.Size = UDim2.new(0, 150, 0, 30)
	A_Cowboy.Font = Enum.Font.SciFi
	A_Cowboy.Text = "Cowboy"
	A_Cowboy.TextColor3 = Color3.new(1, 1, 1)
	A_Cowboy.TextSize = 20
	A_Cowboy.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Ghost.Name = "A_Ghost"
	A_Ghost.Parent = SpecialTab
	A_Ghost.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Ghost.BorderSizePixel = 0
	A_Ghost.Position = UDim2.new(0, 0, 0.900632322, 0)
	A_Ghost.Size = UDim2.new(0, 150, 0, 30)
	A_Ghost.Font = Enum.Font.SciFi
	A_Ghost.Text = "Ghost"
	A_Ghost.TextColor3 = Color3.new(1, 1, 1)
	A_Ghost.TextSize = 20
	A_Ghost.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
		Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
		Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Sneaky.Name = "A_Sneaky"
	A_Sneaky.Parent = SpecialTab
	A_Sneaky.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Sneaky.BorderSizePixel = 0
	A_Sneaky.Position = UDim2.new(0, 0, 0.517628431, 0)
	A_Sneaky.Size = UDim2.new(0, 150, 0, 30)
	A_Sneaky.Font = Enum.Font.SciFi
	A_Sneaky.Text = "Sneaky"
	A_Sneaky.TextColor3 = Color3.new(1, 1, 1)
	A_Sneaky.TextSize = 20
	A_Sneaky.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Princess.Name = "A_Princess"
	A_Princess.Parent = SpecialTab
	A_Princess.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Princess.BorderSizePixel = 0
	A_Princess.Position = UDim2.new(0, 0, 0.645296335, 0)
	A_Princess.Size = UDim2.new(0, 150, 0, 30)
	A_Princess.Font = Enum.Font.SciFi
	A_Princess.Text = "Princess"
	A_Princess.TextColor3 = Color3.new(1, 1, 1)
	A_Princess.TextSize = 20
	A_Princess.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	Category_2.Name = "Category"
	Category_2.Parent = SpecialTab
	Category_2.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Category_2.BorderSizePixel = 0
	Category_2.Size = UDim2.new(0, 150, 0, 30)
	Category_2.Text = "Special"
	Category_2.TextColor3 = Color3.new(0, 0.835294, 1)
	Category_2.TextSize = 14

	OtherTab.Name = "OtherTab"
	OtherTab.Parent = Main
	OtherTab.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
	OtherTab.BackgroundTransparency = 1
	OtherTab.BorderSizePixel = 0
	OtherTab.Position = UDim2.new(0, 0, 1.06800008, 0)
	OtherTab.Size = UDim2.new(0, 150, 0, 220)

	Category_3.Name = "Category"
	Category_3.Parent = OtherTab
	Category_3.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Category_3.BorderSizePixel = 0
	Category_3.Size = UDim2.new(0, 150, 0, 30)
	Category_3.Text = "Other"
	Category_3.TextColor3 = Color3.new(0, 0.835294, 1)
	Category_3.TextSize = 14

	A_None.Name = "A_None"
	A_None.Parent = OtherTab
	A_None.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_None.BorderSizePixel = 0
	A_None.Position = UDim2.new(0, 0, 0.134545445, 0)
	A_None.Size = UDim2.new(0, 150, 0, 30)
	A_None.Font = Enum.Font.SciFi
	A_None.Text = "None"
	A_None.TextColor3 = Color3.new(1, 1, 1)
	A_None.TextSize = 20
	A_None.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=0"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=0"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=0"
		Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=0"
		Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=0"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	A_Anthro.Name = "A_Anthro"
	A_Anthro.Parent = OtherTab
	A_Anthro.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
	A_Anthro.BorderSizePixel = 0
	A_Anthro.Position = UDim2.new(0, 0, 0.269090891, 0)
	A_Anthro.Size = UDim2.new(0, 150, 0, 30)
	A_Anthro.Font = Enum.Font.SciFi
	A_Anthro.Text = "Anthro (Default)"
	A_Anthro.TextColor3 = Color3.new(1, 1, 1)
	A_Anthro.TextSize = 20
	A_Anthro.MouseButton1Click:Connect(function()
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
	end)

	wait(1)
	Main:TweenPosition(UDim2.new(0.421999991, 0, 0.28400004, 0))
end)

Esp.Name = "Esp"
Esp.Parent = ExtrasFrame
Esp.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Esp.BorderSizePixel = 0
Esp.Position = UDim2.new(0.0149999997, 0, 0.815416098, 0)
Esp.Size = UDim2.new(0, 119, 0, 40)
Esp.Font = Enum.Font.SourceSans
Esp.Text = "Esp"
Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
Esp.TextScaled = true
Esp.TextSize = 14.000
Esp.TextWrapped = true
Esp.MouseButton1Down:Connect(function()
	local custom_theme = {} --soon

	local function CreateInstance(cls,props)
		local inst = Instance.new(cls)
		for i,v in pairs(props) do
			inst[i] = v
		end
		return inst
	end

	local age1 = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='age1', Parent=game.CoreGui})
	local p_visuals = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 50, 0, 60),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 254),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'p_visuals',Parent = age1})
	local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 1), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = p_visuals })
	local title1 = CreateInstance('TextLabel',{Font=Enum.Font.GothamBlack,FontSize=Enum.FontSize.Size18,Text='Player visuals',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1',Parent = p_visuals})
	local b_b = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Bounding box',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_b',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_b})
	local b_f = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill alpha',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f})
	local b_rt = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Render team',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_rt',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_rt})
	local b_tc = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Use TeamColor',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_tc',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_tc})
	local b_sn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show name',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sn',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sn})
	local b_sd = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show distance',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sd',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sd})
	local b_sh = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Show health',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_sh',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='OFF',TextColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_sh})
	local b_ht = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Health type',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ht',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Text',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_ht})
	local b_f_t = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Fill transparency',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_f_t',Parent = p_visuals})
	local v = CreateInstance('TextLabel',{Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,Text='1',TextColor3=Color3.new(0, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 18, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='v',Parent = b_f_t})
	local title1_2 = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansBold,FontSize=Enum.FontSize.Size18,Text='ESP',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title1_2',Parent = p_visuals})
	local b_ct = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Team color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ct',Parent = p_visuals})
	local ct_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_b',Parent = b_ct})
	local ct_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_g',Parent = b_ct})
	local ct_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ct_r',Parent = b_ct})
	local b_ce = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size18,Text='Enemy color',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=16,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0, 0.498039),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, -2, 0, 18),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='b_ce',Parent = p_visuals})
	local ce_b = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 0, 1), PlaceholderText='', PlaceholderColor3=Color3.new(0, 0, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_b',Parent = b_ce})
	local ce_g = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(0, 1, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0, 1, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -29, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_g',Parent = b_ce})
	local ce_r = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.Gotham,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(1, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(1, 0),BackgroundColor3=Color3.new(0.121569, 0.12549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0, 0.498039),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, -56, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 27, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='ce_r',Parent = b_ce})
	local watermark = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, -34),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark',Parent = age1})
	local watermark1 = CreateInstance('TextLabel',{Font=Enum.Font.Code,FontSize=Enum.FontSize.Size14,Text='lamehaxx v0.01',TextColor3=Color3.new(1, 0, 0.498039),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, -2, 0, -2),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=20,Name='watermark1',Parent = watermark})
	p_visuals.Draggable = true

	title1.LayoutOrder = 0 title1_2.LayoutOrder = 1
	b_b.LayoutOrder = 1 b_f.LayoutOrder = 2 b_f_t.LayoutOrder = 3 b_sd.LayoutOrder = 4 b_sn.LayoutOrder = 5 b_sh.LayoutOrder = 6 b_ht.LayoutOrder = 7 b_rt.LayoutOrder = 8 b_tc.LayoutOrder = 9 b_ct.LayoutOrder = 10 b_ce.LayoutOrder = 11

	local localplayer = game:GetService"Players".LocalPlayer
	local uis = game:GetService"UserInputService"

	local cheats = {
		b_b = false;
		b_f = false;
		b_f_t = 1;
		b_sd = false;
		b_sn = false;
		b_sh = false;
		b_ht = "Text";
		b_rt = false;
		b_tc = false;
	}

	local cheatsf = Instance.new("Folder", game.CoreGui) cheatsf.Name = "cheats"
	local espf = Instance.new("Folder", cheatsf) espf.Name = "esp"

	function addEsp(player)
		local bbg = Instance.new("BillboardGui", espf)
		bbg.Name = player.Name
		bbg.AlwaysOnTop = true
		bbg.Size = UDim2.new(4,0,5.4,0)
		bbg.ClipsDescendants = false

		local outlines = Instance.new("Frame", bbg)
		outlines.Size = UDim2.new(1,0,1,0)
		outlines.BorderSizePixel = 0
		outlines.BackgroundTransparency = 1
		local left = Instance.new("Frame", outlines)
		left.BorderSizePixel = 0
		left.Size = UDim2.new(0,1,1,0)
		local right = left:Clone()
		right.Parent = outlines
		right.Size = UDim2.new(0,-1,1,0)
		right.Position = UDim2.new(1,0,0,0)
		local up = left:Clone()
		up.Parent = outlines
		up.Size = UDim2.new(1,0,0,1)
		local down = left:Clone()
		down.Parent = outlines
		down.Size = UDim2.new(1,0,0,-1)
		down.Position = UDim2.new(0,0,1,0)

		local info = Instance.new("BillboardGui", bbg)
		info.Name = "info"
		info.Size = UDim2.new(3,0,0,54)
		info.StudsOffset = Vector3.new(3.6,-3,0)
		info.AlwaysOnTop = true
		info.ClipsDescendants = false
		local namelabel = Instance.new("TextLabel", info)
		namelabel.Name = "namelabel"
		namelabel.BackgroundTransparency = 1
		namelabel.TextStrokeTransparency = 0
		namelabel.TextXAlignment = Enum.TextXAlignment.Left
		namelabel.Size = UDim2.new(0,100,0,18)
		namelabel.Position = UDim2.new(0,0,0,0)
		namelabel.Text = player.Name
		local distancel = Instance.new("TextLabel", info)
		distancel.Name = "distancelabel"
		distancel.BackgroundTransparency = 1
		distancel.TextStrokeTransparency = 0
		distancel.TextXAlignment = Enum.TextXAlignment.Left
		distancel.Size = UDim2.new(0,100,0,18)
		distancel.Position = UDim2.new(0,0,0,18)
		local healthl = Instance.new("TextLabel", info)
		healthl.Name = "healthlabel"
		healthl.BackgroundTransparency = 1
		healthl.TextStrokeTransparency = 0
		healthl.TextXAlignment = Enum.TextXAlignment.Left
		healthl.Size = UDim2.new(0,100,0,18)
		healthl.Position = UDim2.new(0,0,0,36)

		local uill = Instance.new("UIListLayout", info)

		local forhealth = Instance.new("BillboardGui", bbg)
		forhealth.Name = "forhealth"
		forhealth.Size = UDim2.new(5,0,6,0)
		forhealth.AlwaysOnTop = true
		forhealth.ClipsDescendants = false

		local healthbar = Instance.new("Frame", forhealth)
		healthbar.Name = "healthbar"
		healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
		healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
		healthbar.Size = UDim2.new(0.04,0,0.9,0)
		healthbar.Position = UDim2.new(0,0,0.05,0)
		local bar = Instance.new("Frame", healthbar)
		bar.Name = "bar"
		bar.BorderSizePixel = 0
		bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
		bar.AnchorPoint = Vector2.new(0,1)
		bar.Position = UDim2.new(0,0,1,0)
		bar.Size = UDim2.new(1,0,1,0)

		local co = coroutine.create(function()
			while wait(0.1) do
				if (player.Character and player.Character:FindFirstChild"HumanoidRootPart") then
					bbg.Adornee = player.Character.HumanoidRootPart
					info.Adornee = player.Character.HumanoidRootPart
					forhealth.Adornee = player.Character.HumanoidRootPart

					if (player.Team ~= localplayer.Team) then
						bbg.Enabled = true
						info.Enabled = true
						forhealth.Enabled = true
					end
					if player.Character:FindFirstChild("ForceField") then
						outlines.BackgroundTransparency = 0.4
						left.BackgroundTransparency = 0.4
						right.BackgroundTransparency = 0.4
						up.BackgroundTransparency = 0.4
						down.BackgroundTransparency = 0.4
						healthl.TextTransparency = 0.4
						healthl.TextStrokeTransparency = 0.8
						distancel.TextTransparency = 0.4
						distancel.TextStrokeTransparency = 0.8
						namelabel.TextTransparency = 0.4
						namelabel.TextStrokeTransparency = 0.8
						bar.BackgroundTransparency = 0.4
						healthbar.BackgroundTransparency = 0.8
					else
						outlines.BackgroundTransparency = 0
						left.BackgroundTransparency = 0
						right.BackgroundTransparency = 0
						up.BackgroundTransparency = 0
						down.BackgroundTransparency = 0
						healthl.TextTransparency = 0
						healthl.TextStrokeTransparency = 0
						distancel.TextTransparency = 0
						distancel.TextStrokeTransparency = 0
						namelabel.TextTransparency = 0
						namelabel.TextStrokeTransparency = 0
						bar.BackgroundTransparency = 0
						healthbar.BackgroundTransparency = 0
					end
					if cheats.b_b == true then
						outlines.Visible = true
					else
						outlines.Visible = false
					end
					if cheats.b_f == true then
						if player.Character:FindFirstChild("ForceField") then
							outlines.BackgroundTransparency = 0.9
						else
							outlines.BackgroundTransparency = cheats.b_f_t
						end
					else
						outlines.BackgroundTransparency = 1
					end
					if cheats.b_sh == true then
						if (player.Character:FindFirstChild"Humanoid") then
							healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
							healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
						end
						if cheats.b_ht == "Text" then
							healthbar.Visible = false
							healthl.Visible = true
						end
						if cheats.b_ht == "Bar" then
							healthl.Visible = false
							healthbar.Visible = true
						end
						if cheats.b_ht == "Both" then
							healthl.Visible = true
							healthbar.Visible = true
						end
					else
						healthl.Visible = false
						healthbar.Visible = false
					end
					if cheats.b_sn then
						namelabel.Visible = true
					else
						namelabel.Visible = false
					end
					if cheats.b_sd == true then
						distancel.Visible = true
						if (localplayer.Character and localplayer.Character:FindFirstChild"HumanoidRootPart") then
							distancel.Text = "Distance: "..math.floor(0.5+(localplayer.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
						end
					else
						distancel.Visible = false
					end
					if cheats.b_rt == true then
						if (player.Team == localplayer.Team) then
							bbg.Enabled = true
							info.Enabled = true
							forhealth.Enabled = true
						end
					else
						if (player.Team == localplayer.Team) then
							bbg.Enabled = false
							info.Enabled = false
							forhealth.Enabled = false
						end
					end
					if cheats.b_tc == true then
						outlines.BackgroundColor3 = player.TeamColor.Color
						left.BackgroundColor3 = player.TeamColor.Color
						right.BackgroundColor3 = player.TeamColor.Color
						up.BackgroundColor3 = player.TeamColor.Color
						down.BackgroundColor3 = player.TeamColor.Color
						healthl.TextColor3 = player.TeamColor.Color
						distancel.TextColor3 = player.TeamColor.Color
						namelabel.TextColor3 = player.TeamColor.Color
					else
						if (player.Team == localplayer.Team) then
							outlines.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
							left.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
							right.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
							up.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
							down.BackgroundColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
							healthl.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
							distancel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
							namelabel.TextColor3 = Color3.fromRGB(ct_r.Text, ct_g.Text, ct_b.Text)
						else
							outlines.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
							left.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
							right.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
							up.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
							down.BackgroundColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
							healthl.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
							distancel.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
							namelabel.TextColor3 = Color3.fromRGB(ce_r.Text, ce_g.Text, ce_b.Text)
						end
					end
				end
				if not (game:GetService"Players":FindFirstChild(player.Name)) then
					print(player.Name.." has left. Clearing esp.")
					espf:FindFirstChild(player.Name):Destroy()
					coroutine.yield()
				end
			end
		end)
		coroutine.resume(co)
	end

	--main
	do
		wait(2)
		--menu buttons
		for _,button in pairs(age1:GetDescendants()) do
			if button:IsA"TextButton" then
				button.MouseButton1Click:connect(function()
					if button.Name == "b_f_t" then
						if cheats.b_f_t >= 0 then
							cheats.b_f_t = cheats.b_f_t+0.1
							if cheats.b_f_t > 1 then
								cheats.b_f_t = 0
							end
						end
						button.v.Text = cheats.b_f_t
					elseif button.Name == "b_ht" then
						if cheats.b_ht == "Text" then
							cheats.b_ht = "Bar"
						elseif cheats.b_ht == "Bar" then
							cheats.b_ht = "Both"
						else
							cheats.b_ht = "Text"
						end
						button.v.Text = cheats.b_ht
					else
						if cheats[button.Name] == true then
							cheats[button.Name] = false
							button.v.Text = "OFF"
							button.v.TextColor3 = Color3.fromRGB(255,0,0)
						else
							cheats[button.Name] = true
							button.v.Text = "ON"
							button.v.TextColor3 = Color3.fromRGB(0,255,0)
						end
					end 
				end)
			end
		end

		--initial player addition
		for _,v in pairs(game:GetService("Players"):GetChildren()) do
			if not (v.Name == localplayer.Name) then
				if not (espf:FindFirstChild(v.Name)) then
					addEsp(v)
				end
			end
		end

		--open/close gui
		game:GetService("UserInputService").InputBegan:connect(function(input, gameProcessed)
			if input.KeyCode == Enum.KeyCode.KeypadOne then
				if not gameProcessed then
					age1.Enabled = not age1.Enabled
				end
			end
		end)

		--auto-update
		while wait(10) do
			for _,v in pairs(game:GetService("Players"):GetChildren()) do
				if not (v.Name == localplayer.Name) then
					if not (espf:FindFirstChild(v.Name)) then
						addEsp(v)
					end
				end
			end
		end
	end
end)

CopyDiscoLink.Name = "CopyDiscoLink"
CopyDiscoLink.Parent = ExtrasFrame
CopyDiscoLink.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CopyDiscoLink.BorderSizePixel = 0
CopyDiscoLink.Position = UDim2.new(0.345493466, 0, 0.815416098, 0)
CopyDiscoLink.Size = UDim2.new(0, 119, 0, 40)
CopyDiscoLink.Font = Enum.Font.SourceSans
CopyDiscoLink.Text = "Copy Disco Link"
CopyDiscoLink.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyDiscoLink.TextScaled = true
CopyDiscoLink.TextSize = 14.000
CopyDiscoLink.TextWrapped = true
CopyDiscoLink.MouseButton1Down:Connect(function()
	setclipboard('https://discord.gg/usnEGYwabS')
end)

MoneyEsp.Name = "MoneyEsp"
MoneyEsp.Parent = ExtrasFrame
MoneyEsp.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
MoneyEsp.BorderSizePixel = 0
MoneyEsp.Position = UDim2.new(0.701907933, 0, 0.815416098, 0)
MoneyEsp.Size = UDim2.new(0, 119, 0, 40)
MoneyEsp.Font = Enum.Font.SourceSans
MoneyEsp.Text = "Money Esp"
MoneyEsp.TextColor3 = Color3.fromRGB(255, 255, 255)
MoneyEsp.TextScaled = true
MoneyEsp.TextSize = 14.000
MoneyEsp.TextWrapped = true
MoneyEsp.MouseButton1Down:Connect(function()
	local ESPholder = Instance.new("Folder", game.CoreGui)
	function cham(object)
		if object.Name == "MoneyDrop" then
			local a = Instance.new("BoxHandleAdornment", ESPholder)
			a.Adornee = object
			a.AlwaysOnTop = true
			a.ZIndex = 10
			a.Size = object.Size
			a.Transparency = 0.3
			a.Color = object.BrickColor
			local bill = object:WaitForChild("BillboardGui")
			bill.AlwaysOnTop = true
			bill.Size = UDim2.new(2, 10, 1, 5)
			spawn(function()
				while true do
					if object.Parent.ChildRemoving:wait() == object then
						a:Destroy()
						break
					end
				end
			end)
		end
	end
	for i, v in next, game.Workspace.Ignored.Drop:GetChildren() do
		cham(v)
	end
	game.Workspace.Ignored.Drop.ChildAdded:connect(cham)
end)

-- Scripts:

local function WNSBW_fake_script() -- FactorX.Draggble 
	local script = Instance.new('LocalScript', FactorX)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		local dragSpeed = 0
		dragInput = nil
		dragStart = nil
		local dragPos = nil
		function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(WNSBW_fake_script)()
local function OFZE_fake_script() -- FactorX.Close 
	local script = Instance.new('LocalScript', FactorX)

	local Path = script.Parent -- frame to be toggled path here
	local LP = game.Players.LocalPlayer -- this is a variable
	local Mouse = LP:GetMouse() --function that returns your mouse
	
	Mouse.KeyDown:Connect(function(key) -- making a connection with the mouse to see if a key is pressed
		--mouse includes keyboard so we use mouse keydown
		if key == "v" then -- an if then statement
			if Path.Visible == true then
				Path.Visible = false
			else Path.Visible = true
			end
		end
	end)	
end
coroutine.wrap(OFZE_fake_script)()
