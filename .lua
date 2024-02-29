local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()
local wndw = lib:Window("VIP Turtle Hub V4 - 🤔🤯🤦")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Hatch")
local peler = {}
local self = {
    remote = {
        click = "",
        hourly = "",
        chest = "",
        egg = ""
    }
}

lib:AddTable(game:GetService("ReplicatedStorage")["Assets"]["Eggs"],peler)

T1:Toggle("Auto click",false,function(value)
    _G.click = value
    while wait() do
      if _G.click == false then break end
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.click]:FireServer()
    end
end)

T1:Toggle("Auto hourly reward",false,function(value)
    _G.hrew = value
    while wait() do
      if _G.hrew == false then break end
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("1")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("2")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("3")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("4")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("5")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("6")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("7")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("8")
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.hourly]:FireServer("9")
    end
end)

T1:Toggle("Auto claim free chest",false,function(value)
    _G.freechest = value
    while wait() do
      if _G.freechest == false then break end
      game:GetService("ReplicatedStorage")["Communication"]["Events"][self.remote.chest]:FireServer("Free Chest")
    end
end)

T2:Dropdown("Select egg",peler,function(value)
    _G.egg = value
end)

T2:Toggle("Auto Hatch",false,function(value)
    _G.pecah = value
    while wait() do
      if _G.pecah == false then break end
      game:GetService("ReplicatedStorage")["Communication"]["Functions"][self.remote.egg]:InvokeServer("Single",_G.egg)
    end
end)

lib:HookFunction(function(method,vulkan,args)
    if vulkan == "" and method == "InvokeServer" and args[1] == "Single" then
            vulkan = "Egg"
            self.remote.egg = vulkan
    elseif vulkan == "" and method == "FireServer" and args[1] == "Free Chest" then
            vulkan = "Chest"
            self.remote.chest = vulkan
    elseif vulkan == "" and method == "FireServer" and args[1] == "1" or args[1] == "2" or args[1] == "3" or args[1] == "4" or args[1] == "5" or args[1] == "6" or args[1] == "7" or args[1] == "8" or args[1] == "9" then
            vulkan = "Hourly"
            self.remote.hourly = vulkan
    elseif vulkan == "" and method == "FireServer" and self.remote.click == "" or self.remote.click == nil then
            vulkan = "Click"
            self.remote.click = vulkan
    end
end)
