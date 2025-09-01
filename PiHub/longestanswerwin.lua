local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/ui.lua",true))()

enable = false
function answer()
    while enable == true do 
        if game:GetService("ReplicatedStorage").Time.TimeLeft.Value < 3 then
            local args = {
                [1] = game:GetService("ReplicatedStorage").HintAnswer.Value,
                [2] = 4
            }
            
            game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(unpack(args))
        end
    end
end

local Main = Library:Create("Pi Hub - Longest Answer Wins")
local TabH = Main.MakeTab("Pi Hub - Longest Answer Wins (Home)", 18899804355)

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

game.Toggle("Auto Farm", enable, function(Bool)
    enable = Bool
    answer()
end)
