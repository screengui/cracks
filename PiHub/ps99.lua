local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/ui.lua",true))()

local Main = Library:Create("Pi Hub - Pet Simulator 99")
local TabH = Main.MakeTab("Pi Hub - Pet Simulator 99 (Home)", 18899804355)
local TabB = Main.MakeTab("Pi Hub - Pet Simulator 99 (Game)", 18899804355)
local TabN = Main.MakeTab("Pi Hub - Pet Simulator 99 (Others)", 18899804355)

local Sections = {
    ['Home'] = {
        Main = TabH.MakeSection("Main"), -- Tab.MakeSection(<string: Section_Name>)
        fishing = TabB.MakeSection("Fishing"),
        digsite = TabB.MakeSection("Digsite"),
        autofarm = TabB.MakeSection("AutoFarm"),
        eggs = TabB.MakeSection("Eggs"),
        items = TabB.MakeSection("Items"),
        usefuls = TabN.MakeSection("Usefuls"),
    }
}

local miscs = Sections.Home.Main
miscs.Label("Welcome To Pi Hub!")
miscs.Label("Join Our Discord: https://discord.gg/pihub")

miscs.Label(" ---- Servers ---- ")

miscs.Button("Rejoin", function() 
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

miscs.Button("Server Hop", function() 
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

miscs.Label(" ---- Local Player ---- ")


miscs.Button("AntiAFK", function() 
    antiAFKN()
end)

miscs.Button("AntiAFK (JUMPING)", function() 
    antiAFK()
end)

miscs.Button("BOOST FPS", function() 
    repeat
        task.wait()
    until game:IsLoaded()
    
    workspace.__THINGS.Ornaments:Destroy()
    local Workspace = game:GetService("Workspace")
    local Terrain = Workspace:WaitForChild("Terrain")
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 1
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    
    local Lighting = game:GetService("Lighting")
    Lighting.Brightness = 0
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9e100
    Lighting.FogStart = 0
    
    sethiddenproperty(Lighting, "Technology", 2)
    sethiddenproperty(Terrain, "Decoration", false)
    
    local function clearTextures(v)
        if v:IsA("BasePart") and not v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif (v:IsA("Decal") or v:IsA("Texture")) then
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
        elseif v:IsA("SpecialMesh")  then
            v.TextureId = 0
        elseif v:IsA("ShirtGraphic") then
            v.Graphic = 1
        elseif (v:IsA("Shirt") or v:IsA("Pants")) then
            v[v.ClassName .. "Template"] = 1
        elseif v.Name == "Foilage" and v:IsA("Folder") then
            v:Destroy()
        elseif string.find(v.Name, "Tree") or string.find(v.Name, "Water") or string.find(v.Name, "Bush") or string.find(v.Name, "grass") then
            task.wait()
            v:Destroy()
        end
    end
    
    game:GetService("Lighting"):ClearAllChildren()
    
    for _, v in pairs(Workspace:GetDescendants()) do
        clearTextures(v)
    end
    
    Workspace.DescendantAdded:Connect(function(v)
        clearTextures(v)
    end)
end)

function antiAFK()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    while task.wait() do
        VirtualInputManager:SendKeyEvent(true, "Space", false, game)
        task.wait(.2)
        VirtualInputManager:SendKeyEvent(false, "Space", false, game)
        task.wait(300)
    end
end

function antiAFKN()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(
        function()
            wait(1)
            vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
end

local fish = Sections.Home.fishing

fish.Toggle("AutoBuy Fishing Rods", false, function(Value)  
    getgenv().rog = Value

    while getgenv().rog do
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Advanced Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Amethyst Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Diamond Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Emerald Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Golden Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Platinum Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Pro Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Sapphire Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Sturdy Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Super Fishing Rod")
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FishingMerchant_PurchaseRod"):InvokeServer("Wooden Fishing Rod")
        wait()
    end
end)

fish.Label("-- Normal Fishing --")

fish.Button("Teleport To Fishing Area", function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.__THINGS.Instances.Fishing.Teleports.Enter.CFrame
end)

local waittime1 = 0

-- Slider for Wait Time
fish.Slider("Wait Time", 0, 10, 1, waittime1, function(Value)
    waittime1 = Value
end)

local nf = fish.Label("No task")

-- Toggle for AutoFishing (Normal)
fish.Toggle("AutoFishing (Normal)", false, function(Value)
    getgenv().autoFish = Value

    local castArgs = {
        [1] = "Fishing",
        [2] = "RequestCast",
        [3] = Vector3.new(1128.50439453125, 75.91410064697266, -3452.713134765625)
    }

    local reelArgs = {
        [1] = "Fishing",
        [2] = "RequestReel"
    }

    local clickArgs = {
        [1] = "Fishing",
        [2] = "Clicked"
    }

    while getgenv().autoFish do
        nf.UpdateLabel("Throwing Fishing Line")
        game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(castArgs))
        wait(2.6)
        nf.UpdateLabel("Grabbing Loot")
        game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(reelArgs))

        for i = 1, 26 do
            game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(clickArgs))
            wait(waittime1)
        end
        nf.UpdateLabel("Loot Grabbed")
        wait()
    end
end)


fish.Label("-- Advanced Fishing --")

-- Button to Teleport to Advanced Fishing Area
fish.Button("Teleport To Advanced Fishing Area", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.__THINGS.Instances.AdvancedFishing.Teleports.Enter.CFrame
end)

-- Slider for Wait Time (Advanced)
fish.Slider("Wait Time", 0, 10, 1, waittime1, function(Value)
    waittime1 = Value
end)

local adf = fish.Label("No task")

