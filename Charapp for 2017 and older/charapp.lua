-- bodycolors
a = http:JSONDecode(http:GetAsync("your bodycolor api here"..id.."&rcc"))
bcolor = Instance.new("BodyColors", plr.Character)
bcolor.LeftArmColor = BrickColor.new(a[1])
bcolor.LeftLegColor = BrickColor.new(a[2])
bcolor.RightArmColor = BrickColor.new(a[3])
bcolor.RightLegColor = BrickColor.new(a[4])
bcolor.HeadColor = BrickColor.new(a[5])
bcolor.TorsoColor = BrickColor.new(a[6])

-- accessories
b = http:JSONDecode (http:GetAsync("your accessories api here"..id.."&rcc"))
tool = false
for i, v in pairs(b) do
  thing = game:GetService("InsertService"):LoadAsset(v)
  if thing:GetChildren()[1].ClassName == "Tool" then
    if tool == false then
      tool = true
      thing:GetChildren()[1].Parent = plr.Character
    end
  else
    thing:GetChildren()[1].Parent = plr.Character
  end
end
