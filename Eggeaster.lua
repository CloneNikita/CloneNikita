--[[

        
    в–‘в–‘в–€вЂѓв–€в–Ђв–ЂвЂѓв–€в–ЂвЂѓв–€в–‘в–€вЂѓв–€в–ЂвЂѓ вЂѓв–€в–Ђв–ЂвЂѓв–€в–Ђв–€вЂѓв–€в–‘в–€вЂѓв–€в–Ђв–ЂвЂѓв–€вЂѓв–€в–Ђв–ЂвЂѓв–€вЂѓв–€в–Ђв–ЂвЂѓв–€в–Ђв–„вЂѓ вЂѓв–€в–ЂвЂѓв–€в–Ђв–ЂвЂѓв–€в–Ђв–€вЂѓв–€вЂѓв–€в–Ђв–€вЂѓв–Ђв–€в–ЂвЂѓ вЂѓв–€в–Ђв–€вЂѓв–€в–Ђв–€вЂѓ вЂѓв–€в–ЂвЂѓв–€в–Ђв–„в–Ђв–€вЂѓв–Ђв–€в–ЂвЂѓв–€в–‘в–€вЂѓв–€в–„в–‘в–€
    в–€в–„в–€вЂѓв–€в–€в–„вЂѓв–„в–€вЂѓв–€в–„в–€вЂѓв–„в–€вЂѓ вЂѓв–€в–„в–„вЂѓв–€в–Ђв–„вЂѓв–€в–„в–€вЂѓв–€в–„в–„вЂѓв–€вЂѓв–€в–Ђв–‘вЂѓв–€вЂѓв–€в–€в–„вЂѓв–€в–„в–ЂвЂѓ вЂѓв–„в–€вЂѓв–€в–„в–„вЂѓв–€в–Ђв–„вЂѓв–€вЂѓв–€в–Ђв–ЂвЂѓв–‘в–€в–‘вЂѓ вЂѓв–€в–„в–€вЂѓв–€в–Ђв–„вЂѓ вЂѓв–„в–€вЂѓв–€в–‘в–Ђв–‘в–€вЂѓв–‘в–€в–‘вЂѓв–€в–Ђв–€вЂѓв–€в–‘в–Ђв–€
    why is loading custom models so hard | made by upio#7408 for penguin c:
    npcs and egg toy made by Luke3#5175, ui for the dialogue made by upio#7408
]]

-- initializing variables and stuff
local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
local tweenService = game:GetService("TweenService")
local jesusModel = game:GetObjects("rbxassetid://13048955592")[1] or LoadCustomInstance("rbxassetid://13048955592") 
local caveModel = game:GetObjects("rbxassetid://13049026203")[1] or LoadCustomInstance("rbxassetid://13049026203")
local CameraShaker = require(game:GetService("ReplicatedStorage").CameraShaker)
local ranBoulderProximityPrompt = false

-- Npcs
local civilian1 = game:GetObjects("rbxassetid://13051551926")[1]
local civilian2 = game:GetObjects("rbxassetid://13051633935")[1]
local civilian3 = game:GetObjects("rbxassetid://13052090579")[1]
local tablewithuno = game:GetObjects("rbxassetid://13053069721")[1]
local luk3 = game:GetObjects("rbxassetid://13053085601")[1]
local upio = game:GetObjects("rbxassetid://13053089753")[1]

--Toy and Model For The Egg
local easternegg = game:GetObjects("rbxassetid://13053213567")[1]

-- misc functions
function deleteStuff()
    if workspace.CurrentRooms["0"]:FindFirstChild("RiftSpawn") then
        workspace.CurrentRooms["0"].RiftSpawn:Destroy()
    end
    
    for _,i in ipairs(workspace.CurrentRooms["0"].Assets:GetChildren()) do
        if i.Name == "Luggage" or i.Name == "Luggage_Cart" or i.Name == "Luggage_Cart_Crouch" then
            i:Destroy()
        end
    end
end

