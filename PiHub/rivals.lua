local Library = loadstring(game:HttpGet("https://pi-hub.pages.dev/lib/ui.lua"))()


local Main = Library:Create("Pi Hub - Rivals")
local TabH = Main.MakeTab("Pi Hub - Rivals (Home)", 18899804355)

local Sections = {
    ['Home'] = {
        Main = TabH.MakeSection("Main"), -- Tab.MakeSection(<string: Section_Name>)
        Game = TabH.MakeSection("Game"),
        ESP = TabH.MakeSection("Esp")
    }
}

local main = Sections.Home.Main
main.Label("Welcome To Pi Hub!")
main.Label("Join Our Discord: https://discord.gg/pihub")

-- Aimbot settings
local aimbotEnabled = false
local wallCheckEnabled = false
local aimbotFov = 175
local fovTransparency = 0.4
local fovThickness = 2
local lockOnRange = 3000
local fovCircle = nil
local aimPart = "Head"
local fovFollowMouse = false
local players = game:GetService("Players")
local camera = workspace.CurrentCamera
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local wishlistedUsers = {}
local wishlistFriends = false
local fovCircleColor = Color3.new(1, 1, 1)

local function createFovCircle()
    if fovCircle then fovCircle:Remove() end
    fovCircle = Drawing.new("Circle")
    fovCircle.Thickness = fovThickness
    fovCircle.NumSides = 64
    fovCircle.Radius = aimbotFov
    fovCircle.Color = fovCircleColor
    fovCircle.Transparency = fovTransparency
    fovCircle.Visible = aimbotEnabled
end

local function updateFovCircle()
    if fovCircle then
        fovCircle.Position = fovFollowMouse and UserInputService:GetMouseLocation() or Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
        fovCircle.Radius = aimbotFov
        fovCircle.Color = fovCircleColor
        fovCircle.Transparency = fovTransparency
        fovCircle.Thickness = fovThickness
        fovCircle.Visible = aimbotEnabled
    end
end

local function isPlayerVisible(target)
    local origin = camera.CFrame.Position
    local _, onScreen = camera:WorldToScreenPoint(target.Position)
    if not onScreen then
        return false
    end

    local ray = Ray.new(origin, (target.Position - origin).unit * lockOnRange)
    local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {camera, players.LocalPlayer.Character})
    if part and part:IsDescendantOf(target.Parent) then
        return true
    end

    return false
end

local function isUserWishlisted(username)
    for _, user in pairs(wishlistedUsers) do
        if string.find(string.lower(username), string.lower(user)) then
            return true
        end
    end
    return false
end

