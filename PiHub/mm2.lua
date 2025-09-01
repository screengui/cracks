local Library = loadstring(game:HttpGet("https://pi-hub.pages.dev/lib/ui.lua"))()

local Main = Library:Create("Pi Hub - Murder Mystery2")
local TabH = Main.MakeTab("Pi Hub - Murder Mystery2 (Home)", 18899804355)

local Sections = {
    ['Home'] = {
        Visual = TabH.MakeSection("Visuals"),
        murderer = TabH.MakeSection("Murderer"),
        Auto = TabH.MakeSection("Autos"),
        Troll = TabH.MakeSection("Trolls"),
        Teleport = TabH.MakeSection("Teleports")
    }
}

local visual = Sections.Home.Visual

visual.Label("Welcome To Pi Hub!")
visual.Label("Join Our Discord: https://discord.gg/pihub")
visual.Label("---------------")

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local roles
local faces = {"Back","Bottom","Front","Left","Right","Top"}

function IsAlive(Player) -- Simple sexy function
for i, v in pairs(roles) do
if Player.Name == i then
if not v.Killed and not v.Dead then
return true
else
return false
end
end
end
end

Esp = false
game:GetService('RunService').RenderStepped:connect(function()
if Esp == true then
roles = ReplicatedStorage:FindFirstChild("GetPlayerData", true):InvokeServer()
for i, v in pairs(roles) do
    if v.Role == "Murderer" then
	      Murder = i
	elseif v.Role == "Sheriff" then
	       Sheriff = i
	elseif v.Role == "Hero" then
	       Hero = i
    end
end
end
end)

function MakeESP()
for _, v in pairs(game.Players:GetChildren()) do
   if v ~= game.Players.LocalPlayer and not v.Character.Head:FindFirstChild("EGUI") and v.Character then
			if v.Name == Sheriff and IsAlive(v) then
				for _, p in pairs(v.Character:GetChildren()) do
                  if p.Name == ("Head") then 
                     for _, f in pairs(faces) do
                      local m = Instance.new("SurfaceGui",p)
                      m.Name = ("EGUI")
                      m.Face = f
                      m.AlwaysOnTop = true
                      local mf = Instance.new("Frame",m)
                      mf.Size = UDim2.new(1,0,1,0)
                      mf.BorderSizePixel = 0
                      mf.BackgroundTransparency = 0.5
                      mf.BackgroundColor3 = Color3.new(0,0,250)
                      local bgui = Instance.new("BillboardGui",v.Character.Head)
                      bgui.Name = ("EGUI")
                      bgui.AlwaysOnTop = true
                      bgui.ExtentsOffset = Vector3.new(0,2,0)
                      bgui.Size = UDim2.new(0,200,0,50)
                      local nam = Instance.new("TextLabel",bgui)
                      nam.Text = v.Name
                      nam.BackgroundTransparency = 1
                      nam.TextSize = 10
                      nam.Font = ("GothamBold")
                      nam.Size = UDim2.new(0,200,0,50)
                      nam.TextColor3 = Color3.new(0,0,250)
                     end
                 end
                end
			elseif v.Name == Murder and IsAlive(v) then
				for _, p in pairs(v.Character:GetChildren()) do
                  if p.Name == ("Head") then 
                     for _, f in pairs(faces) do
                      local m = Instance.new("SurfaceGui",p)
                      m.Name = ("EGUI")
                      m.Face = f
                      m.AlwaysOnTop = true
                      local mf = Instance.new("Frame",m)
                      mf.Size = UDim2.new(1,0,1,0)
                      mf.BorderSizePixel = 0
                      mf.BackgroundTransparency = 0.5
                      mf.BackgroundColor3 = Color3.new(8,0,0)
                      local bgui = Instance.new("BillboardGui",v.Character.Head)
                      bgui.Name = ("EGUI")
                      bgui.AlwaysOnTop = true
                      bgui.ExtentsOffset = Vector3.new(0,2,0)
                      bgui.Size = UDim2.new(0,200,0,50)
                      local nam = Instance.new("TextLabel",bgui)
                      nam.Text = v.Name
                      nam.BackgroundTransparency = 1
                      nam.TextSize = 10
                      nam.Font = ("GothamBold")
                      nam.Size = UDim2.new(0,200,0,50)
                      nam.TextColor3 = Color3.new(8,0,0)
                     end
                 end
                end
			elseif v.Name == Hero and IsAlive(v) and not IsAlive(game.Players[Sheriff]) then
				for _, p in pairs(v.Character:GetChildren()) do
                  if p.Name == ("Head") then 
                     for _, f in pairs(faces) do
                      local m = Instance.new("SurfaceGui",p)
                      m.Name = ("EGUI")
                      m.Face = f
                      m.AlwaysOnTop = true
                      local mf = Instance.new("Frame",m)
                      mf.Size = UDim2.new(1,0,1,0)
                      mf.BorderSizePixel = 0
                      mf.BackgroundTransparency = 0.5
                      mf.BackgroundColor3 = Color3.new(10,15,0)
                      local bgui = Instance.new("BillboardGui",v.Character.Head)
                      bgui.Name = ("EGUI")
                      bgui.AlwaysOnTop = true
                      bgui.ExtentsOffset = Vector3.new(0,2,0)
                      bgui.Size = UDim2.new(0,200,0,50)
                      local nam = Instance.new("TextLabel",bgui)
                      nam.Text = v.Name
                      nam.BackgroundTransparency = 1
                      nam.TextSize = 10
                      nam.Font = ("GothamBold")
                      nam.Size = UDim2.new(0,200,0,50)
                      nam.TextColor3 = Color3.new(10,15,0)
                     end
                 end
                end
			else
				for _, p in pairs(v.Character:GetChildren()) do
                  if p.Name == ("Head") then 
                     for _, f in pairs(faces) do
                      local m = Instance.new("SurfaceGui",p)
                      m.Name = ("EGUI")
                      m.Face = f
                      m.AlwaysOnTop = true
                      local mf = Instance.new("Frame",m)
                      mf.Size = UDim2.new(1,0,1,0)
                      mf.BorderSizePixel = 0
                      mf.BackgroundTransparency = 0.5
                      mf.BackgroundColor3 = Color3.new(0,350,0)
                      local bgui = Instance.new("BillboardGui",v.Character.Head)
                      bgui.Name = ("EGUI")
                      bgui.AlwaysOnTop = true
                      bgui.ExtentsOffset = Vector3.new(0,2,0)
                      bgui.Size = UDim2.new(0,200,0,50)
                      local nam = Instance.new("TextLabel",bgui)
                      nam.Text = v.Name
                      nam.BackgroundTransparency = 1
                      nam.TextSize = 10
                      nam.Font = ("GothamBold")
                      nam.Size = UDim2.new(0,200,0,50)
                      nam.TextColor3 = Color3.new(0,350,0)
                     end
                 end
                end
			end
		end
	end