function fadeOutThing(object,seconds)
    for _,instance in ipairs(object:GetDescendants()) do
        if instance:IsA("MeshPart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("Decal") then
            print()
            tweenService:Create(instance, TweenInfo.new(seconds,Enum.EasingStyle.Quad), {
                ["Transparency"] = 1
            }):Play()
        end
    end
end

function fadeInThing(object,seconds)
    local function fadeIn(part,seconds)
        local initialTransparency = part.Transparency
        part.Transparency = 1
        local tween = tweenService:Create(part, TweenInfo.new(seconds, Enum.EasingStyle.Quad), {Transparency = initialTransparency}):Play()
    end

    for _, instance in pairs(object:GetDescendants()) do
        if instance:IsA("MeshPart") or instance:IsA("UnionOperation") or instance:IsA("Part") or instance:IsA("Decal") then
            fadeIn(instance,seconds)
        end
    end
end

-- parenting stuff
jesusModel.Parent = workspace
caveModel.PrimaryPart = caveModel.Boulder

-- i forgot to set it's primary part ._.
jesusModel.PrimaryPart = jesusModel["Plank Vertical"]

-- tp in front of the elevator
jesusModel:PivotTo(CFrame.new(Vector3.new(0.237418652, 2.02649975, 3241.82837, -1.62920685e-07, -1, 1.40790661e-07, 1, -1.62920685e-07, -3.58895669e-08, 3.58895882e-08, 1.40790661e-07, 1)) * CFrame.Angles(0, math.rad(180), math.rad(90)))

-- delete misc things that might interfere
deleteStuff()

-- main code
jesusModel.jesus.ProximityPrompt.Triggered:Connect(function()
    
    Achievements.Get({
        Title = "Hey wait this isnt about eggs?",
        Desc = "I thought april was about bunnies and rainbow eggs",
        Reason = "See jesus christ being crucified",
        Image = "https://raw.githubusercontent.com/persopoiu/scripts/main/66963_easter_egg_green_icon.png",
    })
    -- fade out
    fadeOutThing(jesusModel,0.5)
    wait(0.5)
    jesusModel:Destroy()

    -- fade in
    caveModel.Parent = workspace
    wait()
    fadeInThing(caveModel,1.5)

    -- move the cave model
    caveModel:PivotTo(CFrame.new(Vector3.new(0, -1.3, 3250, 1, 0, 0, 0, 1, 0, 0, 0, 1)) * CFrame.Angles(math.rad(-90), 0, 0))
    -- Npc 1
	civilian1.Parent = game.workspace
	    wait()
    fadeInThing(civilian1,1.5)
   -- Npc 2
	civilian2.Parent = game.workspace
	    wait()
    fadeInThing(civilian2,1.5)
	--npc 3
	civilian3.Parent = game.workspace
	    wait()
    fadeInThing(civilian3,1.5)
	--Easteregg
	easternegg.Parent = game.workspace
	    wait()
    fadeInThing(easternegg,1.5)
    --tablewithuno
	tablewithuno.Parent = game.workspace
	    wait()
    fadeInThing(tablewithuno,1.5)
    --Luk3
	luk3.Parent = game.workspace
	    wait()
    fadeInThing(luk3,1.5)
    --Upio
	upio.Parent = game.workspace
	    wait()
    fadeInThing(upio,1.5)
end)

caveModel.Boulder.ProximityPrompt.Triggered:Connect(function()

    spawn(function()
        if not ranBoulderProximityPrompt then
            -- caption
            firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'you feel the ground shaking violently...',true,2.5)

            -- camera shake
            local camShake = CameraShaker.new(200, function(shakeCFrame)
                game.Workspace.CurrentCamera.CFrame = game.Workspace.CurrentCamera.CFrame * shakeCFrame
            end)
            camShake:Start()
            camShake:Shake(CameraShaker.Presets.Explosion)
            wait(1)
            camShake:Stop()

            ranBoulderProximityPrompt = true
        end
    end)

    local boulder = caveModel.Boulder

    spawn(function()
        for _,i in ipairs(workspace.cave:GetChildren()) do
            if i.Name == " " then
                fadeOutThing(i,.5)
            end
        end

        wait(.5)
        for _,i in ipairs(workspace.cave:GetChildren()) do
            if i.Name == " " then
                i:Destroy()
            end
        end
    end)
    
    tweenService:Create(boulder, TweenInfo.new(1.2, Enum.EasingStyle.Quad),{
        ["Rotation"] = Vector3.new(80,0,0),
        ["Position"] = Vector3.new(boulder.Position.X,boulder.Position.Y,3258)
    }):Play()

    while wait(0.1) do
        local primaryPart = caveModel.Jesus.Torso
        local camera = workspace.CurrentCamera
        local player = game.Players.LocalPlayer
        local distanceThreshold = 10 -- the maximum distance between the player and the Jesus model for the achievement to be earned
    
        -- check if the player is within the distance threshold of the Jesus model's primary part
        local distance = (primaryPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
        
        if distance <= distanceThreshold then
            -- check if the player's camera is looking at the Jesus model's primary part
            local direction = primaryPart.Position - camera.CFrame.Position
            local dotProduct = direction.Unit:Dot(camera.CFrame.LookVector.Unit)
            
            if dotProduct > 0.9 then -- the player is looking at the Jesus model
                break
            end
        end
    end

    Achievements.Get({
        Title = "Resurection",
        Desc = "whattt wait whattt?",
        Reason = "See jesus resurrected",
        Image = "https://github.com/persopoiu/scripts/raw/main/Untitled.png",
    })
end)

local npcdialogue = Instance.new("ScreenGui")
local dialogueFrame = Instance.new("ImageLabel")
local dialogueLabel = Instance.new("TextLabel")

npcdialogue.Name = "npcdialogue"
npcdialogue.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
npcdialogue.Enabled = false
npcdialogue.ResetOnSpawn = false

dialogueFrame.Name = "dialogueFrame"
dialogueFrame.Parent = npcdialogue
dialogueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
dialogueFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dialogueFrame.BackgroundTransparency = 1.000
dialogueFrame.Position = UDim2.new(0.5, 0, 0.850000024, 0)
dialogueFrame.Size = UDim2.new(0.5, 0, 0.200000003, 0)
dialogueFrame.Image = "rbxassetid://3570695787"
dialogueFrame.ImageColor3 = Color3.fromRGB(45, 45, 45)
dialogueFrame.ScaleType = Enum.ScaleType.Slice
dialogueFrame.SliceCenter = Rect.new(100, 100, 100, 100)
dialogueFrame.SliceScale = 0.120

dialogueLabel.Name = "dialogueLabel"
dialogueLabel.Parent = dialogueFrame
dialogueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dialogueLabel.BackgroundTransparency = 1.000
dialogueLabel.Size = UDim2.new(1, 0, 1, 0)
dialogueLabel.Font = Enum.Font.Oswald
dialogueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
dialogueLabel.TextScaled = true
dialogueLabel.TextSize = 14.000
dialogueLabel.TextWrapped = true

local function npc1dialogue()
    dialogueLabel.Text = "I think i saw someone inside that cave, but the guards didnt let me enter..."
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

local function npc2dialogue()
    dialogueLabel.Text = "Fire is so beautifull but at the same time, It can be fatal..."
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

local function npc3dialogue()
    dialogueLabel.Text = "I... I watched everything... Btw this chair is pretty comfortable lol"
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

local function luk3dialogue()
    dialogueLabel.Text = "We need one more person to play uno with us... PenguinManiack didnt answered..."
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

local function upiodialogue()
    dialogueLabel.Text = "Me and Luk3 tried to play uno, but we need one more person..."
    local text = dialogueLabel.Text
   for i = 1, #text do
        dialogueLabel.Text = string.sub(text, 1, i)
        wait(0.05) -- Adjust the speed of the typing effect
    end
end

civilian1.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
     npc1dialogue()
	 wait(2)
	 npcdialogue.Enabled = false
end)

civilian2.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
	npc2dialogue()
	 wait(2)
	npcdialogue.Enabled = false
end)

civilian3.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
	npc3dialogue()
	 wait(2)
	npcdialogue.Enabled = false
end)

luk3.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
	luk3dialogue()
	 wait(2)
	npcdialogue.Enabled = false
end)

upio.ModulePrompt.Triggered:Connect(function()
	 npcdialogue.Enabled = true
	upiodialogue()
	 wait(2)
	npcdialogue.Enabled = false
end)

easternegg.ModulePrompt.Triggered:Connect(function()
local Equipped = false
local Plr = game.Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local eegg = game:GetObjects("rbxassetid://13053427070")[1]

eegg.Parent = game.Players.LocalPlayer.Backpack

	eegg.Equipped:Connect(function()
		Equipped = true
    local Idle = eegg.Animations.idle
    local IdleTrack = Hum:LoadAnimation(Idle)

    IdleTrack:Play()
	end)

	eegg.Unequipped:Connect(function()
		Equipped = false
        IdleTrack:Stop()
	end)
	easternegg:Destroy()
end)
