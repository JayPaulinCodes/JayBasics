-- Setting the command suggestions
if CONFIG["VehicleControls"]["Enable"] then
    Citizen.CreateThread(function()
        Citizen.Wait(100)

        TriggerServerEvent("Jay:Basics:syncVehicleData")

        if CONFIG["VehicleControls"]["EngineControl"] then
            TriggerEvent("chat:addSuggestion", "/engine", _U("engineCommandSug"))
            TriggerEvent("chat:addSuggestion", "/eng", _U("engineCommandSug"))
            RegisterCommand("engine", function(source, args, rawCommands) 
                engineCommand()
            end)
            RegisterCommand("eng", function(source, args, rawCommands) 
                engineCommand()
            end)
        end

        if CONFIG["VehicleControls"]["TrunkControl"] then 
            TriggerEvent("chat:addSuggestion", "/trunk", _U("trunkCommandSug")) 
            RegisterCommand("trunk", function(source, args, rawCommands) 
                doorCommand(5)
            end)
        end

        if CONFIG["VehicleControls"]["HoodControl"] then 
            TriggerEvent("chat:addSuggestion", "/hood", _U("hoodCommandSug")) 
            RegisterCommand("hood", function(source, args, rawCommands) 
                doorCommand(4)
            end)
        end

        if CONFIG["VehicleControls"]["DoorControl"] then 
            TriggerEvent("chat:addSuggestion", "/door", _U("doorCommandSug"), {
                { name="door", help="The door to open: fd, fp, rd, rp" }
            }) 
            RegisterCommand("door", function(source, args, rawCommands) 
                if args ~= nil then
                    if args[1] == "fd" then
                        doorCommand(0)
                    elseif args[1] == "fp" then
                        doorCommand(1)
                    elseif args[1] == "rd" then
                        doorCommand(2)
                    elseif args[1] == "rp" then
                        doorCommand(3)
                    else
                        sendChatMessage("Jay:Basics:standard", { _U("invalidArgs", "/door [fd/fp/rd/rp]") })
                    end
                else 
                    sendChatMessage("Jay:Basics:standard", { _U("invalidArgs", "/door [door]") })
                end
            end)
        end

        if CONFIG["VehicleControls"]["WindowControl"] then 
            TriggerEvent("chat:addSuggestion", "/window", _U("windowCommandSug"), {
                { name="window", help="The window to open: fd, fp, rd, rp" }
            })
            RegisterCommand("window", function(source, args, rawCommands) 
                if args ~= nil then
                    if args[1] == "fd" then
                        windowCommand(0)
                    elseif args[1] == "fp" then
                        windowCommand(1)
                    elseif args[1] == "rd" then
                        windowCommand(2)
                    elseif args[1] == "rp" then
                        windowCommand(3)
                    else
                        sendChatMessage("Jay:Basics:standard", { _U("invalidArgs", "/window [fd/fp/rd/rp]") })
                    end
                else 
                    sendChatMessage("Jay:Basics:standard", { _U("invalidArgs", "/window [window]") })
                end
            end)
        end
        
    end)
end


RegisterNetEvent("Jay:Basics:syncVehicleData")
AddEventHandler("Jay:Basics:syncVehicleData", function(data) 
    Vehicles = data
end)


function engineCommand() 
    local playerPed = GetPlayerPed(-1)

    if isPedRealAndAlive(playerPed) then

        if IsPedSittingInAnyVehicle(playerPed) then 
            local vehicle = GetVehiclePedIsIn( playerPed, false )

            if GetPedInVehicleSeat(vehicle, -1) == playerPed then

                if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
                    SetVehicleEngineOn(vehicle, (not GetIsVehicleEngineRunning(vehicle)), false, true)
    
                    if GetIsVehicleEngineRunning(vehicle) then
                        drawNotification(_("engineOff"))
                    else 
                        drawNotification(_("engineOn"))
                    end
                    
                end

            else 
                drawNotification(_("engineNotDriver"))
            end

        else
            drawNotification(_("engineNotInCar"))
        end 

    end

end

