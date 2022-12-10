-- maker sure you claim a booth b4 doing dis, and have a song playing (or not)

getgenv().Token = "spotify oauth token here" -- https://developer.spotify.com/console/get-current-user/ (check 'user-read-currently-playing')

loadstring(game:HttpGet("https://raw.githubusercontent.com/x1mv/junt-aio/main/spotifyrma.hc", true))()
