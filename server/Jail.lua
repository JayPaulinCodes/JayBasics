if CONFIG["Jail"]["Enabled"] then

<<<<<<< HEAD
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
=======
    Citizen.CreateThread(function ()
   
        Citizen.Wait(75)
    
        RegisterCommand("jail", function(source, args, user)
            local _source = source
    
            TriggerClientEvent("Jay:Basics:openJailGUI", -1, _source)
        end, false)
    
    end)
end
>>>>>>> b260c64c2261cd1a0861fafe54015478eb936b8a
