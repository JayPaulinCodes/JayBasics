Vehicles = {}
PlayerNames = {}


AddEventHandler("playerJoining", function(source, oldId)
    local _source = source
    checkNameAndLicense(_source) 
end)

RegisterServerEvent("Jay:Basics:setPlayerName")
AddEventHandler("Jay:Basics:setPlayerName", function(license, name) 
    PlayerNames[license] = name
end)

RegisterServerEvent("Jay:Basics:updatePlayerName")
AddEventHandler("Jay:Basics:updatePlayerName", function() 
    local _source = source
    checkNameAndLicense(_source) 
end)

RegisterServerEvent("Jay:Basics:setPlayerLicense")
AddEventHandler("Jay:Basics:setPlayerLicense", function() 
    local _source = source
    local license = GetPlayerIdentifier(_source, 2)
    TriggerClientEvent("Jay:Basics:setPlayerLicense", _source, license)
end)

RegisterServerEvent("Jay:Basics:syncPlayerList")
AddEventHandler("Jay:Basics:syncPlayerList", function() 
    local _source = source
    local playerList = {}
    local players = GetPlayers()

    for _, playerId in ipairs(players) do
        table.insert(playerList, playerId)
    end

    TriggerClientEvent("Jay:Basics:syncClientPlayerList", _source, playerList)
end)

RegisterServerEvent("Jay:Basics:syncPlayerNames")
AddEventHandler("Jay:Basics:syncPlayerNames", function() 
    local _source = source
    local playerNames = {}
    local players = GetPlayers()

    for _, playerId in ipairs(players) do
        playerNames["SID_"..playerId] = getPlayerNameFromId(playerId)
    end

    TriggerClientEvent("Jay:Basics:syncClientPlayerNames", _source, playerNames)
end)