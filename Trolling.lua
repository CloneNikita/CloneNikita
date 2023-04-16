warn("No fucking way if its worked")
local randomtexts = {
"Yo, ur noob",
"This game is trash",
"Never gonna give you up",
"hello baby Mama's",
"Yyeyeyeye hohoho",
"Nice gaming chair",
"GG, GO NEXT",
"You died to Trollface, i mean to ur mom",
"This game sucks man",
"Take crucifix",
"UR NOOB YOU ALWAYS JUST DIE!",
"You died to Calixos jr",
"You died to lolcat",
"You died to Kardin Hong",
"😭😭😭",
"🗿Go to die"
}
local gonnatexts = {
"Oow",
"Big L, You stepped on the 💩💩💩",
"you stepped on the shit",
"it will be better if that will happend in seek chase",
"😭",
"🗿🗿🗿",
"Shit",
"Oh Shit, here we go again",
"oh no, i have my life",
"Nah, its so sus",
"Screech sucks"
}
function notif(title,desc,rea)
    local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/SoriSoft/HazeServices/main/CustomService/Achievements/Service.lua"))()
    a.Get({
        Title = title,
        Desc = desc,
        Reason = rea,
        Image = "https://cdn.britannica.com/43/172743-138-545C299D/overview-Barack-Obama.jpg?w=800&h=450&c=crop"
    })
end
notif("If you see this mean script works", "Thats epic!", "Runeed")
game.Workspace.CurrentRooms.ChildAdded:Connect(function()
if game.Workspace.Ambience_Seek.Playing == false then
  local eyes = math.random(1,1)
if eyes == 1 then
local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Kill = true, -- change to "Damage = 10," for eyes, doesnt work on other entities
    Damage = 10,
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 0 -- 5 for rush, doesnt work on other entitie


}
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
wait(2.3)
game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Death.Text = "Died to Eyes"
EntitySpawner:Spawn("Eyes", Configuration)
end
local dot = math.random(1,2)
    if dot == 1 then
local ran = math.random(1,2)
  if ran > 1 then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
  elseif ran == 1 then
local new = math.random(1,6)
if new > 5 then
repeat
wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
wait(2)
until
warn("end")
elseif new == 1 then
game.Players.LocalPlayer.Character.WalkSpeed = 0
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'Now your ded, i spawn a troll',true,5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Broll.lua"))() 
wait(10)
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'Hahaha, i scammed you ur still alive.',true,5)
game.Players.LocalPlayer.Character.WalkSpeed = 0
elseif new == 2 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Rush.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
elseif new == 3 then
game.Players.LocalPlayer.Character.WalkSpeed = 0
game.Players.LocalPlayer.Character.Humanoid.Health -= 30
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,gonnatexts[math.random(1,#gonnatexts)],true,5)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
wait(3)
game.Players.LocalPlayer.Character.WalkSpeed = 16
elseif new == 4 then
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,"Nothing happend...",true,5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))()
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
elseif new == 5 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))()
wait(10)
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,"dude dont hide itz 100% safe",true,5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))()
end
end
end
end
warn("what did i wrong?") 
end)
    
