if CONFIG["DiscordPresence"]["Enable"] then

    Citizen.CreateThread(function()
        while true do
    
            local CFG = CONFIG["DiscordPresence"]
    
            -- Lets set the app id
            SetDiscordAppId(CFG["DiscordAppId"])

            -- Setting the large icon
            SetDiscordRichPresenceAsset(CFG["LargeIcon"]["AssetName"])
            SetDiscordRichPresenceAssetText(CFG["LargeIcon"]["HoverText"])

            -- Setting the small icon
            if CFG["SmallIcon"]["Enabled"] then 
                SetDiscordRichPresenceAssetSmall(CFG["SmallIcon"]["AssetName"])
                SetDiscordRichPresenceAssetSmallText(CFG["SmallIcon"]["HoverText"])
            end

            -- Setting the button 1
            if CFG["Buttons"]["Button1"]["Enabled"] then 
                SetDiscordRichPresenceAction(0, CFG["Buttons"]["Button1"]["Text"], CFG["Buttons"]["Button1"]["URL"])
            end 

            -- Setting the button 2
            if CFG["Buttons"]["Button2"]["Enabled"] and CFG["Buttons"]["Button1"]["Enabled"] then
                SetDiscordRichPresenceAction(1, CFG["Buttons"]["Button2"]["Text"], CFG["Buttons"]["Button2"]["URL"])
            elseif CFG["Buttons"]["Button2"]["Enabled"] and not CFG["Buttons"]["Button1"]["Enabled"] then
                SetDiscordRichPresenceAction(0, CFG["Buttons"]["Button2"]["Text"], CFG["Buttons"]["Button2"]["URL"])
            end

            -- Status Message
            if CONFIG["ChatCommands"]["UseDefaultNames"] == false then
                SetRichPresence("Patroling As " .. PlayerName .. " In " .. getAreaNameFromZone())
            else
                SetRichPresence("Patroling In " .. getAreaNameFromZone())
            end
    
            Citizen.Wait(CFG["RefreshRate"])
        end
    end)

end