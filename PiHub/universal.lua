local lplayer = game:GetService("Players").LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/a.lua"))()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/ui.lua",true))()
local Players = game:GetService("Players")

-- find icons here https://www.roblox.com/users/2050262468/inventory/#!/decals (make sure to get their textureid!)
-- Main:IsVisible(<boolean> or nil (switches between true and false) -- Switch UI Visibility
local Main = Library:Create("Pi Hub - Universal")
local TabH = Main.MakeTab("Pi Hub - Universal (Home)", 18899804355)
local TabS = Main.MakeTab("Pi Hub - Universal (Scripts)", 6034837807)

local Sections = {
    ['Home'] = {
        Main = TabH.MakeSection("Main"), -- Tab.MakeSection(<string: Section_Name>)
        Players = TabH.MakeSection("Players"),
        Visuals = TabH.MakeSection("Visuals"),
    },
    ['Scripts'] = {
        Scripts = TabS.MakeSection("Scripts"),
    }
}

local main = Sections.Home.Main
main.Label("Welcome To Pi Hub!") -- Section.Label(<string: Text>) / Label.UpdateLabel(<string: UpdatedText>)
main.Label("This Universal Script Is Not Finish!")
main.Label("Join Our Discord: https://discord.gg/dVSFmJYDdS")

local Player = Sections.Home.Players

ws = false
wsv = 16

function wspeed()
	while ws == true do
		lplayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = wsv
	    wait(0.035)
	end
	lplayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
end

Player.Toggle("WalkSpeed", ws, function(Bool)
    ws = Bool
    wspeed()
end)

Player.Slider("WalkSpeed", 0, 1000, wsv, function(Int)  -- Section.Slider(<string: Text>, <int: MinValue>, <int: MaxValue>, <function: Callback>)
    wsv = Int
end)
jp = false
jpv = 50

function jpower()
	while jp == true do
		if lplayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
			lplayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = jpv
		else
			lplayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = jpv
		end
		wait(0.035)
	end
	if lplayer.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
		lplayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = 50
	else
		lplayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = 50
	end
end
Player.Toggle("JumpPower", jp, function(Bool)
    jp = Bool
    jpower()
end)

Player.Slider("Jump Power", 0, 1000, jpv, function(Int)  -- Section.Slider(<string: Text>, <int: MinValue>, <int: MaxValue>, <function: Callback>)
	jpv = Int
end)

InfiniteJumpEnabled = false
Player.Toggle("AirJump", InfiniteJumpEnabled, function(Bool)
    InfiniteJumpEnabled = Bool
end)
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

local Visual = Sections.Home.Visuals

local function ApplyHighlight(Player)
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")
    local Highlight = Character:FindFirstChildOfClass("Highlight")

    if ESP == true then
	if not Highlight then
	    Highlight = Instance.new("Highlight", Character)
	end

	local Connections = {}

	local function UpdateFillColor()
	    local DefaultColor = Color3.fromRGB(255, 48, 51)
	    Highlight.FillColor = (Player.TeamColor and Player.TeamColor.Color) or DefaultColor
	end

	local function Disconnect()
	    if Highlight then
		Highlight:Remove()
	    end

	    for _, Connection in next, Connections do
		Connection:Disconnect()
	    end
	end

	UpdateFillColor()

	table.insert(Connections, Player:GetPropertyChangedSignal("TeamColor"):Connect(UpdateFillColor))
	table.insert(Connections, Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
	    if Humanoid.Health <= 0 then
		Disconnect()
	    end
	end))
    else
	if Highlight then
	    Highlight:Destroy()
	end
    end
end

local function HightLightPlayer(Player)
    if Player.Character then
        ApplyHighlight(Player)
    end
    Player.CharacterAdded:Connect(function()
        ApplyHighlight(Player)
    end)
end

Players.PlayerAdded:Connect(HightLightPlayer)

ESP = false
Visual.Toggle("ESP Player", ESP, function(Bool)
    ESP = Bool
    for _, Player in next, Players:GetPlayers() do
        HightLightPlayer(Player)
    end
end)

hitbox = false
Visual.Toggle("HITBOX Expander", hitbox, function(Bool)
    hitbox = Bool
end)

hitboxpart = "HumanoidRootPart"
Visual.Dropdown("HitBox Part (Default HumanoidRootPart)", {"HumanoidRootPart", "Head"}, function(String) -- Section.Dropdown(<string: Text>, <table: Table>, <function: Callback>)
    hitboxpart = String
end)

hitboxsize = 20
Visual.Slider("HitBox Size", 0, 500, hitboxsize, function(Int)  -- Section.Slider(<string: Text>, <int: MinValue>, <int: MaxValue>, <function: Callback>)
    hitboxsize = Int
end)

game:GetService('RunService').RenderStepped:Connect(function()
    local localPlayer = game:GetService('Players').LocalPlayer
    if not localPlayer then return end
    
    for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
        if player ~= localPlayer then
            local humanoidRootPart = player.Character and player.Character:FindFirstChild(hitboxpart)
            if humanoidRootPart then
                if hitbox == true then
                    humanoidRootPart.Size = Vector3.new(hitboxsize, hitboxsize, hitboxsize)
                    humanoidRootPart.Transparency = 0.9
                    humanoidRootPart.BrickColor = BrickColor.new("Really blue")
                    humanoidRootPart.Material = Enum.Material.Neon
                    humanoidRootPart.CanCollide = true
                else
                    humanoidRootPart.Size = Vector3.new(2, 2, 1)  
                    humanoidRootPart.Transparency = 1
                    humanoidRootPart.BrickColor = BrickColor.new("Medium stone grey") 
                    humanoidRootPart.Material = Enum.Material.Plastic 
                    humanoidRootPart.CanCollide = true
                end
            end
        end
    end
end)


local script = Sections.Scripts.Scripts
script.Button("Infinite Yield", function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
