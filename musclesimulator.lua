local library = loadstring(game:HttpGet("https://remhub.net/upload/ui.lua"))() -- cal the lib
local a = library:NewWindow("Shitty", " game")
local section1 = a:NewSection("Autofarms")
local section2 = a:NewSection("Player")
section1:Toggle("Auto Lift", function(value)
    weightlift = value
    while weightlift do wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Weight)
    game:GetService("VirtualUser"):ClickButton1(Vector2.new())
 end
end)
section1:Toggle("Auto Pushup", function(value)
    pushup = value
    while pushup do wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack.Pushups)
    game:GetService("VirtualUser"):ClickButton1(Vector2.new())
 end
end)

section1:Text("THE TOOLS NEED TO BE EQUIPPED")

section2:Slider("WalkSpeed", 9,500,function(a)
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = a
end)

section2:Slider("JumpPower", 50,500,function(a)
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.JumpPower = a
end)