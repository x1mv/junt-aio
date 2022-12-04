getgenv().Host = "IMXP4" -- host user
getgenv().CoHost = "IMXP4" -- cohost user, put your main user if you have no cohost

repeat wait() until game:IsLoaded() -- wait til game loaded
wait(1)


-- print status
print('\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n Junt AIO Alt Control \n \n \n Status: Loaded \n \n Your host is: '.. getgenv().Host)

-- locals
local sturdy = "holder" -- message function holder
local selfposition = game.Players.LocalPlayer.Character.HumanoidRootPart -- localplayer position
local ws = game.Workspace -- workspace lol
local players, replicatedStorage = game:GetService("Players"), game:GetService("ReplicatedStorage")
local hostposition = players[getgenv().Host].Character.HumanoidRootPart -- host's current position
local cohostposition = players[getgenv().CoHost].Character.HumanoidRootPart -- host's current position
local defaultChatSystemChatEvents = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
local onMessageDoneFiltering = defaultChatSystemChatEvents:FindFirstChild("OnMessageDoneFiltering")
local localplayer = game.Players.LocalPlayer
local Character = localplayer.Character or localplayer.CharacterAdded:Wait()


-- functions
local function chat(sturdy)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[Junt Control] ".. sturdy, "All")
end


-- host commands


onMessageDoneFiltering.OnClientEvent:Connect(function(messageData)
    local speaker, message = players[messageData.FromSpeaker], messageData.Message
   
    if speaker.Name == Host and message == "%p" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        chat("pong, bot ".. localplayer.Name .." responded with True")
        end
        
        elseif speaker.Name == Host and message == "%rejoin" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        elseif localplayer.Name == getgenv().CoHost then
            print("user is cohost, won't do command")
        else
        chat("rejoining.")
        game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
        end
        
        elseif speaker.Name == Host and message == "%hostrj" then
        if localplayer.Name == not getgenv().Host then
            print("not host, won't do command")
        elseif localplayer.Name == getgenv().Host then
        chat("rejoining.")
        game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
        end

        elseif speaker.Name == Host and message == "%bring" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = players[getgenv().Host].Character.HumanoidRootPart.CFrame
        chat("teleported to host")    
        end

        elseif speaker.Name == Host and message == "%base" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83, 12, 141)
        chat("teleported to base") 
        
        elseif speaker.Name == Host and message == "%dance" then
        game:GetService("Players"):Chat("/e dance")
    
        elseif speaker.Name == Host and message == "%air" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        chat("airlock enabled")
        local plrcrd = game.Players.LocalPlayer.Character.HumanoidRootPart
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(plrcrd.Position.X, 50, plrcrd.Position.Z)
        wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        end
        
        elseif speaker.Name == Host and message == "%unair" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        chat("airlock disabled")
        local plrcrd = game.Players.LocalPlayer.Character.HumanoidRootPart
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(plrcrd.Position.X, plrcrd.Position.Y, plrcrd.Position.Z)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end
        
        elseif speaker.Name == Host and message == "%help" then
        if localplayer.Name == getgenv().Host then
            chat("check your console (press F9)")
            print(" \n \n \n \n------------- \n \n commands list \n - %p (Pings the bots, makes them chat so you can see which one is not online) \n - %rejoin (Rejoins the bots) \n - %hostrj (Rejoins the host) \n - %bring (FIXED, brings all bots no matter what) \n - %air (Airlocks all the bots) \n - %unair (Unairlocks all the bots) \n - %help (Prints this help thingy) \n - %dance (Dances all bots including you) \n \n")
        else
        return
        end
end
end)



-- co-host commands


onMessageDoneFiltering.OnClientEvent:Connect(function(messageData)
    local speaker, message = players[messageData.FromSpeaker], messageData.Message
   
    if speaker.Name == CoHost and message == "+p" then
        if localplayer.Name == getgenv().CoHost then
            print("user is cohost, won't do command")
        elseif localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        chat("pong, bot ".. localplayer.Name .." responded with True")
        end

        elseif speaker.Name == CoHost and message == "+bring" then
        if localplayer.Name == getgenv().CoHost then
            print("user is cohost, won't do command")
        elseif localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = players[getgenv().CoHost].Character.HumanoidRootPart.CFrame
        chat("teleported to cohost")    
        end
        
        elseif speaker.Name == CoHost and message == "+dance" then
        game:GetService("Players"):Chat("/e dance") 
        
        elseif speaker.Name == CoHost and message == "+help" then
        if localplayer.Name == getgenv().Host then
            chat("Co-Host commands list: +p (Bot ping), +bring (Brings the bots), +dance (Makes every bot dance, including host)")
            print(" \n \n \n \n------------- \n \n commands list \n - +p (pings the bots, makes them chat so you can see which one is not online) \n -  \n - +help (prints this help thingy) \n \n \n")
        else
        return
        end
end
end)


loadstring(game:HttpGet"https://raw.githubusercontent.com/x1mv/junt-aio/main/loader.187")() 

