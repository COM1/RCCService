# RCCService
radical clout calculator service - for cool kids only 😎😎😎😎🤟🤟🤟🤟<br><br>
# What is RCCService?
its a service to add to [roblox](https://roblox.com) that let you render ur **character** and calculate your epic clout on the internet!!!<br>
idk what to say but ummmmmmmmmmmm yeah.<br><br>
# How to use RCCService?
1. download the repo
2. run the `Roblox.exe` file with administrator
3. patch it patch it patch it patch it patch it patch it (patching guide wuld b below)
4. press `Windows + R` and type `cmd`, then press `Enter`
5. now redirect to `C:\\Program Files (x86)\Roblox\RCC-(hash)` example `RCC-CFE0CBB37E5D` <br>
  - for dumbasses:
      - directory to go into a folder. example: `cd desktop`
      - go into multiple directory: `cd directory1/directory2`
      - go out of a directory: `cd ..`
6. to run it: you need a txt file called `gameserver.txt`. theres a lot of script out there, you got to find it
- you also need to use cmd too! type `rccservice.exe -console -start -placeid:1818` to render!
- make sure its patched so you can use it or else it will just give you ten billion errors
<br><br>
# Patching
## Trust check
- Use x64dbg. If you dont have it, download it [here](https://x64dbg.com)
- Put the RCCService.exe (after installing it) into x32dbg (included in x64dbg)
- Press "Symbols"<br>
![image](https://user-images.githubusercontent.com/92669198/143044145-65e2a5ad-e0c0-4790-85e7-773f0257736f.png)<br>
- Double-click on your client under the modules column (RCCService.exe)
- Right-click in assembly view
- Select `Search for... > Current Module > String References`
- Type in trust check and double click on the one that says something like "Trust check failed"
- Double-click it
- Look up one line to find a line that contains "jne"
- Press yo spacebar and change "jne" -> "jmp"
- Press Enter and leave the small windows you used to change from "jne" to "jmp"
- It should look something like this:<br>
![image](https://user-images.githubusercontent.com/92669198/143044964-4886fa06-bb1e-4b23-ae65-4442b8a8d586.png)<br>
- Patch it and done!
## not finished <br><br>
# this thing yeah thx brent dont murder me:
Vouch.
If you guys don't trust his site, then what about Roblox's client deployment site?
http://setup.roblox.com/RCC-RobloxAB1FEC8F0BB9C736E1454364EA6D7D38.exe <br>
It honestly was very easy to put together. Some guy by the name of CPP leaked the installer's hash here: https://v3rmillion.net/showthread.php?tid=286273 He flexed about having a publicly available file that literally anyone can access. He supposedly hacked their admin panel and managed to get an RCCService installer that mao, carrot, coke, and a few others found on an anti-malware site. <br>
Here's proof that it works:  https://www.dropbox.com/s/p1jbrpaecpi7q9g/RCCGamermoment.png?dl=0 <br>
![image](https://user-images.githubusercontent.com/92669198/143527879-258328b1-cb80-40f9-a9d9-d30ef3596e3c.png) <br>
If you're wondering what Roblonium is, it's my revival. I know how to patch Roblox clients. The one I've patched is from 2013.
By the way. Use a debugger once in a while. Damn. You guys don't trust what he has on his site but you're too lazy to open up a debugger and verify it yourselves.

Setup Guide:
1. Run the installer as an administrator
2. In C:\Program Files (x86)\Roblox\ there should be a folder
3. Write a gameserver script with a function called start declared.
4. Save it to the folder and name it "gameserver.txt"
5. Open a command prompt, cd to the directory.
6. Enter RCCService.exe -Console -Start -PlaceId:1818
7. It should work hopefully.
Here's my thumbnail rendering script:
```lua
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
```
As a side note, hosting game servers are basically useless since you can't join them on any clients. This is basically something fun to mess around with. Unless you decide to use it as a thumbnail renderer for your revival like Dshoe10 and I do.
Also can I get some thumbs up pls? I've had like three people DM me on Discord thanking me for this along with asking questions, but I've had no one rating the post.<br><br>
# Archive of the RCCs in this repo:
https://web.archive.org/web/2019*/http://setup.roblox.com/version-d758ba82bfa54461-RCC-RobloxAB1FEC8F0BB9C736E1454364EA6D7D38.exe
https://web.archive.org/web/2019*/http://setup.roblox.com/version-d758ba82bfa54461-RCCService2AFBA34ACD542E96B3890871CBA18F43.zip <br><br>
# STILL UNFINISHED!
la do not murder me for this i have kids
