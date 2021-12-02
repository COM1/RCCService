function start(placeid, port, baseurl)

game:GetService("ContentProvider"):SetBaseUrl(baseurl)
game:GetService("ScriptContext").ScriptsDisabled = true
local plr = game.Players:CreateLocalPlayer(0)
plr.CharacterAppearance = "http://www.squared.cf/v1.1/avatar-fetch"
plr:LoadCharacter()
local chr = plr.Character
chr.Torso.BrickColor = BrickColor.new(37)
chr.Head.BrickColor = BrickColor.new(3)
chr["Left Leg"].BrickColor = BrickColor.new(11)
chr["Right Leg"].BrickColor = BrickColor.new(11)
chr["Left Arm"].BrickColor = BrickColor.new(3)
chr["Right Arm"].BrickColor = BrickColor.new(3)
print("Rendering")
local b64 = game:GetService("ThumbnailGenerator"):Click("PNG", 420, 420, true)
print("heres ur render bitch")
print("data:image/png;base64,"..b64.."")
end
