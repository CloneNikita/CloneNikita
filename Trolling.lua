warn("No fucking way if its worked")
local randomtexts = {
"Yo, ur noob",
"This game is trash",
"Never gonna give you up",
"hello baby Mama's",
"Yyeyeyeye hohoho",
"Nice gaming chair"

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
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"Any problems?","Keep look at it."}, "Blue")
wait(2.3)
game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Death.Text = "Died to Eyes"
EntitySpawner:Spawn("Eyes", Configuration)
end
local dot = math.random(1,2)
    if dot == 1 then
local ran = math.random(1,5)
  if ran > 1 then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
wait(2)
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {randomtexts[math.random(1,#randomtexts)]}, "Blue")
  elseif ran == 1 then
local new = math.random(1,3)
if new > 1 then
repeat
wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
until
end
end)
    
