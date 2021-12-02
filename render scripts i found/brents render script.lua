function start(placeid, port, baseurl)
game:GetService("ContentProvider"):SetBaseUrl(baseurl)
game:GetService("ScriptContext").ScriptsDisabled = true
local plr = game.Players:CreateLocalPlayer(0)
plr.CharacterAppearance = "https://api.roblox.com/v1.1/avatar-fetch/?userId=15491471"
plr:LoadCharacter(false)
for i,v in pairs(plr.Character:GetChildren()) do
   print(v)
   if v:IsA("Tool") then
       plr.Character.Torso["Right Shoulder"].CurrentAngle = math.pi / 2
   end
end
print(game:GetService("ThumbnailGenerator"):Click("PNG", 1920, 1920, true))
end
