local HttpService = game:GetService("HttpService")
local ScriptContext = game:GetService("ScriptContext")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ContentProvider = game:GetService("ContentProvider")
local ThumbnailGenerator = game:GetService("ThumbnailGenerator")
local URL = "http://127.0.0.1:3000"
 
HttpService.HttpEnabled = true
ScriptContext.ScriptsDisabled = true
ContentProvider:SetBaseUrl(URL)
 
function Oldify(model)
    Lighting.Outlines = false
    
    if model:IsA("BasePart") then
        model.Material = Enum.Material.SmoothPlastic
        local studTop = Instance.new("Texture")
        local studBottom = Instance.new("Texture")
        
        studTop.Texture = "rbxasset://textures/studs/top.png"
        studBottom.Texture = "rbxasset://textures/studs/bottom.png"
        
        studTop.Face = "Top"    
        studBottom.Face = "Bottom"
 
        studTop.Parent = model
        studBottom.Parent = model
        
        studBottom.StudsPerTileU = 1 
        studTop.StudsPerTileU = 1 
        studBottom.StudsPerTileV = 1 
        studTop.StudsPerTileV = 1 
        
        for _, obj in pairs(model:GetChildren()) do
            if obj:IsA("Decal") then
                if obj.Texture == "rbxasset://textures/face.png" then
                    obj.Texture = "rbxasset://textures/face_old.png"
                end
            end
        end
    end
    
    for _, child in pairs(model:GetChildren()) do
        Oldify(child)
    end
end
 
local function GenerateThumbnail()
    local Player = Players:CreateLocalPlayer(0)
    Player:LoadCharacter()
    RunService:Run()
    workspace.Player1.Name = "ModelThumbnail"
 
    --Oldify(workspace.ModelThumbnail)
    workspace.ModelThumbnail["Head"].BrickColor = BrickColor.new(24)
    workspace.ModelThumbnail["Left Arm"].BrickColor = BrickColor.new(24)
    workspace.ModelThumbnail["Right Arm"].BrickColor = BrickColor.new(24)
    workspace.ModelThumbnail["Left Leg"].BrickColor = BrickColor.new(119)
    workspace.ModelThumbnail["Right Leg"].BrickColor = BrickColor.new(119)
    workspace.ModelThumbnail["Torso"].BrickColor = BrickColor.new(23)
    
    -- Worker
    HttpService:PostAsync(
        URL .. "/upload",
        ThumbnailGenerator:Click("PNG", 1024, 1024, true),
        Enum.HttpContentType.TextPlain
    )
 
    print("Uploaded thumbnail successfully")
end
 
function start(...)
    print("Working...")
    GenerateThumbnail()
    game:Close()
end
 
start()
 
-- EOF
