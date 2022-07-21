if CONFIG["Jail"]["Enable"] then

    Citizen.CreateThread(function ()
   
        Citizen.Wait(75)
    
        RegisterCommand("jail", function(source, args, user)
            local _source = source
    
            TriggerClientEvent("Jay:Basics:openJailGUI", -1, _source)
        end, false)
    
    end)

    RegisterServerEvent("Jay:Basics:jailPlayerRequest")
    AddEventHandler("Jay:Basics:jailPlayerRequest", function(NUIData, jail) 

        -- print(NUIData.targetName, math.floor((NUIData.length / 10)), jail.name, NUIData.reason)
        -- print(NUIData.targetId)
        
        TriggerClientEvent('Jay:Basics:jailPlayer', NUIData.targetId, jail, NUIData.length)

        TriggerClientEvent('chat:addMessage', -1, 
            { 
                templateId = 'Jay:Basics:judgeSentence',
                multiline = true, 
                args = { 
                    NUIData.targetName,
                    math.floor((NUIData.length / 10)),
                    jail.name,
                    NUIData.reason
                } 
            } 
        )
    end)
    
end