local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(players:GetPlayers()) do
        if player ~= players.LocalPlayer and player.Character and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            local humanoid = player.Character.Humanoid

            if humanoid.Health > 0 and not isUserWishlisted(player.Name) then
                local screenPoint = camera:WorldToScreenPoint(hrp.Position)
                local distanceFromCenter = (Vector2.new(screenPoint.X, screenPoint.Y) - (fovFollowMouse and UserInputService:GetMouseLocation() or Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2))).Magnitude

                if distanceFromCenter <= aimbotFov and (not wallCheckEnabled or isPlayerVisible(hrp)) then
                    local distance = (hrp.Position - players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        closestPlayer = player
                    end
                end
            end
        end
    end

    return closestPlayer
end

local function aimAtClosestPlayer()
    if aimbotEnabled then
        local closestPlayer = getClosestPlayer()
        if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild(aimPart) then
            local target = closestPlayer.Character[aimPart]
            local targetPosition = target.Position
            local currentCameraPosition = camera.CFrame.Position
            local direction = (targetPosition - currentCameraPosition).unit
            local targetCameraCFrame = CFrame.new(currentCameraPosition, currentCameraPosition + direction)
            camera.CFrame = targetCameraCFrame
        end
    end
end

RunService.RenderStepped:Connect(function()
    updateFovCircle()
    aimAtClosestPlayer()
end)

--// No Flash Function
local function noFlash()
    if game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc:FindFirstChild("FlashbangEffect") then 
        game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc.FlashbangEffect:Destroy()
    end
end

--// No Smoke Function
local function noSmoke()
    if game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc:FindFirstChild("SmokeClouds") then 
        game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc.SmokeClouds:Destroy()
    end
end

local Game = Sections.Home.Game

Game.Button("No Flash", function()
    noFlash()
end)

Game.Button("No Smoke", function()
    noSmoke()
end)

Game.Label("-- AimBot --")

Game.Toggle("Aimbot", false, function(Value) 
    aimbotEnabled = Value
    updateFovCircle()
end)

Game.Toggle("Aimbot Check Wall", false, function(Value) 
    wallCheckEnabled = Value
end)

Game.Label("Do not use Aimbot Follow Mouse FOV On mobile")

Game.Toggle("Aimbot Follow Mouse FOV", false, function(Value) 
    fovFollowMouse = Value
    updateFovCircle()
end)

Game.Slider("Aimbot Fov Size", 1, 500, 10, function(Value) 
    aimbotFov = Value
    updateFovCircle()
end)

Game.Slider("Aimbot Fov Transparency", 0, 1, 0.01, function(Value) 
    fovTransparency = Value
    updateFovCircle()
end)

Game.Slider("Aimbot Fov Thickness", 1, 10, 0.01, function(Value) 
    fovThickness = Value
    updateFovCircle()
end)

Game.Dropdown("Aimbot Aim Part", {"Head", "Torso", "HumanoidRootPart"}, function(Value)
    aimPart = Value
end)

local AutoVoteMap = false
local selectedOption = "Arena"
local randomExecutor

-- Define the map actions
local mapActions = {
    ["Onyx"] = function()
        local args = { [1] = "Onyx" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Onyx")
    end,
    ["Construction"] = function()
        local args = { [1] = "Construction" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Construction")
    end,
    ["Shooting Range"] = function()
        local args = { [1] = "Shooting Range" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Shooting Range")
    end,
    ["Docks"] = function()
        local args = { [1] = "Docks" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Docks")
    end,
    ["Crossroads"] = function()
        local args = { [1] = "Crossroads" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Crossroads")
    end,
    ["Station"] = function()
        local args = { [1] = "Station" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Station")
    end,
    ["Big Crossroads"] = function()
        local args = { [1] = "Big Crossroads" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Big Crossroads")
    end,
    ["Backrooms"] = function()
        local args = { [1] = "Backrooms" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Backrooms")
    end,
    ["Arena"] = function()
        local args = { [1] = "Arena" }
        game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(unpack(args))
        print("Voted for Arena")
    end,
}

Game.Label("-- Map Voter --")

Game.Toggle("Auto Vote Map", false, function(Value) 
    AutoVoteMap = Value
    if AutoVoteMap then
        print("Auto Vote Map enabled")
    else
        print("Auto Vote Map disabled")
    end
end)

Game.Dropdown("Aimbot Aim Part", {"Onyx", "Construction", "Shooting Range", "Docks", "Crossroads", "Station", "Big Crossroads", "Backrooms", "Arena"}, function(Option)
    selectedOption = Option
    print("Selected map: " .. Option)
end)

local ESPTAB = Sections.Home.ESP

local boxes = {}
local names = {}
local distances = {}
local healthBars = {}
local healthTexts = {}
local connections = {}

local function createBox(player)
    if player == game:GetService("Players").LocalPlayer then return end

    local box = Drawing.new("Square")
    box.Thickness = 1
    box.Transparency = 1
    box.Color = Color3.new(1, 1, 1)
    box.Filled = false
    box.Outline = true
    box.OutlineColor = Color3.new(0, 0, 0)
    boxes[player] = box

    if nameEspEnabled then
        local name = Drawing.new("Text")
        name.Size = 10
        name.Color = Color3.new(1, 1, 1)
        name.Center = true
        name.Outline = true
        name.OutlineColor = Color3.new(0, 0, 0)
        name.Text = player.Name
        names[player] = name
    end

    if distanceEspEnabled then
        local distance = Drawing.new("Text")
        distance.Size = 10
        distance.Color = Color3.new(1, 1, 1)
        distance.Center = true
        distance.Outline = true
        distance.OutlineColor = Color3.new(0, 0, 0)
        distances[player] = distance
    end

    if healthBarEspEnabled then
        local healthBar = Drawing.new("Square")
        healthBar.Thickness = 1
        healthBar.Transparency = 1
        healthBar.Color = Color3.new(0, 0, 0)
        healthBar.Filled = false

        local healthBarGreen = Drawing.new("Square")
        healthBarGreen.Thickness = 0
        healthBarGreen.Transparency = 1
        healthBarGreen.Color = Color3.new(0, 1, 0)
        healthBarGreen.Filled = true

        local healthBarRed = Drawing.new("Square")
        healthBarRed.Thickness = 0
        healthBarRed.Transparency = 1
        healthBarRed.Color = Color3.new(1, 0, 0)
        healthBarRed.Filled = true

        healthBars[player] = {healthBar, healthBarGreen, healthBarRed}
    end

    if healthTextEspEnabled then
        local healthText = Drawing.new("Text")
        healthText.Size = 10
        healthText.Color = Color3.new(1, 1, 1)
        healthText.Center = true
        healthText.Outline = true
        healthText.OutlineColor = Color3.new(0, 0, 0)
        healthTexts[player] = healthText
    end
end

local function removeBox(player)
    if boxes[player] then
        boxes[player]:Remove()
        boxes[player] = nil
    end
    if names[player] then
        names[player]:Remove()
        names[player] = nil
    end
    if distances[player] then
        distances[player]:Remove()
        distances[player] = nil
    end
    if healthBars[player] then
        healthBars[player][1]:Remove()
        healthBars[player][2]:Remove()
        healthBars[player][3]:Remove()
        healthBars[player] = nil
    end
    if healthTexts[player] then
        healthTexts[player]:Remove()
        healthTexts[player] = nil
    end
end

local function updateBoxes()
    for player, box in pairs(boxes) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = player.Character.HumanoidRootPart
            local vector, onScreen = game.Workspace.CurrentCamera:WorldToViewportPoint(hrp.Position)
            if onScreen then
                box.Visible = true
                local scaleFactor = 0.5 / (vector.Z / 100)
                box.Size = Vector2.new(20 * scaleFactor, 35 * scaleFactor)
                box.Position = Vector2.new(vector.X - 10 * scaleFactor, vector.Y - 17.5 * scaleFactor)

                if names[player] then
                    names[player].Visible = true
                    names[player].Position = Vector2.new(vector.X, vector.Y - 20 * scaleFactor)
                end

                if distances[player] then
                    distances[player].Visible = true
                    local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - hrp.Position).Magnitude
                    distances[player].Text = string.format("%.0f studs", distance)
                    distances[player].Position = Vector2.new(vector.X, vector.Y + 20 * scaleFactor)
                end

                if healthBars[player] then
                    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        local health = humanoid.Health
                        local maxHealth = humanoid.MaxHealth
                        local healthPercent = health / maxHealth

                        local healthBar = healthBars[player][1]
                        local healthBarGreen = healthBars[player][2]
                        local healthBarRed = healthBars[player][3]

                        healthBar.Visible = true
                        healthBarGreen.Visible = true
                        healthBarRed.Visible = true

                        healthBar.Size = Vector2.new(3 * scaleFactor, 35 * scaleFactor)
                        healthBar.Position = Vector2.new(vector.X - 13 * scaleFactor, vector.Y - 17.5 * scaleFactor)

                        healthBarGreen.Size = Vector2.new(3 * scaleFactor, 35 * scaleFactor * healthPercent)
                        healthBarGreen.Position = Vector2.new(vector.X - 13 * scaleFactor, vector.Y - 17.5 * scaleFactor + (35 * scaleFactor * (1 - healthPercent)))

                        healthBarRed.Size = Vector2.new(3 * scaleFactor, 35 * scaleFactor * (1 - healthPercent))
                        healthBarRed.Position = Vector2.new(vector.X - 13 * scaleFactor, vector.Y - 17.5 * scaleFactor)
                    else
                        healthBars[player][1].Visible = false
                        healthBars[player][2].Visible = false
                        healthBars[player][3].Visible = false
                    end
                end

                if healthTexts[player] then
                    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        local health = humanoid.Health
                        local maxHealth = humanoid.MaxHealth

                        healthTexts[player].Visible = true
                        healthTexts[player].Text = string.format("%.0f / %.0f", health, maxHealth)
                        healthTexts[player].Position = Vector2.new(vector.X + 15 * scaleFactor, vector.Y)
                    else
                        healthTexts[player].Visible = false
                    end
                end
            else
                box.Visible = false
                if names[player] then
                    names[player].Visible = false
                end
                if distances[player] then
                    distances[player].Visible = false
                end
                if healthBars[player] then
                    healthBars[player][1].Visible = false
                    healthBars[player][2].Visible = false
                    healthBars[player][3].Visible = false
                end
                if healthTexts[player] then
                    healthTexts[player].Visible = false
                end
            end
        else
            box.Visible = false
            if names[player] then
                names[player].Visible = false
            end
            if distances[player] then
                distances[player].Visible = false
            end
            if healthBars[player] then
                healthBars[player][1].Visible = false
                healthBars[player][2].Visible = false
                healthBars[player][3].Visible = false
            end
            if healthTexts[player] then
                healthTexts[player].Visible = false
            end
        end
    end
end

local function playerAdded(player)
    player.CharacterAdded:Connect(function()
        createBox(player)
    end)

    player.CharacterRemoving:Connect(function()
        removeBox(player)
    end)

    -- Create ESP for the character if it exists
    if player.Character then
        createBox(player)
    end
end

local function toggleBoxESP(enabled)
    if enabled then
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            playerAdded(player)
        end
        connections.renderStepped = game:GetService("RunService").RenderStepped:Connect(updateBoxes)
    else
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            removeBox(player)
        end
        if connections.renderStepped then
            connections.renderStepped:Disconnect()
            connections.renderStepped = nil
        end
    end
end

local function toggleNameESP(enabled)
    nameEspEnabled = enabled
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if enabled then
            if not names[player] then
                local name = Drawing.new("Text")
                name.Size = 10
                name.Color = Color3.new(1, 1, 1)
                name.Center = true
                name.Outline = true
                name.OutlineColor = Color3.new(0, 0, 0)
                name.Text = player.Name
                names[player] = name
            end
        else
            if names[player] then
                names[player]:Remove()
                names[player] = nil
            end
        end
    end
end

local function toggleDistanceESP(enabled)
    distanceEspEnabled = enabled
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if enabled then
            if not distances[player] then
                local distance = Drawing.new("Text")
                distance.Size = 10
                distance.Color = Color3.new(1, 1, 1)
                distance.Center = true
                distance.Outline = true
                distance.OutlineColor = Color3.new(0, 0, 0)
                distances[player] = distance
            end
        else
            if distances[player] then
                distances[player]:Remove()
                distances[player] = nil
            end
        end
    end
end

local function toggleHealthBarESP(enabled)
    healthBarEspEnabled = enabled
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if enabled then
            if not healthBars[player] then
                local healthBar = Drawing.new("Square")
                healthBar.Thickness = 1
                healthBar.Transparency = 1
                healthBar.Color = Color3.new(0, 0, 0)
                healthBar.Filled = false

                local healthBarGreen = Drawing.new("Square")
                healthBarGreen.Thickness = 0
                healthBarGreen.Transparency = 1
                healthBarGreen.Color = Color3.new(0, 1, 0)
                healthBarGreen.Filled = true

                local healthBarRed = Drawing.new("Square")
                healthBarRed.Thickness = 0
                healthBarRed.Transparency = 1
                healthBarRed.Color = Color3.new(1, 0, 0)
                healthBarRed.Filled = true

                healthBars[player] = {healthBar, healthBarGreen, healthBarRed}
            end
        else
            if healthBars[player] then
                healthBars[player][1]:Remove()
                healthBars[player][2]:Remove()
                healthBars[player][3]:Remove()
                healthBars[player] = nil
            end
        end
    end
end

local function toggleHealthTextESP(enabled)
    healthTextEspEnabled = enabled
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if enabled then
            if not healthTexts[player] then
                local healthText = Drawing.new("Text")
                healthText.Size = 10
                healthText.Color = Color3.new(1, 1, 1)
                healthText.Center = true
                healthText.Outline = true
                healthText.OutlineColor = Color3.new(0, 0, 0)
                healthTexts[player] = healthText
            end
        else
            if healthTexts[player] then
                healthTexts[player]:Remove()
                healthTexts[player] = nil
            end
        end
    end
end

game:GetService("Players").PlayerAdded:Connect(playerAdded)
game:GetService("Players").PlayerRemoving:Connect(removeBox)

ESPTAB.Toggle("Box ESP", false, function(value)
    toggleBoxESP(value)
end)

ESPTAB.Toggle("Name ESP", false, function(value)
    toggleNameESP(value)
end)

ESPTAB.Toggle("Distance ESP", false, function(value)
    toggleDistanceESP(value)
end)

ESPTAB.Toggle("Health Bar ESP", false, function(value)
    toggleHealthBarESP(value)
end)

ESPTAB.Toggle("Health Text ESP", false, function(value)
    toggleHealthTextESP(value)
end)
