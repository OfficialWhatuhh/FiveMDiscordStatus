Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) -- checks every 5 seconds (to limit resource usage)
        
        SetDiscordAppId(YOURDISCORDCLIENTID) -- client id (int)

        SetRichPresence(    (GetPlayerName(PlayerId) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset("laughingcoffinrp") -- large logo key (string)
        SetDiscordRichPresenceAssetSmallText("Discord:discord.gg/6jqehtSRGj") -- Large logo "hover" text (string)

        SetDiscordRichPresenceAssetSmall("lcrp") -- small logo key (string)
        SetDiscordRichPresenceAssetSmallText("Health: "..(GetEntityHealth(player)-100)) -- small logo "hover" text (string)

    end
end))