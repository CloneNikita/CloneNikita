function notif(title,desc,rea)
    local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/SoriSoft/HazeServices/main/CustomService/Achievements/Service.lua"))()
    a.Get({
        Title = title,
        Desc = desc,
        Reason = rea,
        Image = "https://cdn.britannica.com/43/172743-138-545C299D/overview-Barack-Obama.jpg?w=800&h=450&c=crop"
    })
end
notif("Script is down", "I needed to add more stuff here", "Sorry about that, i will make a new sneak peek")
