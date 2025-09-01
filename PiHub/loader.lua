local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/refs/heads/main/source')))()

local Window = OrionLib:MakeWindow({
		Name = "Pi Hub",
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = "OrionTest",
		IntroText = "Loading Script..."       
})

local Tab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Universal Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Games Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab4 = Window:MakeTab({
	Name = "Beta Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Copy Pi Hub Discord!",
	Callback = function()
      		setclipboard("https://discord.gg/dVSFmJYDdS")
  	end    
}) 

Tab2:AddButton({
    Name = "Universal Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/universal.lua",true))()
    		
    end
}) 

Tab3:AddButton({
    Name = "Blade Ball",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/bladeball.lua",true))()
    end
})

Tab3:AddButton({
    Name = "Pet Simulator 99",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/ps99.lua",true))()
    end
})  


Tab3:AddButton({
    Name = "Murder Mystery 2 (BETA)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/mm2.lua",true))()
    end
}) 

Tab3:AddButton({
    Name = "Rivals",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/rivals.lua",true))()
    end
}) 

Tab3:AddButton({
    Name = "Flex Your FPS",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/flexyourfps.lua",true))()
    end
}) 

Tab3:AddButton({
    Name = "Longest Answer Wins",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/longestanswerwin.lua",true))()
    end
}) 

Tab3:AddButton({
    Name = "Plinko",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/screengui/cracks/refs/heads/main/PiHub/plinko.lua",true))()
    end
})
    
OrionLib:Init()
