function notif(title,desc, rea)
    local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/SoriSoft/HazeServices/main/CustomService/Achievements/Service.lua"))()
    a.Get({
        Title = title,
        Desc = desc,
        Reason = rea,
        Image = "https://cdn.britannica.com/43/172743-138-545C299D/overview-Barack-Obama.jpg?w=800&h=450&c=crop"
    })
end
local latestroom = game.ReplicatedStorage.GameData.LatestRoom
if latestroom.Value ~= 50 then
    notif("Bypass anticheat in 50 doors", "50 door", "50")
elseif latestroom.Value ~= 50 then
notif("Loading... That will take less that minute.", "Bypass", "Bypass")
wait(35)
notif("Loaded. Enjoy this script", "TEST IT", "idk what put here")
wait(5)
while true do
warn("Got trolled")
end
end
