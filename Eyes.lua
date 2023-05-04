local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()

local Configuration = {

    Kill = true, -- change to "Damage = 10," for eyes, doesnt work on other entities

    Damage = 10,

    Speed = 160, -- 60 for rush, doesnt work on other entities

    Time = 0 -- 5 for rush, doesnt work on other entitie

 

 

}



EntitySpawner:Spawn("Eyes", Configuration)
