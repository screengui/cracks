local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "HaidezHub V2",  -- Nome exibido na janela e introdução
    HidePremium = false,    -- Esconder funções premium (false para exibi-las)
    SaveConfig = true,      -- Salvar as configurações automaticamente
    ConfigFolder = "HaidezHub",  -- Pasta onde as configurações serão salvas
    IntroEnabled = true,    -- Ativar introdução ao abrir
    IntroText = "HaidezHub V2", -- Texto exibido na introdução
    IntroIcon = "rbxassetid://127694712584422"  -- ID do ícone mostrado na introdução
})

-- Criando a aba Fisch
local FischTab = Window:MakeTab({
    Name = "Fisch",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Fisch
    PremiumOnly = false
})

-- Criando a seção dentro da aba Fisch
local FischSection = FischTab:AddSection({
    Name = "Seção Fisch"
})

-- Criando os botões na aba Fisch
FischTab:AddButton({
    Name = "God Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

FischTab:AddButton({
    Name = "Speed Hub (Recomendado)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

FischTab:AddButton({
    Name = "Solix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))() 
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

FischTab:AddButton({
    Name = "Mercury Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c019f214a19894b50f0b8e817b70d25f.lua"))() 
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

FischTab:AddButton({
    Name = "Naoki Hub",
    Callback = function()
        loadstring(game:HttpGet("https://naokihub.vercel.app", true))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

FischTab:AddButton({
    Name = "Nil Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2c5f110f91165707959fc626b167e036.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

FischTab:AddButton({
    Name = "KNCRYPT Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Kncrypt/refs/heads/main/sources/Fisch.lua", true))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

FischTab:AddButton({
    Name = "Cupink Hub",
    Callback = function()
        loadstring(game:HttpGet("https://you.whimper.xyz/sources/CupPink/fisch.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

FischTab:AddButton({
    Name = "Romix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fcbdda745da39b237faf2766f6d8d9cb.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})



-- Criando a aba Blox-Fruits
local BloxFruitsTab = Window:MakeTab({
    Name = "Blox-Fruits",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Blox-Fruits
    PremiumOnly = false
})

-- Criando a seção dentro da aba Blox-Fruits
local BloxFruitsSection = BloxFruitsTab:AddSection({
    Name = "Seção Blox-Fruits"
})

-- Criando os botões na aba Blox-Fruits
BloxFruitsTab:AddButton({
    Name = "ThurdenZ Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/Loader/AllGame.lua'))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

BloxFruitsTab:AddButton({
    Name = "Redz Hub (Recomendado)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

BloxFruitsTab:AddButton({
    Name = "W-azure (Recomendado)",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

BloxFruitsTab:AddButton({
    Name = "Alchemy Hub",
    Callback = function()
        loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

BloxFruitsTab:AddButton({
    Name = "Moon Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Jadelly261/BloxFruits/main/MoonHub", true))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

-- Criando os botões na aba Blox-Fruits
BloxFruitsTab:AddButton({
    Name = "Yumiara Hub",
    Callback = function()
        loadstring(game.HttpGet(game,'https://raw.githubusercontent.com/Yumiara/Python/refs/heads/main/BloxFruit-XYZ.lua'))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

BloxFruitsTab:AddButton({
    Name = "HOHO Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

BloxFruitsTab:AddButton({
    Name = "Xero Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/verudous/Xero-Hub/refs/heads/main/main.lua"))() 
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

BloxFruitsTab:AddButton({
    Name = "Speed Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
}) 

-- Criando a aba Blade-Ball
local BladeBallTab = Window:MakeTab({
    Name = "Blade-Ball",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Blade-Ball
    PremiumOnly = false
})

-- Criando a seção dentro da aba Blade-Ball
local BladeBallSection = BladeBallTab:AddSection({
    Name = "Seção Blade-Ball"
})

-- Criando os botões na aba Blade-Ball
BladeBallTab:AddButton({
    Name = "Bakuga Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/Bakugan/refs/heads/main/Bakugan.lua", true))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

BladeBallTab:AddButton({
    Name = "Fsploit Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/Flux-Z-Beta/refs/heads/main/Flux-Z-Beta-Blade-Ball.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

BladeBallTab:AddButton({
    Name = "Waver Hub ",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JoshSheesh/Waver-Full-Script/refs/heads/main/Protected_7926735646342814.txt"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})


-- Criando a aba Pet-Simulator
local PetSimulatorTab = Window:MakeTab({
    Name = "Pet-Simulator",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Pet-Simulator
    PremiumOnly = false
})

-- Criando a seção dentro da aba Pet-Simulator
local PetSimulatorSection = PetSimulatorTab:AddSection({
    Name = "Seção Pet-Simulator"
})

-- Criando os botões na aba Pet-Simulator
PetSimulatorTab:AddButton({
    Name = " Kitty Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BludnyHolandan/PS99/main/v3/autofarm/lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

-- Criando os botões na aba PetSimulator
PetSimulatorTab:AddButton({
    Name = "Hunter Hub (Mobile/Emulador)",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/SkaiScripts/Huge-Hunter/refs/heads/main/Ps99.lua"))()  
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})

--Criando os botões na aba PetSimulator
PetSimulatorTab:AddButton({
    Name = "Admin Hub (Mobile/Emulador)",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/4hmadV99/Admin-Script/refs/heads/main/Pets%20Spawner.txt"))()  
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",  -- Você pode mudar a imagem se quiser
            Time = 5
        })
    end
})


-- Criando a aba Murder-Mystery
local MurderMysteryTab = Window:MakeTab({
    Name = "Murder-Mystery",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Murder-Mystery
    PremiumOnly = false
})

-- Criando a seção dentro da aba Murder-Mystery
local MurderMysterySection = MurderMysteryTab:AddSection({
    Name = "Seção Murder-Mystery"
})

-- Criando os botões na aba Murder-Mystery
MurderMysteryTab:AddButton({
    Name = "Overdrive Hub (Mobile/Emulador)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/moonlast/MM2/refs/heads/main/XHub"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Criando a aba Doors
local DoorsTab = Window:MakeTab({
    Name = "Doors",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Doors
    PremiumOnly = false
})

-- Criando a seção dentro da aba Doors
local DoorsSection = DoorsTab:AddSection({
    Name = "Seção Doors"
})

-- Criando os botões na aba Doors
DoorsTab:AddButton({
    Name = "King Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

DoorsTab:AddButton({
    Name = "Misp Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Criando a aba BlueLock-Rivals
local BlueLockRivalsTab = Window:MakeTab({
    Name = "BlueLock-Rivals",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba BlueLock-Rivals
    PremiumOnly = false
})

-- Criando a seção dentro da aba BlueLock-Rivals
local BlueLockRivalsSection = BlueLockRivalsTab:AddSection({
    Name = "Seção BlueLock-Rivals"
})

-- Criando os botões na aba BlueLock-Rivals
BlueLockRivalsTab:AddButton({
    Name = "NS Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/fo/refs/heads/main/ot"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Criando a aba Pets Go
local PetsGoTab = Window:MakeTab({
    Name = "Pets Go",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Pets Go
    PremiumOnly = false
})

-- Criando a seção dentro da aba Pets Go
local PetsGoSection = PetsGoTab:AddSection({
    Name = "Seção Pets Go"
})

-- Criando os botões na aba Pets Go
PetsGoTab:AddButton({
    Name = "Speed Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/mzkv/petsGO/refs/heads/main/xhub"))()  
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Criando a aba Jujutsu-Infinite
local JujutsuInfiniteTab = Window:MakeTab({
    Name = "Jujutsu-Infinite",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Jujutsu-Infinite
    PremiumOnly = false
})

-- Criando a seção dentro da aba JujutsuInfinite
local JujutsuInfiniteSection = JujutsuInfiniteTab:AddSection({
    Name = "Seção Jujutsu-Infinite"
})

-- Criando os botões na aba Jujutsu-Infinite
JujutsuInfiniteTab:AddButton({
    Name = "Solix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))() 
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Criando os botões na aba Jujutsu-Infinite
JujutsuInfiniteTab:AddButton({
    Name = "Vintu Hub",
    Callback = function()
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f9caf82bff389f078eb1641ac0c0c131.lua"))()
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Criando os botões na aba Jujutsu-Infinite
JujutsuInfiniteTab:AddButton({
    Name = "Solix Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/debunked69/Solixreworkkeysystem/refs/heads/main/solix%20new%20keyui.lua"))() 
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Criando a aba Squid-Game
local SquidGameTab = Window:MakeTab({
    Name = "Squid-Game",
    Icon = "rbxassetid://126633428869869",  -- Ícone para a aba Squid-Game
    PremiumOnly = false
})

-- Criando a seção dentro da aba Squid-Game
local SquidGameSection = SquidGameTab:AddSection({
    Name = "Seção Squid-Game"
})

-- Criando os botões na aba Squid-Game
SquidGameTab:AddButton({
    Name = "Squid Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/r4mpage4/4R4mpageHub/refs/heads/main/squidgamex"))();
        OrionLib:MakeNotification({
            Name = "Script Executado",
            Content = "O script foi executado com sucesso.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

OrionLib:Init()
