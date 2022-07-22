Vehicles = {}
PlayersList = {}
ClientPlayerNames = {}
PlayerLicense = nil
PlayerName = nil
WeaponSafety = false
PlayerLastHeldWeapon = nil
IsJailGUIOpen = false
IsPlayerJailed = false
Requests = {
    PlayerName = nil
}
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
    WEAPONS["-1786099057"], -- WEAPON_MG
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

Citizen.CreateThread(function()

    while true do
        TriggerServerEvent("Jay:Basics:syncPlayerList")
        Citizen.Wait(30000)
    end

end)

Citizen.CreateThread(function()

    while true do
        TriggerServerEvent("Jay:Basics:syncPlayerNames")
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
            _("chatTemplateMessageOOC", CONFIG["ChatCommands"]["oocHex"])
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
            _("chatTemplateMessageMe", CONFIG["ChatCommands"]["meHex"])
        )

        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageMe:self", 
            _("chatTemplateMessageMeSelf", CONFIG["ChatCommands"]["meHex"])
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
            _("chatTemplateMessageMer", CONFIG["ChatCommands"]["merHex"])
        )

        --[[
            ARGS:
            0 - Name
            1 - ID
            2 - Message
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:messageMer:self", 
            _("chatTemplateMessageMerSelf", CONFIG["ChatCommands"]["merHex"])
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
            _("chatTemplateMessageGme", CONFIG["ChatCommands"]["gmeHex"])
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
            _("chatTemplateMessageGmer", CONFIG["ChatCommands"]["gmerHex"])
        )
    end

    if CONFIG["Jail"]["Enable"] and CONFIG["Jail"]["SendMessageOnJail"] then
        --[[
            ARGS:
            0 - Name
            1 - Length
            2 - Jail Name
            3 - Reason
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:judgeSentence", 
            _("chatTemplateMessageJudgeSentence")
        )
    end

    if CONFIG["Jail"]["Enable"] and CONFIG["Jail"]["SendMessageOnRelease"] then
        --[[
            ARGS: N/A
        ]]
        TriggerEvent("chat:addTemplate", 
            "Jay:Basics:wardenRelease", 
            _("chatTemplateMessageWardenRelease")
        )
    end

end)

RegisterNetEvent("Jay:Basics:setPlayerName")
AddEventHandler("Jay:Basics:setPlayerName", function() 
    if CONFIG["ChatCommands"]["Enable"] then
        if not CONFIG["ChatCommands"]["UseDefaultNames"] then
            PlayerName = getUserTextInput(_U("setNamePrompt"), "John Doe", 30)
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

RegisterNetEvent("Jay:Basics:syncClientPlayerList")
AddEventHandler("Jay:Basics:syncClientPlayerList", function(players) 
    PlayersList = players
end)

RegisterNetEvent("Jay:Basics:syncClientPlayerNames")
AddEventHandler("Jay:Basics:syncClientPlayerNames", function(playerNames) 
    ClientPlayerNames = playerNames
end)