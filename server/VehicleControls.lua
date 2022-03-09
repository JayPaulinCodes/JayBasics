RegisterServerEvent("Jay:Basics:setVehicleData")
AddEventHandler("Jay:Basics:setVehicleData", function(vehicle, tableData) 
    Vehicles[vehicle] = tableData
end)

RegisterServerEvent("Jay:Basics:syncVehicleData")
AddEventHandler("Jay:Basics:syncVehicleData", function() 
    TriggerClientEvent("Jay:Basics:syncVehicleData", -1, Vehicles)
end)