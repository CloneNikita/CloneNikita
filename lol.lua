-- Moveable Work At Moblie/PC 
if game.PlaceId ~= 6520999642 then return end


local plr = game.Players.LocalPlayer
local AutoPlayer = true
local beingtrash = false
local HITCHANCE = 10
local HITSECONDS = 8
local MINHITSECONDS = 2
local AmountToSpam = 2
local LBOZO = false
local hasanticheat = false
local db = false
local NoteTiles = false
local anticheatkick = math.random(1000,4000)
local numer = 0
local AutoGG = false
local AutoToxic = false
local hidetiles = false
local anticheatver = "1.3"
local anticheatmessages = {"[HAC ".. anticheatver .."] Suspected Virtual Player", "[HAC ".. anticheatver .."] Anticheat Virtual Player spoofer Attempt.", "[HAC ".. anticheatver .."] Really Suspended Activity."}
local ToxicMessages = {"soo ez", "your soo bad", "ez", "SOO EZ", "get better nub", "blud is bad ez"}

function message(title,message,duration)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = title;
    Text = message;
    Duration = duration
})
end

local function sus(e)

                local vim = game:GetService("VirtualInputManager")
                local rs = game:GetService("RunService")
                
                local main = plr.PlayerGui.Main
        local mobilekeys = main.MatchFrame.MobileKeys
                local Player = 1
                spawn(function()
                while task.wait() do
                
           if AutoToxic == true and Player ~= 0 then
              task.wait(math.random(15,25))
              local randommsg = ToxicMessages[math.random(1,#ToxicMessages)]
              if AutoToxic == true and Player ~= 0 then
                 game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(randommsg, "All")
              end
              
           end
           
           
           
        end
                end)

                spawn(function()

                local fuck = nil            
                   fuck = plr.File.CurrentPlayer:GetPropertyChangedSignal("Value"):Connect(function(e)
                    if plr.Character.Humanoid.Health == 0 then
                      fuck:Disconnect()
                    end
                    task.wait(math.random(0.5,1))
            if Player == 0 and AutoGG == true and AutoToxic == false then

           game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("gg", "All")


                elseif Player == 0 and AutoGG == true and AutoToxic == true then
                game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("i won bozo soo ez", "All")
        end
                    end)
                end)
                spawn(function()
                        while task.wait() do
                        if plr.Character.Humanoid.Health == 0 then
                            break
                    end
      
                                if AutoPlayer then

                                        if plr.File.CurrentPlayer.Value then
                                                if plr.File.CurrentPlayer.Value.Name == "Player1" then
                                                        Player = 1
                                                elseif plr.File.CurrentPlayer.Value.Name == "Player2" then
                                                        Player = 2
                                                end
                                        else
                                                Player = 0
                                        end
                                end
                        end
                        
                end)

                function lol(num,keke,mobile)
                        local antilag = 0
                        local speed = 0.025

                        local tyingarrow = {}
                        while true do
                        if Player ~= 0 then
                        mobilekeys.Visible = not hidetiles
                        end
                        if plr.Character.Humanoid.Health == 0 then
                        break
                        end
                                antilag += 1
                                if antilag >= 10 then
                                        antilag = 0
                                        task.wait()
                                end
                                if AutoPlayer then
                                        if Player > 0 and plr.Character ~= nil then
                                           if main:WaitForChild("MatchFrame", 5) ~= nil then
                                                for i,v in pairs(main.MatchFrame["KeySync".. Player]["Arrow".. num].Notes:GetChildren()) do
                                                        if v:IsA("ImageLabel") then
                                                                if v.Position.Y.Scale <= speed and not table.find(tyingarrow,v) then
                                                                if beingtrash == true then

                                        table.insert(tyingarrow,v)
                                    local rand = math.random(1,HITCHANCE + 2)
                                                                        if rand ~= 1 and 2 and #tyingarrow < AmountToSpam then 
                                                                        if MINHITSECONDS > HITSECONDS then
                                                                    MINHITSECONDS = HITSECONDS
                                                                    end
                                                                        task.wait(math.random(MINHITSECONDS,HITSECONDS)/250)
                                                                        vim:SendKeyEvent(1,Enum.KeyCode[keke],0,nil)
                                                                        
                                                                        


                                                                        else
                                                                        table.insert(tyingarrow,v)
                                                                        vim:SendKeyEvent(1,Enum.KeyCode[keke],0,nil)
                                                                        
                                                                end
                                                                        spawn(function()
                                                                                local hold = main.MatchFrame["KeySync".. Player]["Arrow".. num].Hold.Hitbox:WaitForChild(v.Name,0.1)
                                                                                local antilag2 = 0
                                                                                if hold and hold.Size.Y.Scale - 1 > 0 then
                                                                                        repeat 
                                                                                                antilag += 1
                                                                                                if antilag >= 10 then
                                                                                                        antilag = 0
                                                                                                        task.wait()
                                                                                                end
                                                                                                if not hold then 
                                                                                                        break 
                                                                                                end 
                                                                                        until hold.Position.Y.Scale+hold.Size.Y.Scale - 1 <= speed
                                                                                end
                                                                                
                                                                                vim:SendKeyEvent(0,Enum.KeyCode[keke],0,nil) 
                                                                                table.remove(tyingarrow,i)
                                                                                numer += 1
                                                             
                                                                        end)
                                                                end
                                                        end
                                                end
                                        end
                                        end
                                end
                        end
                end

                spawn(function()
                        lol(1,"A","Left")
                end)
                spawn(function()
                        lol(2,"S","Down")
                end)
                spawn(function()
                        lol(3,"W", "Up")
                end)
                spawn(function()
                        lol(4,"D", "Right")
                end)
                if e == "true" then
                print("fuck")
                end
        end
        sus()
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
    wait(3)
        sus("true")
        end)
        message("FNF Remix AutoPlayer Legit And OP", "Credits: Random Russian Guy", 10)
        OrionLib:Init()

 