local library = loadstring(game:HttpGet("https://remhub.net/upload/ui.lua"))() -- cal the lib
local a = library:NewWindow("Shitty", " game")
local section1 = a:NewSection("Autofarms")
local section2 = a:NewSection("Player")
section1:Toggle("Autofarm", function(value)
     game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500,500,500)
    weightlift = value
    while weightlift do wait(0.5)
 for i,v in pairs(game:GetDescendants()) do
    if v.Name == "Pushups" and v.Parent ~= game.Players.LocalPlayer.Backpack then
    game:GetService("VirtualUser"):ClickButton1(Vector2.new())
    elseif v.Parent == game.Players.LocalPlayer.Backpack and v.Name ~= "Combat" and v.Name ~= "Stomp" then
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
    end
 end
    end
if weightlift == false then
     game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)

section2:Slider("WalkSpeed", 9,500,function(a)
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = a
end)

section2:Slider("JumpPower", 50,500,function(a)
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.JumpPower = a
end)
