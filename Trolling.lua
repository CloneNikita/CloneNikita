function notif(title,desc,rea)
    local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/SoriSoft/HazeServices/main/CustomService/Achievements/Service.lua"))()
    a.Get({
        Title = title,
        Desc = desc,
        Reason = rea,
        Image = "https://cdn.britannica.com/43/172743-138-545C299D/overview-Barack-Obama.jpg?w=800&h=450&c=crop"
    })
end
notif("Script working", "wow trolled by devs","LMAO")
game.Workspace.CurrentRooms.ChildAdded:Connect(function()
if game.Workspace.Ambience_Seek.Playing == false then
  local eyes = math.random(1,2)
if eyes == 1 then
local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
local Configuration = {
    Kill = true, -- change to "Damage = 10," for eyes, doesnt work on other entities
    Damage = 10,
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 0 -- 5 for rush, doesnt work on other entitie


}
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"Any problems?","ur noob!","I have no idea whats is that entity.", "Keep look at it"}, "Blue")
wait(2.3)
game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Death.Text = "Died to Eyes"
EntitySpawner:Spawn("Eyes", Configuration)
end
local dot = math.random(1,3)
    if dot == 1 then
local ran = math.random(1,10)
  if ran > 1 then
 loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 
  elseif ran == 1 then
local new = math.random(1,5)
if new > 1 then
notif("Lol", "Dont hide!", "coz noob hide")
repeat

wait(3)
loadstring(game:HttpGet("https://raw.githubusercontent.com/CloneNikita/CloneNikita/main/Troll.lua"))() 

until
elseif new == 1 then
firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"Any problems?","Oh you died to ur mom","she said you needed to go do ur home work", "i love hotmoms"}, "Blue")
game.Players.LocalPlayer.Character.Humanoid.Health = 0

end
 end
end 
end
end)
    
