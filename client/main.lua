Vehicles = {}
PlayerLicense = nil
PlayerName = nil

Citizen.CreateThread(function()
    while true do
        if PlayerLicense == nil then
            TriggerServerEvent("Jay:Basics:setPlayerLicense")
        end
        Citizen.Wait(500)
        if PlayerLicense ~= nil and PlayerName == nil then
            TriggerServerEvent("Jay:Basics:updatePlayerName")
        end
        Citizen.Wait(30000)
    end

end)


--      ###########################$
--      ##     CHAT TEMPLATES     ##
--      #######################$####
Citizen.CreateThread(function()
    Citizen.Wait(50)

    TriggerEvent("chat:addTemplate", "Jay:Basics:standard", "{0}")

    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["oocCommand"] then
        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageOOC", 
            "<p><span style=\"font-weight:bold;color:" .. CONFIG["ChatCommands"]["oocHex"] .. "\">[OOC] {0} [#{1}]</span><span style=\"font-weight:normal\">: {2}</span></p>"
        )
    end

    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["meCommand"] then
        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Distance
            3 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageMe", 
            "<p><span style=\"font-weight:normal;color:" .. CONFIG["ChatCommands"]["meHex"] .. "\">{0} [#{1}] ({2}m)</span><span style=\"font-weight:normal;\">: {3}</span></p>"
        )

        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageMe:self", 
            "<p><span style=\"font-weight:normal;color:" .. CONFIG["ChatCommands"]["meHex"] .. "\">{0} [#{1}]</span><span style=\"font-weight:normal;\">: {3}</span></p>"
        )
    end

    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["merCommand"] then
        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Distance
            3 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageMer", 
            "<p><span style=\"font-weight:normal;color:" .. CONFIG["ChatCommands"]["merHex"] .. "\">{0} [#{1}] ({2}m)</span><span style=\"font-weight:normal\">: </span><span style=\"font-weight:bold;color:#FF0000\"> {3}</span></p>"
        )

        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageMer:self", 
            "<p><span style=\"font-weight:normal;color:" .. CONFIG["ChatCommands"]["merHex"] .. "\">{0} [#{1}]</span><span style=\"font-weight:normal\">: </span><span style=\"font-weight:bold;color:#FF0000\"> {2}</span></p>"
        )
    end

    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["gmeCommand"] then
        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageGme", 
            "<p><span style=\"font-weight:normal;color:" .. CONFIG["ChatCommands"]["gmeHex"] .. "\">{0} [#{1}]</span><span style=\"font-weight:normal\">: {2}</span></p>"
        )
    end

    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["gmerCommand"] then
        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageGmer", 
            "<p><span style=\"font-weight:normal;color:" .. CONFIG["ChatCommands"]["gmerHex"] .. "\">{0} [#{1}]</span><span style=\"font-weight:normal\">: </span><span style=\"font-weight:bold;color:#FF0000\">{2}</span></p>"
        )
    end

end)

RegisterNetEvent("Jay:Basics:setPlayerName")
AddEventHandler("Jay:Basics:setPlayerName", function() 
    if CONFIG["ChatCommands"]["Enable"] then
        if not CONFIG["ChatCommands"]["UseDefaultNames"] then
            PlayerName = getUserTextInput("What's Your Character's Name?", "John Doe", 30)
            TriggerServerEvent("Jay:Basics:setPlayerName", PlayerLicense, PlayerName)
        end
    end
end)

RegisterNetEvent("Jay:Basics:updatePlayerName")
AddEventHandler("Jay:Basics:updatePlayerName", function(name) 
    PlayerName = name
end)

RegisterNetEvent("Jay:Basics:setPlayerLicense")
AddEventHandler("Jay:Basics:setPlayerLicense", function(license) 
    PlayerLicense = license
end)


