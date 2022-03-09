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