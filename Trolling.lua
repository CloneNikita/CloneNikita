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
"You died to Kardin Hong"
"You have hidden talents 🔥🔥 keep it hidden",
">v<",
"this thing sucks ima watch youtube shorts",
"L",
"ratio",
"If there is a hole then there is a goal -Masteroogwgay",
"this aint doors",
"👎",
"You died to heart attack",
"192.134.5.182",
"Dont follow your dreams, follow my twitter",
"Not quite but we upp 💯💯🔥🔥",
"😭😭😭",
"💀",
"Only in ohio 💀💀💀"
}
local gonnatexts = {
"CRUCIFIX FOR NOOBS!",
"Dont ask LSPLASH for a crucifix.",
"Crucifix now working on rush",
"Your microphone is soo bad",
"Seek chase is impossible!",
"Nice gaming chair",
"Dont click play again",
"You died for opening a door, lol",
"Your id address is: 132.132.31.21",
"DONT RAN THIS SCRIPT ALWAYS!",
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
local dot = math.random(1,3)
    if dot == 1 then
local ran = math.random(1,5)
  if ran > 1 then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
  elseif ran == 1 then
local new = math.random(1,3)
if new > 2 then
repeat
wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
wait(2)
until
warn("end")
elseif new == 1 then
game.Players.LocalPlayer.Character.Health = 0
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"Cali...", "I wanna say you something.",gonnatexts[math.random(1,#gonnatexts)]}, "Blue")
elseif new == 2 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Rush.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
end
elseif dot == 2 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Rush.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
elseif dot == 3 then
local ae = math.random(1,5)
if ae == 1 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Trollrush.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
end
end
warn("please work please god PLS GOD")
end
end
warn("what did i wrong?") 
end)
    
