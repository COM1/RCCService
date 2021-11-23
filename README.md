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
- Done!
# STILL UNFINISHED!
