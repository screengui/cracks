if not hookfunction then error("Sorry! Your exploit is unsupported.") end

local players = game:GetService("Players")

local fps = 60
local maxFPSToSubtract = 10
local realistic = false
local constant = false

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/ui.lua",true))()

local Main = Library:Create("Pi Hub - Flex Your FPS")
local TabH = Main.MakeTab("Pi Hub - Flex Your FPS (Home)", 18899804355)

local Sections = {
    ['Home'] = {
        Main = TabH.MakeSection("Main"), -- Tab.MakeSection(<string: Section_Name>)
        Game = TabH.MakeSection("Game")
    }
}

local main = Sections.Home.Main
main.Label("Welcome To Pi Hub!")
main.Label("Join Our Discord: https://discord.gg/pihub")

local game = Sections.Home.Game

game.Label("FPS Modifier")

game.Toggle("Realistic FPS", realistic, function(bool)
    realistic = bool
end)

game.Toggle("Constant FPS", constant, function(bool)
    constant = bool
end)

game.Textbox("FPS", "number", function(value)
    fps = value
end)

game.Textbox("Realistic FPS Range", function(value)
    maxFPSToSubtract = value
end)


local function getFPS()
    if constant then 
        return math.max(math.min(fps, 1500), 1)
    elseif realistic then 
        return math.max(math.min(fps, 1500), 1) - math.random(0, maxFPSToSubtract)
    end
    return nil
end

for i,v in pairs(getgc()) do
    if type(v) == "function" and getfenv(v).script == players.LocalPlayer.PlayerScripts.LocalScript then
        if debug.getinfo(v).numparams == 3 then
            hookfunction(v, function() 
                return getFPS()
            end)
        end
    end
end
