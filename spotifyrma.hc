local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "junt187's Spotify Presence Script",
        ["ImageId"] = 11653546585
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))


wait(1)








while wait(1.5) do


local HttpService = game:GetService("HttpService")
local response = syn.request(
    {
        Url = "https://api.spotify.com/v1/me/player/currently-playing",
        Method = "GET",
        Headers = {
            ["Authorization"] = "Bearer ".. getgenv().Token,
            ["Content-Type"] = "application/json",
            ["Host"] = "api.spotify.com"
        },
    }
)
    


for i,v in pairs(response) do
    print(i,v)
    
    if type(v) == "table" then
        for i2,v2 in pairs(v) do
            warn(i2,v2)
        end
    end
end

local albumname = HttpService:JSONDecode(response.Body).item.album.name
local songname = HttpService:JSONDecode(response.Body).item.name
local artistname = HttpService:JSONDecode(response.Body).item.album.artists[1].name


local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "🔊 ".. songname,
        ["ImageId"] = 11788986028
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
wait(1.5)
local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "🧑‍🎨 ".. artistname,
        ["ImageId"] = 11788991344
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
wait(1.5)
local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = "💽 ".. albumname,
        ["ImageId"] = 11788995369
    }
}

game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end
