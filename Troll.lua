local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Trollface", -- Custom name of your entity
    Model = "rbxassetid://11542250449", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2.75, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BreakLights = true,
    FlickerLights = {
        false, -- Enabled
        1.55, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1.55,
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        200, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://6862780932", -- Image1 url
            Image2 = "rbxassetid://6862780932", -- Image2 url
            Shake = true,
            Sound1 = {
               4910368846, -- SoundId
                { Volume = 1 }, -- Sound properties
            },
            Sound2 = {
                5289832659, -- SoundId
                { Volume = 2 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled ('false' if you don't want tease)
                Min = 4,
                Max = 4,
            },
        },
    },
    CustomDialog = {"Uhh...", "Alright."}
})
-- Run the created entity
   
Creator.runEntity(entity)
