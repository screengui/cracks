local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/ui.lua",true))()

am = 10
enable = false
function drop()
    while enable == true do 
        local args = {
            [1] = am
        }
    
        game:GetService("ReplicatedStorage").Remotes.Drop:FireServer(unpack(args))
        wait(0.01) 
    end
end

local Main = Library:Create("Pi Hub - Plinko")
local TabH = Main.MakeTab("Pi Hub - Plinko (Home)", 18899804355)

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

game.Textbox("Amount Per Drop", function(String) -- Section.Textbox(<string: Text>, <function: Callback>)
    local a = tonumber(String)
    if a then
        am = a
    else
        warn("The string is not a valid number.")
    end
end)

game.Toggle("AutoDrop", enable, function(Bool)
    enable = Bool
    drop()
end)
