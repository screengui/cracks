local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/ui.lua",true))()

local Main = Library:Create("Pi Hub - BladeBall")
local TabH = Main.MakeTab("Pi Hub - BladeBall (Home)", 18899804355)

local Sections = {
    ['Home'] = {
        Main = TabH.MakeSection("Main"), -- Tab.MakeSection(<string: Section_Name>)
        Game = TabH.MakeSection("Game"),
        Trade = TabH.MakeSection("Trade")
    }
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local RandRNG = math.random()
local RandAutoaParry = {[tostring(RandRNG)] = false}

local main = Sections.Home.Main
main.Label("Welcome To Pi Hub!")
main.Label("Join Our Discord: https://discord.gg/pihub")

local Ragebot = Sections.Home.Game

Ragebot.Toggle("FollowBall (Tween)", false, function(t)
    isWarping = t
end)

Ragebot.Toggle("Auto Parry", false, function(t)
    RandAutoaParry[tostring(RandRNG)] = t
end)

BaseDistance = 0
Ragebot.Slider("Parry Base Distance", 0, 100, BaseDistance, function(t)
    BaseDistance = t
end)

AutoWalk = false
Ragebot.Toggle("Auto Walk", AutoWalk, function(t)
    AutoWalk = t
end)

AutoDoubleJump = false
Ragebot.Toggle("Auto Jump", AutoDoubleJump, function(t)
    AutoDoubleJump = t
end)

AutoRealWalk = false
Ragebot.Toggle("Realistic Auto Walk", AutoRealWalk, function(t)
    AutoRealWalk = t
end)

PlayerSaftey = false
Ragebot.Toggle("Player Saftey", PlayerSaftey, function(t)
    PlayerSaftey = t
end)

PlayerSaftey_Distance = 10
Ragebot.Slider("Player Saftey Distance", 0, 50, PlayerSaftey_Distance, function(v)
    PlayerSaftey_Distance = v
end)

local can_Execute = false
if not getgenv().WalkSpeed_Mana then
    getgenv().WalkSpeed_Mana = 35
    can_Execute = true
else
    can_Execute = false
end

Ragebot.Slider("Walk Speed", 0, 250, getgenv().WalkSpeed_Mana, function(v)
    getgenv().WalkSpeed_Mana = v
end)

ws = false
Ragebot.Toggle("Walk Speed", ws, function(t)
    ws = t
end)

if can_Execute then
    print("executed!")
    spawn(function()
        while task.wait() do
            pcall(function()
		if ws == true then
                	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().WalkSpeed_Mana
		end
            end)
        end
    end)
end

AutoWalkDistanceX = 12
Ragebot.Slider("Auto Walk Distance X", -40, 40, AutoWalkDistanceX, function(t)
    AutoWalkDistanceX = t
end)

AutoWalkDistanceZ = 13
Ragebot.Slider("Auto Walk Distance Z", -40, 40, AutoWalkDistanceZ, function(t)
    AutoWalkDistanceZ = t
end)

ballaim = false
Ragebot.Toggle("Aim At The Ball", ballaim, function(t)
    ballaim = t
end)

ClosestPlayer_var = false
Ragebot.Toggle("Aim At Closest Player", ClosestPlayer_var, function(t)
    ClosestPlayer_var = t
end)

RandomTeleports = false
Ragebot.Toggle("Random Teleports", RandomTeleports, function(t)
    RandomTeleports = t
end)

TeleportDistanceX = 0
Ragebot.Slider("Teleport Distance X", -40, 40, TeleportDistanceX, function(t)
    TeleportDistanceX = t
end)

TeleportDistanceZ = 0
Ragebot.Slider("Teleport Distance Z", -40, 40, TeleportDistanceZ, function(t)
    TeleportDistanceZ = t
end)

local trade = Sections.Home.Trade

trade.Label("REMOVED THIS SHIT IS NOT WORKING")

trade.Label("USE AT YOUR OWN RISK MIGHT BANNED")

trade.Button("Trade Scam", function()
    print("???")
end)

trade.Button("Trade Dupe", function()
    print("???")
end)

function GetMouse()
    local UserInputService = game:GetService("UserInputService")
    return UserInputService:GetMouseLocation()  -- Ensure this is the correct method for your setup
end

function GetClosestPlayer()
    local closestDistance = math.huge
    local closestTarget = nil
    for _, v in pairs(game:GetService("Workspace").Alive:GetChildren()) do
        if v and v:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer.Character then
            local humanoidRootPart = v.HumanoidRootPart
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude --(Vector2.new(viewportPoint.X, viewportPoint.Y) - mousePos).magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestTarget = v
                end
        end
    end
    return closestTarget
end

spawn(function()
    while task.wait() do
        if PlayerSaftey then
            if game.Players.LocalPlayer.Character.Parent.Name == "Dead" then return end
            pcall(function()
                if (GetClosestPlayer().HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= PlayerSaftey_Distance then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosestPlayer().HumanoidRootPart.CFrame * CFrame.new(-PlayerSaftey_Distance, 0, -PlayerSaftey_Distance)
                end
            end)
        end
    end
end)

function GetBall()
    for i,v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
        if v:IsA("Part") then
            return v
        end
    end
    return nil
end

function GetBallfromplayerPos(Ball)
    return (Ball.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
end

local function getSpeed(part)
    if part:IsA("BasePart") then
        local speed = part.Velocity.Magnitude
        if speed > 1 then
            return part, speed
        end
        return nil, nil
    else
        print("The provided instance is not a BasePart.")
        return nil, nil
    end
end

local function measureVerticalDistance(humanoidRootPart, targetPart)
    local humanoidRootPartY = humanoidRootPart.Position.Y
    local targetPartY = targetPart.Position.Y
    local verticalDistance = math.abs(humanoidRootPartY - targetPartY)
    return verticalDistance
end

function GetHotKey()
	for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Hotbar.Block.HotkeyFrame:GetChildren()) do
		if v:IsA("TextLabel") then
			return v.Text
		end
	end
	return ""
end

local text = game.Players.LocalPlayer.PlayerGui.Hotbar.Block.HotkeyFrame.F
local KeyCodeBlock = text.Text
text:GetPropertyChangedSignal("Text"):Connect(function()
    KeyCodeBlock = text.Text
end)

local CanSlash = false
local BallSpeed = 0

spawn(function()
    while task.wait() do
        if RandAutoaParry[tostring(RandRNG)] then
            pcall(function()
		for i, v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
                    if v:IsA("Part") then
                        if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then return end
						local part, speed = getSpeed(v)
                        if part and speed then
                            local minDistance = 2.5 * (speed * 0.1) + 2
                            if minDistance == 0 or minDistance <= 20 then
                                BallSpeed = 23
                            elseif minDistance == 20 or minDistance <= 88 then
                                BallSpeed = 2.5 * (speed * 0.1) + 5
                            elseif minDistance == 88 or minDistance <= 110 then
                                BallSpeed = 90
                            elseif minDistance >= 110 then
                                BallSpeed = 2 * (speed * 0.1)
                            end
							if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).Magnitude <= (BallSpeed) then -- (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).Magnitude <= minDistance and 
                                CanSlash = true
                            else
                                CanSlash = false
                            end
						end
                    end
                end
                
                if CanSlash then
                    if math.random(1, 5) == 5 then
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
                    else
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode[KeyCodeBlock], false, game)
                    end
                    CanSlash = false
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if AutoWalk then
            pcall(function()
                if game.Players.LocalPlayer.Character.Parent.Name == "Dead" then return end
				for i, v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
                    if v:IsA("Part") then
						local part, speed = getSpeed(v)
                        if part and speed then
							if speed > 5 then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
                                    game.Players.LocalPlayer.Character.Humanoid:MoveTo(part.Position + Vector3.new(AutoWalkDistanceX, 0, AutoWalkDistanceZ))
                                else
                                    for i,v in pairs(game:GetService("Workspace").Alive:GetChildren()) do
                                        if game.Players.LocalPlayer.Character.Parent.Name == "Alive" then
                                            if  v ~= game.Players.LocalPlayer.Character then
                                                game.Players.LocalPlayer.Character.Humanoid:MoveTo(v.HumanoidRootPart.Position + Vector3.new(AutoWalkDistanceX, 0, AutoWalkDistanceZ))
                                            end
                                        end
                                    end
                                end
							end
						end
                    end
                end
            end)
        end
        if AutoDoubleJump then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Space, false, game)
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if AutoRealWalk then
            pcall(function()
                if game.Players.LocalPlayer.Character.Parent.Name == "Dead" then return end
				for i, v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
                    if v:IsA("Part") then
						local part, speed = getSpeed(v)
                        if part and speed then
							if speed > 5 then
                                if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
                                    wait(math.random(1,5))
                                    game.Players.LocalPlayer.Character.Humanoid:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(AutoWalkDistanceX+math.random(-50,50), 0, AutoWalkDistanceZ+math.random(-50,50)))
                                else
                                    game.Players.LocalPlayer.Character.Humanoid:MoveTo(part.Position + Vector3.new(AutoWalkDistanceX, 0, AutoWalkDistanceZ))
                                end
							end
						end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if ClosestPlayer_var then
            pcall(function()
                if game.Players.LocalPlayer.Character.Parent.Name == "Dead" then return end
                local OldCameraFrame = workspace.CurrentCamera.CFrame
                local ClosestPlayer = GetClosestPlayer()
                if ClosestPlayer then
                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, ClosestPlayer.Head.Position)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait() do
        if ballaim then
            pcall(function()
                if game.Players.LocalPlayer.Character.Parent.Name == "Dead" then return end
                local OldCameraFrame = workspace.CurrentCamera.CFrame
                for i, v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
                    if v:IsA("Part") then
                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, v.CFrame.Position)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(math.random(1,2)) do
        if RandomTeleports then
            pcall(function()
                if game.Players.LocalPlayer.Character.Parent.Name == "Dead" then return end
                for i, v in pairs(game:GetService("Workspace").Balls:GetChildren()) do
                    if v:IsA("Part") then
						local part, speed = getSpeed(v)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(TeleportDistanceX, 0, TeleportDistancez)
                    end
                end
            end)
        end
    end
end)

local function warpToBall()
    local player = players.LocalPlayer
    local character = player.Character
    if not character then return end

    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end

    if ballFolder then
        for _, ball in pairs(ballFolder:GetChildren()) do
            if ball:IsA("BasePart") then
                rootPart.CFrame = ball.CFrame + Vector3.new(0, -10, 15) 
                break
            end
        end
    end
end

runService.Heartbeat:Connect(function()
    if isWarping then
        warpToBall()
    end
end)
