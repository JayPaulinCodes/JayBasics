if CONFIG["Jail"]["Enabled"] then

    Citizen.CreateThread(function ()
   
        Citizen.Wait(75)
    
        RegisterCommand("jail", function(source, args, user)
            local _source = source
    
            TriggerClientEvent("Jay:Basics:openJailGUI", -1, _source)
        end, false)
    
    end)
end