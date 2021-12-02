-- bodycolors
a = http:JSONDecode(http:GetAsync("your bodycolor api here"..id.."&rcc"))
bcolor = Instance.new("BodyColors", plr.Character)
bcolor.HeadColor = BrickColor.new(a[1])
bcolor.HeadColor = BrickColor.new(a[2])
bcolor.HeadColor = BrickColor.new(a[3])
bcolor.HeadColor = BrickColor.new(a[4])
bcolor.HeadColor = BrickColor.new(a[5])
bcolor.HeadColor = BrickColor.new(a[6])
