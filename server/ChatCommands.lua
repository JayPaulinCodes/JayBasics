Citizen.CreateThread(function() 

    Citizen.Wait(75)

    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["oocCommand"] and CONFIG["ChatCommands"]["DefaultMessagesToOOC"] then
    
        AddEventHandler('chatMessage', function(source, name, message)
            if string.sub(message, 1, string.len("/")) ~= "/" then
                local _source = source
                local name = getPlayerNameFromId(_source)
                
                if name then
                    TriggerClientEvent('chat:addMessage', -1, 
                        { 
                            templateId = 'Jay:Basics:messageOOC', 
                            multiline = true, 
                            args = { 
                                name,
                                _source,
                                message
                            } 
                        }
                    )
                end		
            end
            CancelEvent()
        end)
    
    end

    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["oocCommand"] then
    
        RegisterCommand('ooc', function(source, args, user)
            local _source = source
            local name = getPlayerNameFromId(_source)
            local message = table.concat(args, " ")
    
            TriggerClientEvent('chat:addMessage', -1, 
                { 
                    templateId = 'Jay:Basics:messageOOC', 
                    multiline = true, 
                    args = { 
                        name,
                        _source,
                        message
                    } 
                }
            )
        end, false)
    
    end

    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["meCommand"] then
    
        RegisterCommand('me', function(source, args, user)
            local _source = source
            local name = getPlayerNameFromId(_source)
            local message = table.concat(args, " ")
    
            TriggerClientEvent("Jay:Basics:sendProximityMessageMe", -1, _source, name, message)
        end, false)
    
    end
    
    
    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["merCommand"] then
    
        RegisterCommand('mer', function(source, args, user)
            local _source = source
            local name = getPlayerNameFromId(_source)
            local message = table.concat(args, " ")
    
            TriggerClientEvent("Jay:Basics:sendProximityMessageMer", -1, _source, name, message)
        end, false)
    
    end
    
    
    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["gmeCommand"] then
    
        RegisterCommand('gme', function(source, args, user)
            local _source = source
            local name = getPlayerNameFromId(_source)
            local message = table.concat(args, " ")
    
            TriggerClientEvent('chat:addMessage', -1, 
                { 
                    templateId = 'Jay:Basics:messageGme', 
                    multiline = true, 
                    args = { 
                        name,
                        _source,
                        message
                    } 
                }
            )
    
        end, false)
    
    end
    
    
    if CONFIG["ChatCommands"]["Enable"] and CONFIG["ChatCommands"]["gmerCommand"] then
    
        RegisterCommand('gmer', function(source, args, user)
            local _source = source
            local name = getPlayerNameFromId(_source)
            local message = table.concat(args, " ")
    
            TriggerClientEvent('chat:addMessage', -1, 
                { 
                    templateId = 'Jay:Basics:messageGmer', 
                    multiline = true, 
                    args = { 
                        name,
                        _source,
                        message
                    } 
                }
            )
    
        end, false)
    
    end

end)