end
--


--Function Of Clear Esp
function ClearESP()
 for _, v in pairs(game.Workspace:GetDescendants()) do
   if v.Name == ("EGUI") then
      v:Remove()
   end
 end
end
--



--Esp Operator
Esp = false
EspOperator = false
game:GetService('RunService').RenderStepped:connect(function()
if Esp == true and EspOperator == false then
   EspOperator = true
   pcall(ClearESP)
   if Esp == true then
      pcall(MakeESP)
   end
   wait(3)
   EspOperator = false
end
end)
--

visual.Toggle("ESP PLAYER", enable, function(Value)
    if Value then
        Esp = true
        EspOperator = false
     else
        Esp = false
        for _, v in pairs(game.Workspace:GetDescendants()) do
          if v.Name == ("EGUI") then
             v:Remove()
          end
        end
     end
end)

visual.Toggle("Xray", enable, function(Value)
    if Value then
        --Enable Xray
        local obj = game.workspace
        
        function XrayOn(obj)
            for _,v in pairs(obj:GetChildren()) do
                if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("HumanoidRootPart") then
                    v.LocalTransparencyModifier = 0.75
                end
            XrayOn(v)
            end
        end
        local XrayEnable = XrayOn(obj)
     else
        --Disable Xray
        local obj = game.workspace
        
        function XrayOn(obj)
            for _,v in pairs(obj:GetChildren()) do
                if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("HumanoidRootPart") then
                    v.LocalTransparencyModifier = 0
                end
            XrayOn(v)
            end
        end
        local XrayEnable = XrayOn(obj)
     end
end)

local murd = Sections.Home.murderer


murd.Button("Kill Sheriff", function()
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") == game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Knife") then
        local CoreGui = game:GetService("StarterGui")
        
        CoreGui:SetCore("SendNotification", {
            Title = "Pi Hub",
            Text = "You Are Not The Murderer",
            Duration = 2.3,
        })
    else
        
        for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= Ghostplayer then
            if v.Character:FindFirstChild("Gun") or v.Backpack:FindFirstChild("Gun") then
                v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-2.3)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Knife"))
                wait(0.7)
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
            end
        end
        end
    end
end)

--Function Of Kill All
function KillAll()
    local old = game.Players.LocalPlayer.Character:getChildren()
    for i=1,#old do
    if old[i].Name == "HumanoidRootPart" then
    Pos = old[i].CFrame
    end
    end
    
    getgenv().KillAll = true
    while getgenv().KillAll == true do
    game.Players.LocalPlayer.Character.Head.CanCollide = false
    game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
    game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
    game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Knife"))
    for i, player in ipairs(game.Players:GetChildren()) do
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Name ~= game.Players.LocalPlayer.Name and player.Name ~= Ghostplayer then
    player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    print()
    game:GetService("RunService").Heartbeat:wait();
    end;
    end
    --
    

