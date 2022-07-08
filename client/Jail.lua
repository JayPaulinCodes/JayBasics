if CONFIG["Jail"]["Enabled"] then

    TriggerEvent("chat:addSuggestion", "/jail", _U("jailCommandSug"))

    RegisterNetEvent("Jay:Basics:openJailGUI")
    AddEventHandler("Jay:Basics:openJailGUI", function(id)
        
        local player = PlayerId()
        local playerId = GetPlayerServerId(player)
        local playerPed = GetPlayerPed(player)
        local playersNearby = getPlayersInRadius(50)
        local closePlayers = {}

        for key, value in ipairs(playersNearby) do
            print(key, value)

            table.insert(closePlayers, {
                name = GetPlayerName(value),
                id = GetPlayerServerId(value)
            })
        end

        SendNUIMessage({
            module = "jail-gui",
            data = {
                nearbyPlayers = closePlayers,
                action = "open"
            }
        })

    end)

    -- Where the HTML/JS tells us that the gui was opened
    RegisterNUICallback("notifyGUIOpen", function(data)
        IsJailGUIOpen = true
        SetNuiFocus(true, true)
    end)

    -- Where the HTML/JS tells us that the gui was closed
    RegisterNUICallback("notifyGUIClose", function()
        IsJailGUIOpen = false
        SetNuiFocus(false, false)
    end)


    -- Jail Request from HTML
    RegisterNUICallback("submitJailRequest", function(data)
        local targetName = data.targetName
        local targetId = data.targetId
        local reason = data.reason
        local length = data.length

        local targetPlayer = GetPlayerFromServerId(id)
        
    end)

end
