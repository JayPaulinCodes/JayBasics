Citizen.CreateThread(function ()
   
    Citizen.Wait(75)

    RegisterCommand('jail', function(source, args, user)
        local _source = source
        -- local name = getPlayerNameFromId(_source)

        TriggerClientEvent("Jay:Basics:openJailGUI", -1, _source)
    end, false)

end)

RegisterServerEvent("Jay:Basics:jailPlayerRequest")
AddEventHandler("Jay:Basics:jailPlayerRequest", function(NUIData, jail) 
    
    TriggerClientEvent('Jay:Basics:jailPlayer"', NUIData.id, jail, NUIData.length)

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