-- Toggle for AutoFishing (Advanced)
fish.Toggle("AutoFishing (Advance)", false, function(Value)
    getgenv().autoFish = Value

    local castArgs = {
        [1] = "AdvancedFishing",
        [2] = "RequestCast",
        [3] = Vector3.new(1461.7335205078125, 61.62493896484375, -4453.87451171875)
    }

    local reelArgs = {
        [1] = "AdvancedFishing",
        [2] = "RequestReel"
    }

    local clickArgs = {
        [1] = "AdvancedFishing",
        [2] = "Clicked"
    }

    while getgenv().autoFish do
        adf.UpdateLabel("Throwing Fishing Line")
        game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(castArgs))
        wait(2.6)
        adf.UpdateLabel("Grabbing Loot")
        game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(reelArgs))

        for i = 1, 26 do
            game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(unpack(clickArgs))
            wait(waittime1)
        end
        adf.UpdateLabel("Loot Grabbed")
        wait()
    end
end)


local digsite = Sections.Home.digsite


-- Section for Digsite Shop
digsite.Label("---- Digsite Shop ----")

-- Toggle for AutoBuy Shovels (Both)
digsite.Toggle("AutoBuy Shovels (Both)", false, function(Value)
    getgenv().shovel = Value

    while getgenv().shovel do
        local shovels = {
            "Sturdy Shovel", "Advanced Shovel", "Sharp Shovel",
            "Iron Shovel", "Platinum Shovel", "Emerald Shovel",
            "Sapphire Shovel", "Amethyst Shovel"
        }
        for _, shovel in ipairs(shovels) do
            game:GetService("ReplicatedStorage").Network.DigsiteMerchant_PurchaseShovel:InvokeServer(shovel)
        end
        wait()
    end
end)

-- Section for Normal Digsite
digsite.Label("---- Normal Digsite ----")

-- Button to Teleport To Digsite
digsite.Button("Teleport To Digsite", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.__THINGS.Instances.Digsite.Teleports.Enter.CFrame
end)

-- Button for Chest ESP
digsite.Button("Chest ESP", function()

    local chestsn = {"Animated"}

    local function contains(table, val)
        for _, v in pairs(table) do
            if v == val then return true end
        end
        return false
    end

    while true do
        task.wait()

        for _, v in pairs(game.Workspace["__THINGS"].__INSTANCE_CONTAINER.Active.Digsite.Important.ActiveChests:GetChildren()) do
            if v:FindFirstChild("ESP") then
                v:FindFirstChild("ESP"):Destroy()
            end

            if contains(chestsn, v.Name) then
                local tcolor = Color3.fromRGB(255, 255, 255)
                if v.Name == "Animated" then
                    tcolor = Color3.fromRGB(222, 184, 135)
                end

                local esp = Instance.new("BillboardGui", v)
                esp.Name = "ESP"
                esp.Size = UDim2.new(5, 0, 5, 0)
                esp.AlwaysOnTop = true

                local frame = Instance.new("Frame", esp)
                frame.Size = UDim2.new(1, 0, 1, 0)
                frame.BackgroundTransparency = 0.80
                frame.BorderSizePixel = 0
                frame.BackgroundColor3 = tcolor

                local label = Instance.new('TextLabel', frame)
                label.Size = UDim2.new(1, 0, 1, 0)
                label.BorderSizePixel = 0
                label.TextSize = 17
                label.Text = "Chest"
                label.BackgroundTransparency = 1
                label.TextColor3 = tcolor
                label.TextStrokeColor3 = Color3.fromRGB(6, 6, 6)
                label.TextStrokeTransparency = 0.7
            end
        end
    end
end)

-- Toggle for Teleport To Chests/Ores
digsite.Toggle("Teleport To Chests/Ores", false, function(Value)
    getgenv().Toggle = Value
    local Things = workspace:WaitForChild("__THINGS")
    local Active = Things.__INSTANCE_CONTAINER:WaitForChild("Active")
    local Player = game.Players.LocalPlayer
    local character = Player.Character
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    local ActiveBlocks = Active.Digsite.Important.ActiveBlocks
    local ActiveChests = Active.Digsite.Important.ActiveChests

    local CurrentActive = function()
        return Active:GetChildren()[1]
    end

    local GetChest = function()
        for _, v in pairs(ActiveChests:GetChildren()) do
            return v
        end
        return nil
    end

    local GetBlock = function()
        local blocks = ActiveBlocks:GetChildren()
        for i, v in pairs(blocks) do
            local CurrentBlock = blocks[#blocks - i + 1]
            if CurrentBlock.Color.R > 0.067 or CurrentBlock.Color.G > 0.067 or CurrentBlock.Color.B > 0.067 then
                local coord = CurrentBlock:GetAttribute('Coord')
                if (coord.X > 1 and coord.X < 16 and coord.Z > 1 and coord.Z < 16) then
                    return CurrentBlock
                end
            end
        end
        return nil
    end

    local Dig = function()
        local Chest = GetChest()
        if Chest then
            local j = 1
            while Chest.Parent == ActiveChests and j < 20 do
                humanoidRootPart.CFrame = Chest:FindFirstChildWhichIsA("BasePart").CFrame
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_FireCustomFromClient"):FireServer(CurrentActive().Name, "DigChest", Chest:GetAttribute('Coord'))
                task.wait()
                j = j + 1
            end
            if j == 20 then
                Chest.Parent = nil
            end
        else
            local Block = GetBlock()
            local j = 1
            while Block.Parent == ActiveBlocks and j < 100 do
                humanoidRootPart.CFrame = Block.CFrame
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_FireCustomFromClient"):FireServer(CurrentActive().Name, "DigBlock", Block:GetAttribute('Coord'))
                task.wait()
                j = j + 1
            end
            if Block.Parent == ActiveBlocks then
                Block:Destroy()
            end
        end
    end

    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().Toggle then
            for _, v in next, Player.Character:GetChildren() do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                    v.Velocity = Vector3.new(0, 0, 0)
                end
            end
        else
            for _, v in next, Player.Character:GetChildren() do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end)

    spawn(function()
        while getgenv().Toggle and wait() do
            pcall(function()
                Dig()
            end)
        end
    end)
end)

