Citizen.CreateThread(function()

    RegisterNetEvent("Jay:Basics:openJailGUI")
    AddEventHandler("Jay:Basics:openJailGUI", function(id)
        
        local player = PlayerId()
        local playerId = GetPlayerServerId(player)
        local playerPed = GetPlayerPed(player)
        local playersNearby = getPlayersInRadius(50)
        local closePlayers = {}

        for key, value in ipairs(playersNearby) do
            print(key, value)
            targetIds = ExtractIdentifiers(value)

            table.insert(closePlayers, {
                name = "",
                steamId = ""
            })
        end

        -- local originPlayer = GetPlayerFromServerId(id)
        -- local originPlayerPed = GetPlayerPed(originPlayer)
        -- local distance = GetDistanceBetweenCoords(GetEntityCoords(playerPed), GetEntityCoords(originPlayerPed), true)
        -- local distanceFormated = math.floor(distance + 0.5)

        SendNUIMessage({
            module = "jail-gui",
            data = {
                nearbyPlayers = {

                },
                action = "open"
            }
        })



    end)

end)


-- Jail Request
RegisterNUICallback("submitJailRequest", function(data)
    
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


function handleJailRequest()
    
    local targetPlayer = GetPlayerFromServerId(id)
end