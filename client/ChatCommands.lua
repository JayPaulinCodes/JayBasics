if CONFIG["ChatCommands"]["Enable"] and not CONFIG["ChatCommands"]["UseDefaultNames"] then

    TriggerEvent("chat:addSuggestion", "/setname", _U("setnameCommandSug"))
    TriggerEvent("chat:addSuggestion", "/name", _U("nameCommandSug"))
    TriggerEvent("chat:addSuggestion", "/whoami", _U("nameCommandSug"))

    RegisterCommand("setname", function(source, args, user)
        TriggerEvent("Jay:Basics:setPlayerName", nil)
    end, false)

    RegisterCommand("name", function(source, args, user)
        AddTextEntry("WHO_AM_I", "~s~Currently Playing As: ~y~" .. PlayerName)
        BeginTextCommandDisplayHelp("WHO_AM_I")
        EndTextCommandDisplayHelp(0, 0, 0, 5000)
    end, false)

    RegisterCommand("whoami", function(source, args, user)
        AddTextEntry("WHO_AM_I", "~s~Currently Playing As: ~y~" .. PlayerName)
        BeginTextCommandDisplayHelp("WHO_AM_I")
        EndTextCommandDisplayHelp(0, 0, 0, 5000)
    end, false)

end

if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["meCommand"] then

    TriggerEvent("chat:addSuggestion", "/me", _U("meCommandSug"), {
        { name="Action", help="action."}
    })

    RegisterNetEvent("Jay:Basics:sendProximityMessageMe")
    AddEventHandler("Jay:Basics:sendProximityMessageMe", function(id, name, message)
        local _name = name
        local player = PlayerId()
        local playerId = GetPlayerServerId(player)
        local playerPed = GetPlayerPed(player)
        local originPlayer = GetPlayerFromServerId(id)
        local originPlayerPed = GetPlayerPed(originPlayer)
        local distance = GetDistanceBetweenCoords(GetEntityCoords(playerPed), GetEntityCoords(originPlayerPed), true)
        local distanceFormated = math.floor(distance + 0.5)
    
        if originPlayer == player then
            TriggerEvent("chat:addMessage",
                { 
                    templateId = "Jay:Basics:messageMe:self", 
                    multiline = true, 
                    args = { 
                        _name,
                        playerId,
                        message
                    } 
                }
            )
        elseif distance < CONFIG["ChatCommands"]["ProximityRange"] then
            TriggerEvent("chat:addMessage",
                { 
                    templateId = "Jay:Basics:messageMe", 
                    multiline = true, 
                    args = { 
                        _name,
                        playerId,
                        distanceFormated,
                        message
                    } 
                }
            )
        end
    end)

end


if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["merCommand"] then

    TriggerEvent("chat:addSuggestion", "/mer", _U("merCommandSug"), {
        { name="Action", help="action."}
    })

    RegisterNetEvent("Jay:Basics:sendProximityMessageMer")
    AddEventHandler("Jay:Basics:sendProximityMessageMer", function(id, name, message)
        local player = PlayerId()
        local playerId = GetPlayerServerId(player)
        local playerPed = GetPlayerPed(player)
        local originPlayer = GetPlayerFromServerId(id)
        local originPlayerPed = GetPlayerPed(originPlayer)
        local distance = GetDistanceBetweenCoords(GetEntityCoords(playerPed), GetEntityCoords(originPlayerPed), true)
        local distanceFormated = math.floor(distance + 0.5)
    
        if originPlayer == player then
            TriggerEvent("chat:addMessage",
                { 
                    templateId = "Jay:Basics:messageMer:self", 
                    multiline = true, 
                    args = { 
                        name,
                        playerId,
                        message
                    } 
                }
            )
        elseif distance < CONFIG["ChatCommands"]["ProximityRange"] then
            TriggerEvent("chat:addMessage",
                { 
                    templateId = "Jay:Basics:messageMer", 
                    multiline = true, 
                    args = { 
                        name,
                        playerId,
                        distanceFormated,
                        message
                    } 
                }
            )
        end
    end)

end

if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["oocCommand"] then
    
    TriggerEvent("chat:addSuggestion", "/ooc", _U("oocCommandSug"), {
        { name="Message", help="Put out of context chat."}
    })

end

if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["gmeCommand"] then
    
    TriggerEvent("chat:addSuggestion", "/gme", _U("gmeCommandSug"), {
        { name="Action", help="action."}
    })

end

if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["gmerCommand"] then
    
    TriggerEvent("chat:addSuggestion", "/gme", _U("gmerCommandSug"), {
        { name="Action", help="action."}
    })

end