-- Toggle for Auto Dig
digsite.Toggle("Auto Dig", false, function(Value)
    getgenv().autodig1 = Value
    spawn(function()
        while getgenv().autodig1 do
            wait()
            for _, v in pairs(workspace.__THINGS.__INSTANCE_CONTAINER.Active.Digsite.Important.ActiveBlocks:GetChildren()) do
                if v.Name == "Part" and v:IsA("BasePart") and v.Position and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < 15 then
                    for i = 1, 5 do
                        local args = {
                            [1] = "Digsite",
                            [2] = "DigBlock",
                            [3] = v:GetAttribute('Coord')
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_FireCustomFromClient"):FireServer(unpack(args))
                    end
                    task.wait()
                    break
                end
            end
        end
    end)
end)

-- Section for Advanced Digsite
digsite.Label("---- Advanced Digsite ----")

-- Button to Teleport To Advanced Digsite
digsite.Button("Teleport To Advanced Digsite", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.__THINGS.Instances.AdvancedDigsite.Teleports.Enter.CFrame
end)

-- Button for Chest ESP (Advanced)
digsite.Button("Chest ESP", function()

    local chestsn = {"Animated"}

    local function contains(table, val)
        for _, v in pairs(table) do
            if v == val then return true end
        end
        return false
    end

    while true do
        task.wait()

        for _, v in pairs(game:GetService("Workspace")["__THINGS"]["__INSTANCE_CONTAINER"].Active.AdvancedDigsite.Important.ActiveChests:GetChildren()) do
            if v:FindFirstChild("ESP") then
                v:FindFirstChild("ESP"):Destroy()
            end

            if contains(chestsn, v.Name) then
                local tcolor = Color3.fromRGB(255, 255, 255)
                if v.Name == "Animated" then
                    tcolor = Color3.fromRGB(255, 184, 135)
                end

                local esp = Instance.new("BillboardGui", v)
                esp.Name = "ESP"
                esp.Size = UDim2.new(5, 0, 5, 0)
                esp.AlwaysOnTop = true

                local frame = Instance.new("Frame", esp)
                frame.Size = UDim2.new(1, 0, 1, 0)
                frame.BackgroundTransparency = 0.80
                frame.BorderSizePixel = 0
                frame.BackgroundColor3 = tcolor

                local label = Instance.new('TextLabel', frame)
                label.Size = UDim2.new(1, 0, 1, 0)
                label.BorderSizePixel = 0
                label.TextSize = 17
                label.Text = "Chest"
                label.BackgroundTransparency = 1
                label.TextColor3 = tcolor
                label.TextStrokeColor3 = Color3.fromRGB(6, 6, 6)
                label.TextStrokeTransparency = 0.7
            end
        end
    end
end)

-- Toggle for Teleport To Chests/Ores (advanced)
digsite.Toggle("Teleport To Chests/Ores (advanced)", false, function(Value)
    getgenv().Toggle = Value
    local Things = workspace:WaitForChild("__THINGS")
    local Active = Things.__INSTANCE_CONTAINER:WaitForChild("Active")
    local Player = game.Players.LocalPlayer
    local character = Player.Character
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    local ActiveBlocks = Active.AdvancedDigsite.Important.ActiveBlocks
    local ActiveChests = Active.AdvancedDigsite.Important.ActiveChests

    local CurrentActive = function()
        return Active:GetChildren()[1]
    end

    local GetChest = function()
        for _, v in pairs(ActiveChests:GetChildren()) do
            return v
        end
        return nil
    end

    local GetBlock = function()
        local blocks = ActiveBlocks:GetChildren()
        for i, v in pairs(blocks) do
            local CurrentBlock = blocks[#blocks - i + 1]
            if CurrentBlock.Color.R > 0.067 or CurrentBlock.Color.G > 0.067 or CurrentBlock.Color.B > 0.067 then
                local coord = CurrentBlock:GetAttribute('Coord')
                if (coord.X > 1 and coord.X < 16 and coord.Z > 1 and coord.Z < 16) then
                    return CurrentBlock
                end
            end
        end
        return nil
    end

    local Dig = function()
        local Chest = GetChest()
        if Chest then
            local j = 1
            while Chest.Parent == ActiveChests and j < 20 do
                humanoidRootPart.CFrame = Chest:FindFirstChildWhichIsA("BasePart").CFrame
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_FireCustomFromClient"):FireServer(CurrentActive().Name, "DigChest", Chest:GetAttribute('Coord'))
                task.wait()
                j = j + 1
            end
            if j == 20 then
                Chest.Parent = nil
            end
        else
            local Block = GetBlock()
            local j = 1
            while Block.Parent == ActiveBlocks and j < 100 do
                humanoidRootPart.CFrame = Block.CFrame
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_FireCustomFromClient"):FireServer(CurrentActive().Name, "DigBlock", Block:GetAttribute('Coord'))
                task.wait()
                j = j + 1
            end
            if Block.Parent == ActiveBlocks then
                Block:Destroy()
            end
        end
    end

    game:GetService("RunService").Stepped:Connect(function()
        if getgenv().Toggle then
            for _, v in next, Player.Character:GetChildren() do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                    v.Velocity = Vector3.new(0, 0, 0)
                end
            end
        else
            for _, v in next, Player.Character:GetChildren() do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end)

    spawn(function()
        while getgenv().Toggle and wait() do
            pcall(function()
                Dig()
            end)
        end
    end)
end)

-- Toggle for Auto Dig (advanced)
digsite.Toggle("Auto Dig (advanced)", false, function(Value)
    getgenv().autodig = Value

    spawn(function()
        while getgenv().autodig do
            wait()
            for _, v in pairs(game:GetService("Workspace")["__THINGS"]["__INSTANCE_CONTAINER"].Active.AdvancedDigsite.Important.ActiveBlocks:GetChildren()) do
                if v.Name == "Part" and v:IsA("BasePart") and v.Position and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < 15 then
                    for i = 1, 5 do
                        local args = {
                            [1] = "AdvancedDigsite",
                            [2] = "DigBlock",
                            [3] = v:GetAttribute('Coord')
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Instancing_FireCustomFromClient"):FireServer(unpack(args))
                    end
                    task.wait()
                    break
                end
            end
        end
    end)
end)

getgenv().Config = {}


local autofarm = Sections.Home.autofarm

autofarm.Label(" ---- Auto World ---- ")

autofarm.Toggle("Auto Rebirth", false, function(Value)
    getgenv().rebirth = Value

    if Value then
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local nextRebirthData = require(ReplicatedStorage.Library.Client.RebirthCmds).GetNextRebirth()
        local rebirthNumber
        local rebirthZone

        if nextRebirthData then
            rebirthNumber = nextRebirthData.RebirthNumber
            rebirthZone = nextRebirthData.ZoneNumberRequired
        end

        task.spawn(function()
            print("Starting rebirth service")
            while getgenv().rebirth do
                local nextZoneName, nextZoneData = require(ReplicatedStorage.Library.Client.ZoneCmds).GetNextZone()
                local success, _ = ReplicatedStorage.Network.Zones_RequestPurchase:InvokeServer(nextZoneName)
                if success then
                    print("Successfully purchased " .. nextZoneName)
                    if nextZoneData.ZoneNumber >= rebirthZone then
                        print("Rebirthing")
                        ReplicatedStorage.Network.Rebirth_Request:InvokeServer(tostring(rebirthNumber))
                        task.wait(15)
                        nextRebirthData = require(ReplicatedStorage.Library.Client.RebirthCmds).GetNextRebirth()
                        if nextRebirthData then
                            rebirthNumber = nextRebirthData.RebirthNumber
                            rebirthZone = nextRebirthData.ZoneNumberRequired
                        end
                    end
                end
                task.wait(1) -- Adjust delay as needed
            end
        end)
    end
end)

autofarm.Toggle("Auto Buy Last Area", false, function(Value)
    getgenv().lastareabuy = Value

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Workspace = game:GetService("Workspace")
    
    local map
    local PlaceId = game.PlaceId
    if PlaceId == 8737899170 then
        map = Workspace.Map
    elseif PlaceId == 16498369169 then
        map = Workspace.Map2
    end
    
    local currentZone
    
    require(ReplicatedStorage.Library.Client.PlayerPet).CalculateSpeedMultiplier = function(...)
        return 200
    end
    
    local function buyNewArea()
        -- Function to purchase a new area
        local nextZoneName, nextZoneData = require(ReplicatedStorage.Library.Client.ZoneCmds).GetNextZone()
        if nextZoneName and nextZoneData then
            local success, _ = game:GetService("ReplicatedStorage").Network.Zones_RequestPurchase:InvokeServer(nextZoneName)
            if success then
                print("Successfully purchased " .. nextZoneName)
                return true
            else
                print("Failed to purchase " .. nextZoneName)
                return false
            end
        else
            print("No next zone available")
            return false
        end
    end
    
    task.spawn(function()
        print("Starting zone purchase service")
        while true do
            if getgenv().autoWorldConfig.AUTO_WORLD_PURCHASE then
                if not buyNewArea() then
                    print("Waiting for next purchase attempt")
                end
            end
            task.wait(getgenv().autoWorldConfig.PURCHASE_CHECK_DELAY)
        end
    end)
    
    while getgenv().lastareabuy do
    buyNewArea()
    wait()
    end
end)

autofarm.Label(" ---- Farm Options ---- ")

getgenv().config = {
    farm = {
        toggle = true,
        singleTarget = false,
        farmPrint = false,
        radius = 70,
        wait = 0.3
    },
    autoLootbag = false,
}

local LocalPlayer = game.Players.LocalPlayer
local HumanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart", true)

local vim = game:GetService("VirtualInputManager")
local sqrt = math.sqrt
local pow = math.pow

local Things = game.workspace['__THINGS']
local Lootbags = Things.Lootbags
local ShinyRelics = Things.ShinyRelics
local Breakables = Things.Breakables
local Pets = Things.Pets
local Network = game:GetService("ReplicatedStorage").Network
local PetInventory = LocalPlayer.PlayerGui.Inventory.Frame.Main.Pets.EquippedPets

getgenv().currentCoins = {}
getgenv().equippedPets = {}
getgenv().totalClaimed = 0
getgenv().totalTime = 0

local function indexPets()
    table.clear(equippedPets)
    for _,pet in ipairs(Pets:GetChildren()) do
        if PetInventory:FindFirstChild(pet.Name) then
            table.insert(equippedPets, pet.Name)
        end
    end
    return equippedPets
end
local function calcDistance(obj1,obj2)
    local pPosX,pPosZ = obj1.CFrame.X,obj1.CFrame.Z
    local hPosX, hPosZ = obj2.CFrame.X, obj2.CFrame.Z

    return sqrt(pow(pPosX-hPosX, 2) + pow(pPosZ-hPosZ, 2))
end
local function getCenter()
    local frame = Instance.new("Frame")
    frame.Parent = game.CoreGui
    frame.Name = LocalPlayer.Name
    frame.AnchorPoint = Vector2.new(0.5,0.5)
    frame.Position = UDim2.fromScale(0.5,0.5)
    frame.Size = UDim2.fromOffset(10,10)
    frame.Visible = false

    return {frame.AbsolutePosition.X,frame.AbsolutePosition.Y}
end


local isFeatureEnabled = false -- Set the initial state of the feature
local loopHandle -- Variable to hold the loop handle

local function toggleFeature(value)
    isFeatureEnabled = value -- Update the state of the feature
    if isFeatureEnabled then
        --[[ WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk! ]]
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        local b = workspace.__THINGS


        loopHandle = game:GetService("RunService").Heartbeat:Connect(function()
            if isFeatureEnabled then
                get()
            end
        end)
    else
        if loopHandle then
            loopHandle:Disconnect() -- Stop the loop if the feature is disabled
            loopHandle = nil
        end
    end
end

autofarm.Toggle("Farm Nearest Coins", false, function(value) 
    getgenv().toggleling = value
        config.farm.toggle = value
        while config.farm.toggle and task.wait() do
        for _,v in ipairs(Breakables:GetChildren()) do
            if v.Name ~= "Highlight" and v:FindFirstChild("Hitbox", true) then
                local part = v:FindFirstChild("Hitbox", true)
        
                if calcDistance(part, HumanoidRootPart) <= config.farm.radius then
                    if config.farm.singleTarget then
                        local tmpName = v.Name
                        local startTime = os.clock()
        
                        repeat
                            if calcDistance(part, HumanoidRootPart) > config.farm.radius then
                                break
                            end
                            task.wait(config.farm.wait)
                            Network.Breakables_PlayerDealDamage:FireServer(v.Name)
                        until not Breakables:FindFirstChild(v.Name)
        
                        totalClaimed = totalClaimed + 1; totalTime = totalTime + (os.clock() - startTime)
                        if config.farm.farmPrint then print("farmed "..tmpName.." in: "..tostring(os.clock() - startTime).." Avg: "..tostring(totalTime/totalClaimed)) end
                    else
                        if not table.find(currentCoins, v.Name) then
                            table.insert(currentCoins, v.Name)
                            task.spawn(function()
                                local tmpPart = part
                                local tmpName = v.Name
                                local startTime = os.clock()
                                repeat
                                    if calcDistance(tmpPart, HumanoidRootPart) > config.farm.radius then
                                        table.remove(currentCoins, table.find(currentCoins, v.Name))
                                        break
                                    end
        
                                    task.wait(config.farm.wait*math.random(1,2))
        
                                    Network.Breakables_PlayerDealDamage:FireServer(tmpName)
                                until not Breakables:FindFirstChild(tmpName)
        
                                table.remove(currentCoins, table.find(currentCoins, v.Name))
                                totalClaimed = totalClaimed + 1; totalTime = totalTime + (os.clock() - startTime)
                                if config.farm.farmPrint then print("farmed "..tmpName.." in: "..tostring(os.clock() - startTime).." Avg: "..tostring(totalTime/totalClaimed)) end
                            end)
                        end
                    end
                end
            end
        end   
    end
end)

autofarm.Toggle("Single Target", false, function(value) 
    getgenv().toggleling2 = value
    config.farm.singleTarget = value
end)

autofarm.Slider("Radius", 70, 200, 70, function(value)  
    if tonumber(value) then
        config.farm.radius = tonumber(value)
    else
        config.farm.radius = 40
    end
end)

autofarm.Slider("Radius", 70, 200, 70, function(value)  
    if tonumber(value) then
        config.farm.radius = tonumber(value)
    else
        config.farm.radius = 40
    end
end)

autofarm.Label(" ---- Miscs ---- ")

local originalSpeedMultiplierFunction
local defaultSpeedMultiplierFunction = function() return 25 end -- Set to the default speed multiplier function

local toggleState = Value

autofarm.Toggle("2x Pets Speed", false, function(Value) 
    toggleState = Value

    if toggleState then
        local playerPetModule = require(game.ReplicatedStorage.Library.Client.PlayerPet)
        originalSpeedMultiplierFunction = playerPetModule.CalculateSpeedMultiplier
        playerPetModule.CalculateSpeedMultiplier = function() return 200 end
    else
        local playerPetModule = require(game.ReplicatedStorage.Library.Client.PlayerPet)
        playerPetModule.CalculateSpeedMultiplier = originalSpeedMultiplierFunction or defaultSpeedMultiplierFunction
    end
end)

autofarm.Toggle("Collect Lootbags", false, function(value) 
    getgenv().valueLootbag = value

    if value then
        -- Function to collect loot bag
        local function collectLootbag(lootbag)
            task.wait() -- Delay to ensure loot bag is fully created
            if lootbag then
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Lootbags_Claim"):FireServer(unpack({[1] = {[1] = lootbag.Name}}))
                lootbag:Destroy()
            end
        end

        -- Collect loot bags already in the workspace
        for _, lootbag in pairs(game:GetService("Workspace").__THINGS:FindFirstChild("Lootbags"):GetChildren()) do
            collectLootbag(lootbag)
        end

        -- Connect the event to collect loot bags when new ones are added
        game:GetService("Workspace").__THINGS:FindFirstChild("Lootbags").ChildAdded:Connect(collectLootbag)
    else
        -- Disconnect the event if the toggle is turned off
        game:GetService("Workspace").__THINGS:FindFirstChild("Lootbags").ChildAdded:Disconnect()
    end
end)


autofarm.Toggle("Collect Orbs", false, function(value) 
    getgenv().valueorbs = value

    if value then
        local function collectOrb(orb)
            task.wait() -- Delay to ensure orb is fully created
            if orb then
                game:GetService("ReplicatedStorage"):WaitForChild("Network"):FindFirstChild("Orbs: Collect"):FireServer(unpack({[1] = {[1] = tonumber(orb.Name)}}))
                orb:Destroy()
            end
        end

        game:GetService("Workspace").__THINGS:FindFirstChild("Orbs").ChildAdded:Connect(collectOrb)
    else
        -- Disconnect the event if the toggle is turned off
        game:GetService("Workspace").__THINGS:FindFirstChild("Orbs").ChildAdded:Disconnect()
    end
end)

local eggs = Sections.Home.eggs

local toggleState = false
local hatchingProcess = nil
local EGGVALUE = "None" -- Set a default value
local HATCHAMOUNT = 1 -- Default hatching amount

eggs.Label(" ---- Infos ---- ")

local remainingText = game:GetService("Players").LocalPlayer.PlayerGui._MACHINES.EggSlotsMachine.Frame.Slots.Items.Title.Remaining.text
local firstPart = remainingText:match("([^/]+)")

local function startHatching()
    while toggleState do
        local args = {
            [1] = EGGVALUE,
            [2] = HATCHAMOUNT
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_RequestPurchase"):InvokeServer(unpack(args))
        task.wait(1)  -- Adjust the time interval between hatching attempts
    end
end

eggs.Dropdown("Select Egg", {"None", "Tech Ciruit Egg", "Tech City Egg", "Tech Forest Egg", "Tech Silo Egg", "Tech Data Egg", "Tech Cuboid Egg", "Tech Sprout Egg", "Tech Tree Egg", "Tech Incubator Egg", "Tech Overgrown Egg", "Tech Magma Egg", "Tech Oasis Egg", "Tech Palm Egg", "Tech Coral Egg", "Tech Ship Egg", "Tech Ruins Egg", "Tech Dusty Egg", "Tech Luminati Egg", "Tech Cactus Egg", "Tech Cowboy Egg", "Tech Canyon Egg", "Tech Snow Egg", "Tech Mossy Egg", "Tech Ice Crystal Egg", "Tech Flurry Egg", "Ice Circuit Egg", "Tech Glacier Egg", "Tech Melted Egg Egg", "Tech Nexus Egg", "Nuclear Crack Egg", "Nuclear Forest Egg", "Nuclear Mine Egg", "Nuclear Egg", "Tech Rocket Egg", "Tech Planets Egg", "Tech Moon Egg", "Tech Mars Egg", "Tech Saturn Egg", "Tech Comet Egg", "Tech Galaxy Egg", "Electric Garden Egg", "Electric City Egg", "Electric Forest Egg", "Electric Egg", "Tech Factory Egg", "Tech Robot Egg", "Tech Hive Egg", "Alien Garden Egg", "Alien Forest Egg", "Alien Lab Egg", "Alien UFO Egg", "Space Forge Egg", "Space Factory Egg", "Space Junkyard Egg", "Steampunk Gears Egg", "Steampunk Lantern Egg", "Steampunk Clockwork Egg", "Steampunk Airship Egg", "Motherboard Egg", "Aura Egg", "Wizard Ruins Egg", "Wizard Temple Egg", "Wizard Forest Egg", "Wizard Tower Egg", "Wizard Dungeon Egg", "Cyberpunk Undercity Egg", "Cyberpunk Industrial Egg", "Cyberpunk City Egg", "Cyberpunk Road Egg", "Tech Kyoto Egg", "Tech Samurai Egg", "Tech Dojo Egg", "Tech Sakura Egg", "Dominus Rex Egg", "Dominus Frigidus Egg"}, function(value)
    EGGVALUE = value
    print(EGGVALUE)
end)

eggs.Slider("Hatching Amount", 1, tonumber(firstPart), 1, function(value)  
    HATCHAMOUNT = value
    print(HATCHAMOUNT)
end)

eggs.Toggle("Auto Buy Eggs", false, function(value) 
    toggleState = value

    if toggleState then
        -- Start the hatching process when toggle is turned on
        hatchingProcess = coroutine.create(startHatching)
        coroutine.resume(hatchingProcess)
    else
        -- Stop the hatching process when toggle is turned off
        if hatchingProcess then
            coroutine.yield(hatchingProcess)
            hatchingProcess = nil
        end
    end
end)

eggs.Label(" ---- Eggs Options ---- ")

eggs.Toggle("Charged Eggs", false, function(value) 
    local args = {
        [1] = value
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("GoldenHatch_Toggle"):FireServer(unpack(args))        
end)

eggs.Toggle("Golden Eggs", false, function(value) 
    local args = {
        [1] = value
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("GoldenHatch_Toggle"):FireServer(unpack(args))        
end)

eggs.Label(" ---- Options ---- ")

eggs.Toggle("Remove Hatch Animations", false, function(Value) 
    toggleState = Value -- Update the toggle state
    
    local localPlayer = game.Players.LocalPlayer
    if localPlayer then
        local Eggs = localPlayer.PlayerScripts.Scripts.Game['Egg Opening Frontend']
        
        if toggleState then
            -- Store the original function and redefine it to do nothing
            originalPlayEggAnimation = getsenv(Eggs).PlayEggAnimation
            getsenv(Eggs).PlayEggAnimation = function() return end
        else
            -- Restore the original function
            if originalPlayEggAnimation then
                getsenv(Eggs).PlayEggAnimation = originalPlayEggAnimation
            end
        end
    end  
end)

local items = Sections.Home.items

items.Label(" ---- Auto Combine Keys ---- ")

local function addAutoCombineToggle(name, keyName)
    items.Toggle(name, false, function(Value) 
        getgenv()[keyName] = Value
        while getgenv()[keyName] do
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild(name):InvokeServer()
            wait()
        end
    end)
end

addAutoCombineToggle("Auto Combine Secret Keys", "Secretkey")
addAutoCombineToggle("Auto Combine Crystal Keys", "crystalkey")
addAutoCombineToggle("Auto Combine Tech Keys", "techkey")

items.Label(" ---- Flags ---- ")

items.Toggle("Auto Flag", false, function(Value) 
    getgenv().toggleflag = Value
    while getgenv().toggleflag do
        local saveModule = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get()
        local flagRemote = game:GetService("ReplicatedStorage").Network["CoinJar_Spawn"]

        for ID, values in pairs(saveModule.Inventory.Misc) do
            if values.id == getgenv().flagname then
                game:GetService("ReplicatedStorage").Network["Flags: Consume"]:InvokeServer(getgenv().flagname, ID)
            end
        end
        wait(1)
    end
end)

items.Dropdown("Select Egg", {"Shiny Flag", "Rainbow Flag", "Fortune Flag", "Diamonds Flag", "Hasty Flag", "Coins Flag", "Magnet Flag", "Strength Flag"}, function(value)
    getgenv().flagname = Value
end)

items.Label(" ---- Items ---- ")

local function addItemToggle(name, remoteName, id)
    items.Toggle(name, false, function(Value) 
        getgenv()[remoteName] = Value
        while getgenv()[remoteName] do
            local saveModule = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get()
            for itemID, values in pairs(saveModule.Inventory.Misc) do
                if values.id == id then
                    game:GetService("ReplicatedStorage").Network[remoteName]:InvokeServer(itemID)
                end
            end
            wait(1)
        end
    end)
end

addItemToggle("Auto Spawn Breakable Sprinkler", "Sprinklers: Consume", "Breakable Sprinkler")
addItemToggle("Auto Spawn Lucky Block", "MiniLuckyBlock_Consume", "Mini Lucky Block")
addItemToggle("Auto Spawn Coinjar", "CoinJar_Spawn", "Basic Coin Jar")
addItemToggle("Auto Spawn Giant Coin Jar", "CoinJar_Spawn", "Giant Coin Jar")
addItemToggle("Auto Spawn Magic Coin Jar", "CoinJar_Spawn", "Magic Coin Jar")
addItemToggle("Auto Spawn Party Box", "PartyBox_Consume", "Party Box")
addItemToggle("Auto Spawn Pinata", "MiniPinata_Consume", "Mini Pinata")
addItemToggle("Auto Spawn Comet", "Comet_Spawn", "Comet")

items.Label(" ---- Fruits ---- ")

local function addFruitToggle(name, fruitID)
    items.Toggle(name, false, function(Value) 
        getgenv()[fruitID] = Value
        while getgenv()[fruitID] do
            local saveModule = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get()
            local fruitRemote = game:GetService("ReplicatedStorage").Network["Fruits: Consume"]
            for ID, values in pairs(saveModule.Inventory.Fruit) do
                if values.id == fruitID then
                    local amount = math.min(values._am, getgenv().ammountfruit)
                    fruitRemote:FireServer(ID, amount)
                    wait(1)
                end
            end
            wait()
        end
    end)
end

addFruitToggle("Auto Eat Watermelon", "Watermelon")
addFruitToggle("Auto Eat Orange", "Orange")
addFruitToggle("Auto Eat Banana", "Banana")
addFruitToggle("Auto Eat Pineapple", "Pineapple")
addFruitToggle("Auto Eat Apple", "Apple")
addFruitToggle("Auto Eat Rainbow Apple", "Rainbow")

items.Label(" ---- Toys ---- ")

local function addToyToggle(name, toyName)
    items.Toggle(name, false, function(Value) 
        getgenv()[toyName] = Value
        while getgenv()[toyName] do
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild(toyName .. "_Consume"):InvokeServer()
            wait(1)
        end
    end)
end

addToyToggle("Auto Use Squeaky Toy", "SqueakyToy")
addToyToggle("Auto Use TNT", "TNT")
addToyToggle("Auto Use TNT Crate", "TNT_Crate")
addToyToggle("Auto Use ToyBone", "ToyBone")
addToyToggle("Auto Use Toy Ball", "ToyBall")

local usefuls = Sections.Home.usefuls

local autoEgg = false
local eggslots = false
local diamondspinningwheel = false
local ultimate = false
local giftbag = false
local togglehiddenshinyrelics = false
local togglehiddenpresents = false

usefuls.Label(" ---- Inventory Machines ---- ")

usefuls.Toggle("Auto Buy Pet Slots", false, function(Value) 
    autoEgg = Value

    local Workspace = game:GetService("Workspace")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Library = ReplicatedStorage:WaitForChild("Library")
    local LocalPlayer = game:GetService("Players").LocalPlayer
    
    local diamondCost = {
        [1] = 150,
        [2] = 300,
        [3] = 600,
        [4] = 900,
        [5] = 1350,
        [6] = 1800,
        [7] = 2400,
        [8] = 3000,
        [9] = 3600,
        [10] = 4200,
        [13] = 10600,
        [15] = 13600,
        [17] = 16600,
        [19] = 20100,
        [21] = 23700,
        [23] = 27300,
        [25] = 30900,
        [27] = 34500,
        [29] = 38500,
        [31] = 42700,
        [34] = 72000,
        [35] = 26100,
        [38] = 85500,
        [41] = 96300,
        [44] = 107000,
        [47] = 117000,
        [50] = 128000,
        [53] = 750000,
        [56] = 1200000,
        [59] = 1650000,
        [62] = 2100000,
        [65] = 2550000,
        [68] = 3000000,
        [69] = 1100000,
        [70] = 1150000,
        [71] = 1200000,
        [72] = 1250000,
        [73] = 1250000,
        [74] = 1300000,
        [75] = 1350000,
    }
    
    local function teleportToEggMachine()
        local zonePath = Workspace.Map["8 | Backyard"]
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9904.640625, 24.644779205322266, -570.1585693359375)
        task.wait()
    
        if not zonePath:FindFirstChild("INTERACT") then
            local loaded = false
            local detectLoad = zonePath.ChildAdded:Connect(function(child)
                if child.Name == "INTERACT" then
                    loaded = true
                end
            end)
    
            repeat
                task.wait()
            until loaded
    
            detectLoad:Disconnect()
        end
    
        LocalPlayer.Character.HumanoidRootPart.CFrame = zonePath.INTERACT.Machines.EggSlotsMachine.PadGlow.CFrame
    end
    
    local function purchaseEggSlot()
        local currentEggs = require(Library.Client.Save).Get().EggSlotsPurchased
        local currentmaxPurchaseableEggs = require(Library.Client.RankCmds).GetMaxPurchasableEggSlots()
        local originalPosition
        
        while autoEgg do
            while require(Library.Client.CurrencyCmds).Get("Diamonds") < (diamondCost[currentEggs + 1] or math.huge) do
                task.wait(autoEggConfig.GEM_WAIT_DELAY)
            end
            
            if currentEggs < currentmaxPurchaseableEggs then
                originalPosition = LocalPlayer.Character.HumanoidRootPart.CFrame
                teleportToEggMachine()
                task.wait()
                local args = { currentEggs + 1 }
                game:GetService("ReplicatedStorage").Network.EggHatchSlotsMachine_RequestPurchase:InvokeServer(unpack(args))
                currentEggs = currentEggs + 1
                LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition
            else
                while currentmaxPurchaseableEggs == require(Library.Client.RankCmds).GetMaxPurchasableEggSlots() do
                    task.wait(autoEggConfig.RANK_WAIT_DELAY)
                end
            end
        end
    end

    -- Call the purchaseEggSlot function
    purchaseEggSlot()
end)

usefuls.Toggle("Auto Buy Egg Slots", false, function(Value) 
    eggslots = Value

    while eggslots do
        purchaseEggHatchItems()
        wait()
    end
end)

usefuls.Label(" ---- Auto Spinning Wheel ---- ")

usefuls.Toggle("Diamond Spinning Wheel", false, function(Value) 
    diamondspinningwheel = Value

    if diamondspinningwheel then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.__THINGS.Instances.DiamondWheelInstance.Teleports.Enter.CFrame
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2312.986572265625, 111.89756774902344, -1469.512451171875)
    end

    while diamondspinningwheel do
        local args = {
            [1] = "DiamondWheel"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Spinny Wheel: Request Spin"):InvokeServer(unpack(args))
        wait()  -- Add a wait here to avoid spamming the server
    end
end)

usefuls.Label(" ---- Ultimate ---- ")

local titleText = game:GetService("Players").LocalPlayer.PlayerGui.Ultimates.Frame.UsingFrame.InfoFrame.Title.Text
local extractedText = titleText:match("(%a+ %a+)")

usefuls.Toggle("Auto Ultimate", false, function(Value) 
    ultimate = Value

    while ultimate do
        local ultimatesList = {
            "Ground Pound",
            "Black Hole",
            "Chest Spell",
            "Tornado",
            "Pet Surge",
            "Tsunami",
            "Hidden Treasure",
            "TNT Shower"
        }

        for _, ultimateName in ipairs(ultimatesList) do
            local args = {
                [1] = ultimateName
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Ultimates: Activate"):InvokeServer(unpack(args))
            wait()  -- Add a wait here to avoid spamming the server
        end
    end
end)

usefuls.Label(" ---- Gift Bags ---- ")

usefuls.Toggle("Auto Open GiftBags", false, function(Value) 
    giftbag = Value

    if giftbag then
        local giftbags = {
            "Mini Chest",
            "Enchant Bundle",
            "Flag Bundle",
            "Potion Bundle",
            "Toy Bundle",
            "Gift Bag",
            "Large Gift Bag",
            "Seed Bag",
            "Fruit Bundle",
            "Potion Bundle"
        }

        while giftbag do
            for _, giftbagType in pairs(giftbags) do
                local args = {
                    [1] = giftbagType
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("GiftBag_Open"):InvokeServer(unpack(args))
                wait()
            end
        end
    end
end)

usefuls.Label(" ---- Hidden Stuff ---- ")

usefuls.Toggle("Get Hidden Shiny Relics", false, function(Value) 
    togglehiddenshinyrelics = Value
    if Value then
        local relics = {}
        for i, v in pairs(game:GetService("ReplicatedStorage").Network.Relics_Request:InvokeServer()) do
            relics[i] = v
        end

        local totalRelics = #relics

        local save = require(game:GetService("ReplicatedStorage"):WaitForChild("Library")).Save.Get()
        for _, collectedRelic in pairs(save.ShinyRelics) do
            relics[collectedRelic] = nil
        end

        if game:GetService("Workspace"):FindFirstChild("Map") then
            print("Filtering all relics in World 1")
            for i = 86, totalRelics do
                relics[i] = nil
            end
        else
            print("Filtering all relics in World 2")
            for i = 1, 85 do
                relics[i] = nil
            end
        end

        local originalPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        for i, v in pairs(relics) do
            if relics[i] == "ShinyRelic" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position.X, v.Position.Y, v.Position.Z)
                game:GetService("ReplicatedStorage").Network.Relics_Request:InvokeServer(v.Name)
            end
        end

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition
    end
end)
