Vehicles = {}
PlayerLicense = nil
PlayerName = nil
WeaponSafety = false
--[[
    0 = Standard (No Modification)
    1 = Single Shot
    2 = Burst Fire
    3 = Full Auto
]]
WeaponFireMode = 0 
AutomaticWeapons = {
    WEAPONS["324215364"], -- WEAPON_MICROSMG
    WEAPONS["-619010992"], -- WEAPON_MACHINEPISTOL
    WEAPONS["-1121678507"], -- WEAPON_MINISMG
    WEAPONS["736523883"], -- WEAPON_SMG
    WEAPONS["2024373456"], -- WEAPON_SMG_MK2
    WEAPONS["-270015777"], -- WEAPON_ASSAULTSMG
    WEAPONS["171789620"], -- WEAPON_COMBATPDW
    WEAPONS["-1660422300"], -- WEAPON_MG
    WEAPONS["2144741730"], -- WEAPON_COMBATMG
    WEAPONS["-608341376"], -- WEAPON_COMBATMG_MK2
    WEAPONS["1627465347"], -- WEAPON_GUSENBERG
    WEAPONS["-1074790547"], -- WEAPON_ASSAULTRIFLE
    WEAPONS["961495388"], -- WEAPON_ASSAULTRIFLE_MK2
    WEAPONS["-2084633992"], -- WEAPON_CARBINERIFLE
    WEAPONS["-86904375"], -- WEAPON_CARBINERIFLE_MK2
    WEAPONS["-1357824103"], -- WEAPON_ADVANCEDRIFLE
    WEAPONS["-1063057011"], -- WEAPON_SPECIALCARBINE
    WEAPONS["-1768145561"], -- WEAPON_SPECIALCARBINE_MK2
    WEAPONS["1649403952"], -- WEAPON_COMPACTRIFLE
    WEAPONS["2132975508"], -- WEAPON_BULLPUPRIFLE
    WEAPONS["-2066285827"], -- WEAPON_BULLPUPRIFLE_MK2
    WEAPONS["-2009644972"], -- WEAPON_SNSPISTOL_MK2
    WEAPONS["-1076751822"], -- WEAPON_SNSPISTOL
    WEAPONS["584646201"], -- WEAPON_APPISTOL
}

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


--      ############################
--      ##     CHAT TEMPLATES     ##
--      ############################
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
            "<p><span style=\"font-weight:normal;color:" .. CONFIG["ChatCommands"]["meHex"] .. "\">{0} [#{1}]</span><span style=\"font-weight:normal;\">: {2}</span></p>"
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


