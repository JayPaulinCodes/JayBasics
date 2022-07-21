function getPlayerNameFromId(Id) 
    local name = nil
    local license = GetPlayerIdentifier(Id, 2)

    if PlayerNames[license] ~= nil then
        name = PlayerNames[license]
    else
        name = GetPlayerName(Id)
    end

    return name
end

function checkNameAndLicense(source) 
    local license = GetPlayerIdentifier(source, 2)
    local name = GetPlayerName(source)
    TriggerClientEvent("Jay:Basics:setPlayerLicense", source, license)

    if CONFIG["ChatCommands"]["Enable"] then

        if CONFIG["ChatCommands"]["UseDefaultNames"] then
            TriggerClientEvent("Jay:Basics:updatePlayerName", source, name)
        else
            if PlayerNames[license] == nil then
                TriggerClientEvent("Jay:Basics:setPlayerName", source)
            else 
                TriggerClientEvent("Jay:Basics:updatePlayerName", source, PlayerNames[license])
            end
        end

    end
end