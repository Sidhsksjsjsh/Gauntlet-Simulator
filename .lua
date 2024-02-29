local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Hatch")
local peler = {}

lib:AddTable(game:GetService("ReplicatedStorage")["Assets"]["Eggs"],peler)

T1:Toggle("Auto click",false,function(value)
    _G.click = value
    while wait() do
      if _G.click == false then break end
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer()
    end
end)

T1:Toggle("Auto hourly reward",false,function(value)
    _G.hrew = value
    while wait() do
      if _G.hrew == false then break end
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("1")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("2")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("3")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("4")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("5")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("6")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("7")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("8")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("9")
    end
end)

T1:Toggle("Auto hourly reward",false,function(value)
    _G.freechest = value
    while wait() do
      if _G.freechest == false then break end
      game:GetService("ReplicatedStorage")["Communication"]["Events"][""]:FireServer("Free Chest")
    end
end)

T2:Dropdown("Select egg",peler,function(value)
    _G.egg = value
end)

T2:Toggle("Auto Hatch",false,function(value)
    _G.pecah = value
    while wait() do
      if _G.pecah == false then break end
      game:GetService("ReplicatedStorage")["Communication"]["Functions"][""]:InvokeServer("Single",_G.egg)
    end
end)