murd.Button("Kill All", function()
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") == game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Knife") then
        local CoreGui = game:GetService("StarterGui")
        
        CoreGui:SetCore("SendNotification", {
            Title = "Pi Hub",
            Text = "You Are Not The Murderer",
            Duration = 2.3,
        })
    else
        
        local player = game:GetService("Players").LocalPlayer
        local KillAllOperator = false
        
        getgenv().AutoUseTool = true
        while getgenv().AutoUseTool == true do
            spawn(function()
                if KillAllOperator == false then
                    KillAllOperator = true
                    pcall(KillAll)
                end
            end)
            wait(2.5)
            getgenv().KillAll = false
            getgenv().AutoUseTool = false
            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        end
    end
end)

--Ghost Mode Source Code
GhostMode = false
game:GetService('RunService').Heartbeat:connect(function()
if GhostMode == true then
   game:GetService("ReplicatedStorage").Remotes.Gameplay.Stealth:FireServer(true)
else
   game:GetService("ReplicatedStorage").Remotes.Gameplay.Stealth:FireServer(false)
end
end)
--

murd.Toggle("Ghost Mode (Invisible)", enable, function(Value)
    if Value then
        GhostMode = true
     else
        GhostMode = false
     end
end)

local auto = Sections.Home.Auto

--Auto Get Coin Source Code
local self = game.Players.LocalPlayer.Character.HumanoidRootPart
local CurrentTarget = nil
local target = nil
local AutoCoinOperator = false

local part = Instance.new("Part")
local position = Vector3.new(0,10000,0)
part.Name = "AutoCoinPart"
part.Color = Color3.new(0,0,0)
part.Material = Enum.Material.Plastic
part.Transparency = 1
part.Position = position
part.Size = Vector3.new(1,0.5,1)
part.CastShadow = true
part.Anchored = true
part.CanCollide = false
part.Parent = workspace
local CoinPart = workspace:FindFirstChild("AutoCoinPart")


local function AutoGetCoin()
getgenv().AutoCoin= true
while getgenv().AutoCoin == true do
spawn(function()
if AutoCoinOperator == false then
   AutoCoinOperator = true
   workspace:FindFirstChild("AutoCoinPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   for i,v in pairs(workspace:GetDescendants()) do
     if v.Name == "Coin_Server" then
        target = v
        if CurrentTarget then
           if (self.Position - CurrentTarget.Position).Magnitude > (self.Position - target.Position).Magnitude then
             CurrentTarget = target
           end
        else
           CurrentTarget = target
        end
     end
   end
   if CurrentTarget then
      if math.floor((self.Position - CurrentTarget.Position).magnitude) >= 30 then
         TweenSpeed = 2
      elseif math.floor((self.Position - CurrentTarget.Position).magnitude) >= 15 then
         TweenSpeed = 1
      else
         TweenSpeed = 0.08 * math.floor((self.Position - CurrentTarget.Position).magnitude)
      end
      CoinFound = true
      tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(TweenSpeed, Enum.EasingStyle.Linear)
      tween = tweenService:Create(CoinPart, tweenInfo, {CFrame = CurrentTarget.CFrame})
      tween:Play()
      wait(TweenSpeed)
      if CurrentTarget then
         CurrentTarget.Parent = nil
      end
      TweenSpeed = 0.08
      target = nil
      CurrentTarget = nil
      CoinFound = false
      AutoCoinOperator = false
   end
end
end)
if CoinFound == true then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").AutoCoinPart.CFrame
end
print()
game:GetService("RunService").Heartbeat:wait();
end;
end
--

auto.Toggle("Auto Farm Coins", enable, function(Value)
    if Value then
       CurrentTarget = nil
       target = nil
       AutoCoinOperator = false
       CoinFound = false
       TweenSpeed = 0.08
       AutoGetCoin()
    else
       getgenv().AutoCoin = false
       AutoCoinOperator = false
       CoinFound = false
    end
end)

--Function Of Get Murder
local function GetMurderer()
    for i,v in pairs(game.Players:GetPlayers()) do
       if v.Character:FindFirstChild("Knife") or v.Backpack:FindFirstChild("Knife") then
           return v
       end
    end
end
--

getgenv().AutoKillMurder = false

auto.Toggle("TP Behind Muderer", enable, function(Value)
    if Value then
        local Murderer = GetMurderer()
     
        getgenv().AutoKillMurder = true
        while getgenv().AutoKillMurder == true do
         if Murderer ~= nil then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Murderer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 15)
            workspace.CurrentCamera.CFrame = Murderer.Character.HumanoidRootPart.CFrame
            if Murderer.Character.Humanoid.Health == 0 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                Value = false
               getgenv().AutoKillMurder = false
            end
         else
            Value = false
            getgenv().AutoKillMurder = false
         end
        print()
        game:GetService("RunService").Heartbeat:wait();
        end;
     else
        getgenv().AutoKillMurder = false
     end
end)