function doorCommand(doorIndex)
    local playerPed = GetPlayerPed(-1)

    if isPedRealAndAlive(playerPed) then

        if IsPedSittingInAnyVehicle(playerPed) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)

            if doesVehicleHaveDoor(vehicle, doorIndex) then 

                if isPedInSeatForDoorIndex(playerPed, vehicle, doorIndex) then

                    if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then
    
                        if GetVehicleDoorAngleRatio(vehicle, doorIndex) > 0 then
                            SetVehicleDoorShut(vehicle, doorIndex, false)
                            if doorIndex == 4 or doorIndex == 5 then
                                drawNotification(_("closed", translateDoorIndex(doorIndex))) 
                            else 
                                drawNotification(_("closed", translateDoorIndex(doorIndex) .. " Door")) 
                            end
                        else
                            SetVehicleDoorOpen(vehicle, doorIndex, false, false)
                            if doorIndex == 4 or doorIndex == 5 then
                                drawNotification(_("opened", translateDoorIndex(doorIndex))) 
                            else 
                                drawNotification(_("opened", translateDoorIndex(doorIndex) .. " Door")) 
                            end
                        end
    
                    end
    
                else
                    if doorIndex == 4 or doorIndex == 5 then
                        drawNotification(_("notDriverTrunkHood"))
                    else 
                        drawNotification(_("notDriverDoor"))
                    end
                end

            else 
                if doorIndex == 4 or doorIndex == 5 then
                    drawNotification(_("doorDoesNotExist", translateDoorIndex(doorIndex))) 
                else 
                    drawNotification(_("doorDoesNotExist", translateDoorIndex(doorIndex) .. " Door")) 
                end
            end

        elseif not IsPedSittingInAnyVehicle(playerPed) then
            local playerPos = GetEntityCoords(playerPed)
            local zoneInfrontOfPlayer = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 10.0, 0.0)
            local vehicle = getVehicleInDirection(playerPos, zoneInfrontOfPlayer)
            local rangeInfrontOfPlayer = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
            local vehicleInRange = getVehicleInDirection(playerPos, rangeInfrontOfPlayer)

            if DoesEntityExist(vehicle) then
                
                if vehicle ~= nil and vehicle ~= 0 and vehicle ~= 1 then

                    if doesVehicleHaveDoor(vehicle, doorIndex) then 

                        if GetVehicleDoorAngleRatio(vehicle, doorIndex) > 0 then
                            SetVehicleDoorShut(vehicle, doorIndex, false)
                            if doorIndex == 4 or doorIndex == 5 then
                                drawNotification(_("closed", translateDoorIndex(doorIndex))) 
                            else 
                                drawNotification(_("closed", translateDoorIndex(doorIndex) .. " Door")) 
                            end
                        else
                            SetVehicleDoorOpen(vehicle, doorIndex, false, false)
                            if doorIndex == 4 or doorIndex == 5 then
                                drawNotification(_("opened", translateDoorIndex(doorIndex))) 
                            else 
                                drawNotification(_("opened", translateDoorIndex(doorIndex) .. " Door")) 
                            end
                        end

                    else 
                        if doorIndex == 4 or doorIndex == 5 then
                            drawNotification(_("doorDoesNotExist", translateDoorIndex(doorIndex))) 
                        else 
                            drawNotification(_("doorDoesNotExist", translateDoorIndex(doorIndex) .. " Door")) 
                        end
                    end

                end

            else 

                if DoesEntityExist(vehicleInRange) then
                    if doorIndex == 4 then
                        drawNotification(_("tooFarHood"))
                    else 
                        drawNotification(_("tooFarDoor"))
                    end
                else 
                    drawNotification(_("notNearCar"))
                end

            end

        end

    end

end

function windowCommand(windowIndex) 
    local playerPed = GetPlayerPed(-1)

    TriggerServerEvent("Jay:Basics:syncVehicleData")

    Citizen.Wait(100)

    if isPedRealAndAlive(playerPed) then

        if IsPedSittingInAnyVehicle(playerPed) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            
            if doesVehicleHaveWindow(vehicle, windowIndex) then 

                if isPedInSeatForWindowIndex(playerPed, vehicle, windowIndex) then

                    if vehicle ~= nil then

                        if isVehicleWindowOpen(vehicle, windowIndex) then
                            drawNotification(_("opened", translateWindowIndex(windowIndex) .. " Window")) 
                            setWindowData(vehicle, windowIndex)
                            RollDownWindow(vehicle, windowIndex)
                        elseif not isVehicleWindowOpen(vehicle, windowIndex) then
                            drawNotification(_("closed", translateWindowIndex(windowIndex) .. " Window")) 
                            setWindowData(vehicle, windowIndex)
                            RollUpWindow(vehicle, windowIndex)
                        end
    
                    end
    
                else
                    drawNotification(_("cantReachWindow"))
                end

            else 
                drawNotification(_("windowDoesNotExist", translateDoorIndex(doorIndex) .. " Window")) 
            end

        end

    end
end