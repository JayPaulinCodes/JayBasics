if CONFIG["Jail"]["Enable"] then

    TriggerEvent("chat:addSuggestion", "/jail", _U("jailCommandSug"))

    RegisterNetEvent("Jay:Basics:openJailGUI")
    AddEventHandler("Jay:Basics:openJailGUI", function(id)
        TriggerServerEvent("Jay:Basics:syncPlayerNames")
        
        local player = PlayerId()
        local playerId = GetPlayerServerId(player)
        local playerPed = GetPlayerPed(player)
        local playersNearby = getPlayersInRadius(50, false)
        local closePlayers = {}

        -- for key, value in ipairs(ClientPlayerNames) do
        --     print("BSX: ", key, value)
        -- end

        for key, playerIdx in ipairs(playersNearby) do
            local targetPlayerId = playerIdx
            -- local targetPlayerPlayer = GetPlayerFromServerId(targetPlayerId)
            -- local targetPlayerPed = GetPlayerPed(targetPlayerPlayer)
            -- print(key, targetPlayerId, GetPlayerName(targetPlayerId), targetPlayerPlayer, GetPlayerName(targetPlayerPlayer), targetPlayerPed, GetPlayerName(targetPlayerPed))

            -- print(key, playerIdx, targetPlayerId, ClientPlayerNames["SID_"..targetPlayerId])

            table.insert(closePlayers, {
                name = ClientPlayerNames["SID_"..targetPlayerId],
                id = targetPlayerId
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
    RegisterNUICallback("notifyGUIClose", function(data)
        IsJailGUIOpen = false
        SetNuiFocus(false, false)
    end)

    -- Jail Request from HTML
    RegisterNUICallback("submitJailRequest", function(data)
        TriggerServerEvent("Jay:Basics:jailPlayerRequest", data, getClosestStation())
    end)

    -- Jail Player
    RegisterNetEvent("Jay:Basics:jailPlayer")
    AddEventHandler("Jay:Basics:jailPlayer", function(jail, length) 

        IsPlayerJailed = true

        switchPlayerToCoords(jail.cellCoords, true)

        while GetPlayerSwitchState() ~= 12 do
            Citizen.Wait(10)
        end

        Citizen.SetTimeout(length * 1000, function()

            IsPlayerJailed = false
        
            switchPlayerToCoords(jail.freedCoords, true)
        
            TriggerEvent('chat:addMessage', 
                { 
                    templateId = 'Jay:Basics:wardenRelease',
                    multiline = true, 
                    args = {}
                } 
            )

        end)

    end)

    -- LOOPS
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            if IsPlayerJailed then

                DisableControlAction(0, CONTROLS["INPUT_ATTACK"]["ControlIndex"], true)
                DisableControlAction(0, CONTROLS["INPUT_ATTACK2"]["ControlIndex"], true) -- 257
                DisableControlAction(0, CONTROLS["INPUT_AIM"]["ControlIndex"], true) -- 25
                DisableControlAction(0, CONTROLS["INPUT_MELEE_ATTACK1"]["ControlIndex"], true) -- 263
                DisableControlAction(0, CONTROLS["INPUT_RELOAD"]["ControlIndex"], true) -- 45
                DisableControlAction(0, CONTROLS["INPUT_DETONATE"]["ControlIndex"], true)  -- 47
                DisableControlAction(0, CONTROLS["INPUT_MELEE_ATTACK2"]["ControlIndex"], true) -- 264
                DisableControlAction(0, CONTROLS["INPUT_MELEE_ATTACK_LIGHT"]["ControlIndex"], true) -- 140
                DisableControlAction(0, CONTROLS["INPUT_MELEE_ATTACK_HEAVY"]["ControlIndex"], true) -- 141
                DisableControlAction(0, CONTROLS["INPUT_MELEE_ATTACK_ALTERNATE"]["ControlIndex"], true) -- 142
                DisableControlAction(0, CONTROLS["INPUT_MELEE_BLOCK"]["ControlIndex"], true) -- 143
                DisableControlAction(0, CONTROLS["INPUT_SELECT_WEAPON"]["ControlIndex"], true) -- 37

            else
                Citizen.Wait(500)
            end
        end
    end)

end