local function AutoGetGunActive()
    GunFound = false
    getgenv().AutoGetGun = true
    while getgenv().AutoGetGun == true do
    spawn(function()
    if GunFound == false and workspace:FindFirstChild("Normal").GunDrop then
       GunFound = true
       local old = game.Players.LocalPlayer.Character:getChildren()
       for i=1,#old do
         if old[i].Name == "HumanoidRootPart" then
            LP = old[i].CFrame
         end
       end
       wait()
       for _,v in next, Workspace:GetDescendants() do 
         if v.Name == "GunDrop" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,2,0)
         end
       end
       wait(0.15)
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LP
       wait(2)
       if workspace:FindFirstChild("Normal").GunDrop then
          GunFound = false
       end
    end
    if not workspace:FindFirstChild("Normal").GunDrop then
       GunFound = false
    end
    if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character.Humanoid.Health == 0 or game.Players.LocalPlayer.Character.Humanoid.Health <= 1 then
      GunFound = false
    end
    end)
    wait(0.1)
    end
    end
    --

auto.Toggle("Auto Grab Gun", enable, function(Value)
    if Value then
        AutoGetGunActive()
     else
        getgenv().AutoGetGun = false
     end
end)

local troll = Sections.Home.Troll

troll.Button("Fake Knife", function()
    Backpack = game.Players.LocalPlayer.Backpack
    
    local FakeKnife = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
    FakeKnife.GripPos = Vector3.new(0.1, -0.4, 0)
    FakeKnife.Name = "Fake Knife"
    FakeKnife.TextureId = "http://www.roblox.com/asset/?id=5648412667"
    
    FakeKnife.Equipped:Connect(function()
        game.Players.LocalPlayer.Character.Archivable = true
        
        hat = Instance.new("Part", game.Players.LocalPlayer.Character)
        hat.Size = Vector3.new(1,1,1)
        hatmesh = Instance.new("SpecialMesh", hat)
        hatmesh.MeshId = "http://www.roblox.com/asset/?id=3526876559"
        hatmesh.Scale = Vector3.new(1, 1 ,1)
        hatmesh.TextureId = "http://www.roblox.com/asset?id=3526876643"
        hat.Transparency = 0
        hat.CanCollide = false
        hat.Name = "Fake Knife"
        hat.Anchored = false
        hat.BrickColor = BrickColor.new("Really black")
        HatWeld = Instance.new("Weld", game.Players.LocalPlayer.Character)
        HatWeld.Part0 = game.Players.LocalPlayer.Character["RightHand"]
        HatWeld.Part1 = hat
        HatWeld.C1 = CFrame.new(0,-0.9,-0.2)*CFrame.Angles(155.5,15.7,62.8)
    end)
    
    FakeKnife.Unequipped:Connect(function()
        hat:Destroy()
    end)
end)
    

troll.Button("Fake Death", function()
    if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0))
     end
end)

troll.Button("Fling Murder", function()
    local function Fling()
        power = 10000
        wait(.1)
        local bambam = Instance.new("BodyThrust")
        bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        bambam.Force = Vector3.new(power,power,power)
        bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
    end
        
    local Murderer = GetMurderer()
    local pos = Murderer.Character.HumanoidRootPart.Position 
    local ActiveFling = Fling()
    
    getgenv().FlingMurder = true
    while getgenv().FlingMurder == true do
        if Murderer ~= nil then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Murderer.Character.HumanoidRootPart.CFrame
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            getgenv().FlingMurder = false
        end
    end
    print()
    game:GetService("RunService").Heartbeat:wait();
    end;
end)

local tp = Sections.Home.Teleport

tp.Button("Teleport To Lobby", function()
    if workspace:FindFirstChild("Lobby").Spawns.SpawnLocation then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.Spawns.SpawnLocation.CFrame * CFrame.new(0,3,0)
    end
    if workspace:FindFirstChild("Lobby").Spawns.Spawn then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.Spawns.Spawn.CFrame * CFrame.new(0,3,0)
    end
end)

tp.Button("Teleport To Map", function()
    if workspace:FindFirstChild("Normal").Spawns.Spawn then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Normal.Spawns.Spawn.CFrame * CFrame.new(0,3,0)
    end
    if workspace:FindFirstChild("Normal").Spawns.PlayerSpawn then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Normal.Spawns.PlayerSpawn.CFrame * CFrame.new(0,3,0)
    end
    if workspace:FindFirstChild("Christmas").Spawns.Spawn then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Christmas.Spawns.Spawn.CFrame * CFrame.new(0,3,0)
    end
end)
