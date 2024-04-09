local gameid = { 
    [4954096313] = true, -- Field Trip Z
    [9872472334] = true, -- Evade
    [286090429] = true, -- Arsenal
    [9742783208] = true, -- Raise A Yippie
}

function notif(title, txt, dur)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = txt;
        Duration = dur;
    })
end

-- Check if the current game ID is supported
if not gameid[game.PlaceId] then
    notif("Unsupported Game", "Riley Hub V4 Dosent Support This Game.", 5)
else
    -- Field Trip Z
    if game.PlaceId == 4954096313 or game.PlaceId == 5096191125 or game.PlaceId == 5941839954 then
       loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/Scripts/main/RileyHubV4FieldTripZ.lua"))()
    -- Evade
    elseif game.PlaceId == 9872472334 or game.PlaceId == 10324346056 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/riley-hub-arsenal/main/RileyHubEvadeV4.lua"))()
-- Raise A Yippie
    elseif game.PlaceId == 9742783208 or game.PlaceId == 10074949006 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/riley-hub-arsenal/main/RileyHubEvadeV4.lua"))()
    -- Arsenal
    elseif game.PlaceId == 286090429 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/riley-hub-arsenal/main/RileyHubArsenalV4.lua"))()
    end
end
-- Soon
