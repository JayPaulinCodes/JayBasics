function sendChatMessage(templateID, arguments) 
    TriggerEvent('chat:addMessage', 
        { 
            templateId = templateID, 
            multiline = true, 
            args = arguments
        }
    )
end

--[[
    OLD FUNCTION
    drawNotification(message)
    Displayes a message above the map

    @message - The message to display
]]
-- function drawNotification(message)
--     SetNotificationTextEntry("STRING")
--     AddTextComponentString(message)
--     DrawNotification(false, false)
-- end

function drawNotification(message)
    SendNUIMessage({
        module = "JayNotify",
        data = {
            type = "standard",
            options = {
                position = "top-right",
                text = message,
                autoClose = true
            }
        }
    })
end

--[[
    drawNotificationColour(message, hex)
    Displayes a message above the map

    @message - The message to display
    @hex - The colour code of the message
]]
function drawNotificationColour(message, hex)
    SendNUIMessage({
        module = "JayNotify",
        data = {
            type = "colour",
            options = {
                position = "top-right",
                colour = hex,
                text = message,
                autoClose = true
            }
        }
    })
end


--[[
    isPedRealAndAlive(playerPed)
    Checks to make sure a player exists and is not dead

    @playerPed - The player ped of the entity to test (See GetPlayerPed())

    @returns - boolean
]]
function isPedRealAndAlive(playerPed) 

    if DoesEntityExist(playerPed) and not IsEntityDead(playerPed) then 
        return true 
    else
        return false 
    end

end


--[[
    isVehicleLocked(vehicle) 
    Checks to see if a vehicle is locked

    @vehicle - The vehicle to check

    @returns - boolean

    @nilReturns 
    The function will return nil when the vehicle
    doesn't exist
]]
function isVehicleLocked(vehicle) 

    if not DoesEntityExist(vehicle) then return nil end         -- Make sure the vehicle is real

    local lockState = GetVehicleDoorLockStatus(vehicle)

    if lockState == 0 or lockState == 1 then
        return false
    else
        return true
    end

end


--[[
    doesVehicleHaveDoor(vehicle, doorIndex)
    Checks if a vehicle has a specific door

    Vehicle Door Indexes:
    0 = Front Driver
    1 = Rear Driver
    2 = Front Passenger
    3 = Rear Passenger
    4 = Hood
    5 = Trunk

    @vehicle - The vehicle to check
    @doorIndex - The index of the door to check

    @returns - boolean

    @nilReturns 
    The function will return nil when either the vehicle
    doesn't exist or the doorIndex is out of value
]]
function doesVehicleHaveDoor(vehicle, doorIndex) 

    if not isDoorIndexValid(doorIndex) then return nil end      -- Make sure the doorIndex is valid
    if not DoesEntityExist(vehicle) then return nil end         -- Make sure the vehicle is real

    local value = GetIsDoorValid(vehicle, doorIndex)

    return value

end


--[[
    doesVehicleHaveWindow(vehicle, windowIndex)
    Checks if a vehicle has a specific window

    Vehicle Window Indexes:
    0 = Front Driver
    1 = Front Passenger
    2 = Rear Driver
    3 = Rear Passenger

    @vehicle - The vehicle to check
    @windowIndex - The index of the window to check

    @returns - boolean

    @nilReturns 
    The function will return nil when either the vehicle
    doesn't exist or the windowIndex is out of value
]]
function doesVehicleHaveWindow(vehicle, windowIndex) 

    if not isWindowIndexValid(windowIndex) then return nil end      -- Make sure the windowIndex is valid
    if not DoesEntityExist(vehicle) then return nil end         -- Make sure the vehicle is real

    doorIndex = windowIndexToDoorIndex(windowIndex)

    local value = GetIsDoorValid(vehicle, doorIndex)

    return value

end


--[[
    isVehicleDoorOpen(vehicle, doorIndex)
    Checks if a vehicle's door is open or not

    Vehicle Door Indexes:
    0 = Front Driver
    1 = Rear Driver
    2 = Front Passenger
    3 = Rear Passenger
    4 = Hood
    5 = Trunk

    @vehicle - The vehicle to check
    @doorIndex - The index of the door to check

    @returns - boolean

    @nilReturns 
    The function will return nil when either 
        the vehicle doesn't exist
        the doorIndex is out of value
        the vehicle doesn't have the requested door
]]
function isVehicleDoorOpen(vehicle, doorIndex)

    if not isDoorIndexValid(doorIndex) then return nil end                      -- Make sure the doorIndex is valid
    if not DoesEntityExist(vehicle) then return nil end                         -- Make sure the vehicle is real
    if not doesVehicleHaveDoor(vehicle, doorIndex) then return nil end           -- Make sure the vehicle has the door

    if GetVehicleDoorAngleRatio(vehicle, doorIndex) > 0 then
        return true
    else
        return false
    end

end


--[[
    isVehicleWindowOpen(vehicle, windowIndex)
    Checks if a vehicle's window is open or not

    Vehicle Window Indexes:
    0 = Front Driver
    1 = Front Passenger
    2 = Rear Driver
    3 = Rear Passenger

    @vehicle - The vehicle to check
    @windowIndex - The index of the window to check

    @returns - boolean

    @nilReturns 
    The function will return nil when either 
        the vehicle doesn't exist
        the windowIndex is out of value
        the vehicle doesn't have the requested windowwindowIndex
]]
function isVehicleWindowOpen(vehicle, windowIndex)
    key = getKeyFromWindowIndex(windowIndex)

    if key == nil then return nil end
    if not isWindowIndexValid(windowIndex) then return nil end                      -- Make sure the windowIndex is valid
    if not DoesEntityExist(vehicle) then return nil end                         -- Make sure the vehicle is real
    if not doesVehicleHaveWindow(vehicle, windowIndex) then return nil end           -- Make sure the vehicle has the window

    TriggerServerEvent("Jay:Basics:syncVehicleData")

    Citizen.Wait(100)

    if Vehicles[vehicle] == nil then
        return true
    else
        if Vehicles[vehicle]["windows"][key] then
            return true
        elseif not Vehicles[vehicle]["windows"][key] then
            return false
        end
    end

end


--[[
    isDoorIndexValid(doorIndex) 
    Checks if a value is allowed as a doorIndex

    Vehicle Door Indexes:
    0 = Front Driver
    1 = Rear Driver
    2 = Front Passenger
    3 = Rear Passenger
    4 = Hood
    5 = Trunk

    @doorIndex - The index of the door to check

    @returns - boolean
]]
function isDoorIndexValid(doorIndex) 
    if doorIndex >= 0 and doorIndex <= 5 then
        return true
    else
        return false
    end
end


--[[
    isWindowIndexValid(windowIndex) 
    Checks if a value is allowed as a windowIndex

    Vehicle Window Indexes:
    0 = Front Driver
    1 = Front Passenger
    2 = Rear Driver
    3 = Rear Passenger

    @windowIndex - The index of the window to check

    @returns - boolean
]]
function isWindowIndexValid(windowIndex) 
    if windowIndex >= 0 and windowIndex <= 3 then
        return true
    else
        return false
    end
end


--[[
    windowIndexToDoorIndex(windowIndex) 
    Gets the door index for a window index

    Vehicle Window Indexes:
    0 = Front Driver
    1 = Front Passenger
    2 = Rear Driver
    3 = Rear Passenger

    Vehicle Door Indexes:
    0 = Front Driver
    1 = Rear Driver
    2 = Front Passenger
    3 = Rear Passenger

    @windowIndex - The index of the window to check

    @returns - number
]]
function windowIndexToDoorIndex(windowIndex) 
    if windowIndex == 0 then
        return 0
    elseif windowIndex == 1 then
        return 1
    elseif windowIndex == 2 then
        return 2
    elseif windowIndex == 3 then
        return 3
    else 
        return nil
    end
end


--[[
    translateDoorIndex(doorIndex)
    Coverts a doorIndex int to a string

    Vehicle Door Indexes:
    0 = Front Driver
    1 = Rear Driver
    2 = Front Passenger
    3 = Rear Passenger
    4 = Hood
    5 = Trunk

    @doorIndex - The index of the door

    @returns - String

    @nilReturns
    The function will return nil when
        the doorIndex is out of value
]]
function translateDoorIndex(doorIndex)

    if not isDoorIndexValid(doorIndex) then return nil end      -- Make sure the doorIndex is valid

    if doorIndex == 0 then
        return _U("frontDriver")
    elseif doorIndex == 1 then
        return _U("frontPassenger")
    elseif doorIndex == 2 then
        return _U("rearDriver")
    elseif doorIndex == 3 then
        return _U("rearPassenger")
    elseif doorIndex == 4 then
        return _U("hood")
    elseif doorIndex == 5 then
        return _U("trunk")
    end

end


--[[
    translateWindowIndex(windowIndex)
    Coverts a windowIndex int to a string

    Vehicle Window Indexes:
    0 = Front Driver
    1 = Front Passenger
    2 = Rear Driver
    3 = Rear Passenger

    @windowIndex - The index of the window

    @returns - String

    @nilReturns
    The function will return nil when
        the windowIndex is out of value
]]
function translateWindowIndex(windowIndex)

    if not isWindowIndexValid(windowIndex) then return nil end      -- Make sure the windowIndex is valid

    if windowIndex == 0 then
        return _U("frontDriver")
    elseif windowIndex == 1 then
        return _U("frontPassenger")
    elseif windowIndex == 2 then
        return _U("rearDriver")
    elseif windowIndex == 3 then
        return _U("rearPassenger")
    end

end


--[[
    isPedInSeatForDoorIndex(playerPed, vehicle, doorIndex)
    Checks if the player is in an appropriate seat to access
    a sepcific door.

    @playerPed - The player to check
    @vehicle - The vehicle to check
    @doorIndex - The index of the door to check

    @returns - boolean

    @nilReturns 
    The function will return nil when either 
        the player doesn't exist
        the vehicle doesn't exist
        the doorIndex is out of value
        the vehicle doesn't have the requested door
]]
function isPedInSeatForDoorIndex(playerPed, vehicle, doorIndex) 

    if not isPedRealAndAlive(playerPed) then return nil end                 -- Make sure the playerPed is real
    if not DoesEntityExist(vehicle) then return nil end                     -- Make sure the vehicle is real
    if not isDoorIndexValid(doorIndex) then return nil end                  -- Make sure the doorIndex is valid
    if not doesVehicleHaveDoor(vehicle, doorIndex) then return nil end      -- Make sure the vehicle has that door    

    if doorIndex == 0 or doorIndex == 4 or doorIndex == 5 then
        -- check for front driver
        if GetPedInVehicleSeat(vehicle, -1) == playerPed then
            return true
        else 
            return false
        end
    elseif doorIndex == 2 then
        -- check for front passenger
        if GetPedInVehicleSeat(vehicle, 0) == playerPed then
            return true
        else 
            return false
        end
    elseif doorIndex == 1 then
        -- check for rear driver
        if GetPedInVehicleSeat(vehicle, 1) == playerPed then
            return true
        else 
            return false
        end
    elseif doorIndex == 3 then
        -- check for rear passenger
        if GetPedInVehicleSeat(vehicle, 2) == playerPed then
            return true
        else 
            return false
        end
    end

end


--[[
    isPedInSeatForWindowIndex(playerPed, vehicle, windowIndex)
    Checks if the player is in an appropriate seat to access
    a sepcific door.

    Vehicle Window Indexes:
    0 = Front Driver
    1 = Front Passenger
    2 = Rear Driver
    3 = Rear Passenger

    @playerPed - The player to check
    @vehicle - The vehicle to check
    @windowIndex - The index of the window to check

    @returns - boolean

    @nilReturns 
    The function will return nil when either 
        the player doesn't exist
        the vehicle doesn't exist
        the windowIndex is out of value
        the vehicle doesn't have the requested window
]]
function isPedInSeatForWindowIndex(playerPed, vehicle, windowIndex) 

    if not isPedRealAndAlive(playerPed) then return nil end                     -- Make sure the playerPed is real
    if not DoesEntityExist(vehicle) then return nil end                         -- Make sure the vehicle is real
    if not isWindowIndexValid(windowIndex) then return nil end                  -- Make sure the windowIndex is valid
    if not doesVehicleHaveWindow(vehicle, windowIndex) then return nil end      -- Make sure the vehicle has that window    

    if windowIndex == 0 then
        -- check for front driver
        if GetPedInVehicleSeat(vehicle, -1) == playerPed then
            return true
        else 
            return false
        end
    elseif windowIndex == 1 then
        -- check for front passenger
        if GetPedInVehicleSeat(vehicle, 0) == playerPed or GetPedInVehicleSeat(vehicle, -1) == playerPed then
            return true
        else 
            return false
        end
    elseif windowIndex == 2 then
        -- check for rear driver
        if GetPedInVehicleSeat(vehicle, 1) == playerPed or GetPedInVehicleSeat(vehicle, -1) == playerPed then
            return true
        else 
            return false
        end
    elseif windowIndex == 3 then
        -- check for rear passenger
        if GetPedInVehicleSeat(vehicle, 2) == playerPed or GetPedInVehicleSeat(vehicle, -1) == playerPed then
            return true
        else 
            return false
        end
    end

end


--[[
    DO NOT USE, OLD METHOD
]]
function getKeyFromWindowIndex(windowIndex) 
    if windowIndex == 0 then
        return "fd"
    elseif windowIndex == 1 then
        return "fp"
    elseif windowIndex == 2 then
        return"rd"
    elseif windowIndex == 3 then
        return "rp"
    else
        return nil
    end
end


--[[
    TODO: Document Function
]]
function setWindowData(vehicle, windowIndex) 
    key = getKeyFromWindowIndex(windowIndex)

    if key == nil then return nil end
    
    if Vehicles[vehicle] == nil then
        Vehicles[vehicle] = {
            locked = false,
            key = nil,
            windows = {
                fd = true,
                fp = true,
                rd = true,
                rp = true
            }
        }
    end

    Vehicles[vehicle]["windows"][key] = not Vehicles[vehicle]["windows"][key]

    TriggerServerEvent("Jay:Basics:setVehicleData", vehicle, Vehicles[vehicle])

    TriggerServerEvent("Jay:Basics:syncVehicleData")
end


--[[
    TODO: Document Function
]]
function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end


--[[
    Shoutout to Flatracer on the forums for this one
    https://forum.cfx.re/t/use-displayonscreenkeyboard-properly/51143/2

    -- TextEntry		-->	The Text above the typing field in the black square
	-- ExampleText		-->	An Example Text, what it should say in the typing field
	-- MaxStringLenght	-->	Maximum String Lenght
]]
function getUserTextInput(TextEntry, ExampleText, MaxStringLenght)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry) --Sets the Text above the typing field in the black square
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght) --Actually calls the Keyboard Input
	blockinput = true --Blocks new input while typing if **blockinput** is used

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do --While typing is not aborted and not finished, this loop waits
		Citizen.Wait(0)
	end
		
	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult() --Gets the result of the typing
		Citizen.Wait(500) --Little Time Delay, so the Keyboard won't open again if you press enter to finish the typing
		blockinput = false --This unblocks new Input when typing is done
		return result --Returns the result
	else
		Citizen.Wait(500) --Little Time Delay, so the Keyboard won't open again if you press enter to finish the typing
		blockinput = false --This unblocks new Input when typing is done
		return nil --Returns nil if the typing got aborted
	end
    
end


--[[
    TODO: Document Function
]]
function toggleSaftey() 

    -- PlaySoundFrontend(-1, "Faster_Click", "RESPAWN_ONLINE_SOUNDSET", 1)
    playSound("weapons_safety.wav", 1.0)

    if WeaponSafety then
        
        if CONFIG["WeaponControls"]["EnableWeaponFireModes"] then
            -- TODO: return to previous state
            if WeaponFireMode == 1 then
                setWeaponIcon("single")
            elseif WeaponFireMode == 2 then
                setWeaponIcon("burst")
            elseif WeaponFireMode == 3 then
                setWeaponIcon("auto")
            else
                setWeaponIcon("standard")
            end
        else
            setWeaponIcon("standard")
        end
        
    else
        setWeaponIcon("safety")
    end

    WeaponSafety = not WeaponSafety

end


--[[
    TODO: Document Function
]]
function cycleFireMode()
    if not WeaponSafety then
        local nextMode = (WeaponFireMode == 3 and 0 or WeaponFireMode + 1)

        setFireMode(nextMode)
    
        WeaponFireMode = nextMode
    end
end


--[[
    TODO: Document Function

    0 = Standard (No Modification)
    1 = Single Shot
    2 = Burst Fire
    3 = Full Auto
]]
function setFireMode(state)

    PlaySoundFrontend(-1, "Faster_Click", "RESPAWN_ONLINE_SOUNDSET", 1)

    if state == 0 then
        setWeaponIcon("standard")
        WeaponFireMode = state
    elseif state == 1 then
        setWeaponIcon("single")
        WeaponFireMode = state
    elseif state == 2 then
        setWeaponIcon("burst")
        WeaponFireMode = state
    elseif state == 3 then
        setWeaponIcon("auto")
        WeaponFireMode = state
    end
    
end


--[[
    TODO: Document Function
]]
function setWeaponIcon(state) 

    if state == "safety" then
        SendNUIMessage({
            module = "weapon-state",
            data = {
                type = "updateWeaponState",
                name = "WeaponIcon_Safety"
            }
        })
    elseif state == "single" then
        SendNUIMessage({
            module = "weapon-state",
            data = {
                type = "updateWeaponState",
                name = "WeaponIcon_Single"
            }
        })
    elseif state == "burst" then
        SendNUIMessage({
            module = "weapon-state",
            data = {
                type = "updateWeaponState",
                name = "WeaponIcon_Burst"
            }
        })
    elseif state == "auto" then
        SendNUIMessage({
            module = "weapon-state",
            data = {
                type = "updateWeaponState",
                name = "WeaponIcon_Auto"
            }
        })
    elseif state == "standard" then
        SendNUIMessage({
            module = "weapon-state",
            data = {
                type = "updateWeaponState",
                name = "WeaponIcon_Standard"
            }
        })
    end

end


--[[
    TODO: Document Function
]]
function playSound(fileName, volume)
    vol = volume or 1.0
    SendNUIMessage({
        module = "sound-player",
        data = {
            file = fileName,
            volume = vol
        }
    })
end


--[[
    TODO: Document Function
]]
function getWeaponObjectFromHash(weaponHash)
    return WEAPONS[weaponHash]
end


--[[
    TODO: Document Function
]]
function doesWeaponHaveFiringModes(weaponObject)
    local playerPed = GetPlayerPed(-1)


    if not isPedRealAndAlive(playerPed) then 
        return false 
    else 

        for weapon = 1, #AutomaticWeapons do
            -- print("=-=-=-=-=", weapon)
            -- print(AutomaticWeapons)
            -- print(#AutomaticWeapons, weapon, (AutomaticWeapons[weapon].Hash == weaponObject.Hash), AutomaticWeapons[weapon].Hash, weaponObject.Hash)
            if AutomaticWeapons[weapon].Hash == weaponObject.Hash then
                return true
            end
        end

        -- for hash, weapon in ipairs(AutomaticWeapons) do
        --     -- print(hash, weapon)
        --     -- print((weapon.Hash == weaponObject.Hash), weapon.Hash, weaponObject.Hash)
            
        -- end
        return false    
    end
    
end


--[[
    TODO: Document Function
]]
function doesWeaponHaveSafety(weaponObject)
    local playerPed = GetPlayerPed(-1)

    if not isPedRealAndAlive(playerPed) then 
        return false 
    else
        if weaponObject ~= nil then
            local cat = weaponObject.Category
            if cat == "GROUP_SHOTGUN" or cat == "GROUP_SNIPER" or cat == "GROUP_HEAVY" or cat == "GROUP_PISTOL" or cat == "GROUP_SMG" or cat == "GROUP_MG" or cat == "GROUP_RIFLE" then
                return true
            else
                return false
            end
        else
            return false
        end
    end

end


--[[
    TODO: Document Function
]]
function getPedCurrentWeaponObject()
    local playerPed = GetPlayerPed(-1)
    xx, currentWeaponHash = GetCurrentPedWeapon(playerPed)

    if WEAPONS[tostring(currentWeaponHash)] ~= nil then
        return WEAPONS[tostring(currentWeaponHash)]
    else
        return nill
    end
end


--[[
    TODO: Document Function
]]
function showWeaponIcon() 
    SendNUIMessage({
        module = "weapon-state",
        data = {
            type = "showWeaponStateImg"
        }
    })
end


--[[
    TODO: Document Function
]]
function hideWeaponIcon() 
    SendNUIMessage({
        module = "weapon-state",
        data = {
            type = "hideWeaponStateImg"
        }
    })
end


--[[
    TODO: Document Function
]]
function doesArrayHaveValue (array, value)
    for index, v in ipairs(array) do
        if v == value then 
            return true
        end
    end

    return false
end


--[[
    TODO: Document Function
    CREDIT: https://github.com/NAT2K15/laser-script/blob/main/client.lua
]]
function RotationToDirection(rotation)
	local adjustedRotation = { 
		x = (math.pi / 180) * rotation.x, 
		y = (math.pi / 180) * rotation.y, 
		z = (math.pi / 180) * rotation.z 
	}
	local direction = {
		x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), 
		y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)), 
		z = math.sin(adjustedRotation.x)
	}
	return direction
end


--[[
    TODO: Document Function
]]
function GetPedZone()
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
    local ZoneLabel = GetNameOfZone(x, y, z)
    local Zone = GetLabelText(Zone)

    return ZoneLabel, Zone
end


--[[
    TODO: Document Function
    https://docs.fivem.net/natives/?_0xCD90657D4C30E1CA
]]
function getAreaNameFromZone()
    local ZoneLabel, Zone = GetPedZone()
    local Location = ""

    --
    -- Set 1
    --

    -- if          ZoneLabel == "AIRP"     then Location = "Ports Of Los Santos"
    -- elseif      ZoneLabel == "ALAMO"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "ALTA"     then Location = "Vinewood"
    -- elseif      ZoneLabel == "ARMYB"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "BANHAMC"  then Location = "Blaine County"
    -- elseif      ZoneLabel == "BANNING"  then Location = "Metro"
    -- elseif      ZoneLabel == "BEACH"    then Location = "Del Perro"
    -- elseif      ZoneLabel == "BHAMCA"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "BRADP"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "BRADT"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "BURTON"   then Location = "Vinewood"
    -- elseif      ZoneLabel == "CALAFB"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "CANNY"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "CCREAK"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "CHAMH"    then Location = "Metro"
    -- elseif      ZoneLabel == "CHIL"     then Location = "Vinewood"
    -- elseif      ZoneLabel == "CHU"      then Location = "Chumash"
    -- elseif      ZoneLabel == "CMSW"     then Location = "Blaine County"
    -- elseif      ZoneLabel == "CYPRE"    then Location = "Metro"
    -- elseif      ZoneLabel == "DAVIS"    then Location = "Metro"
    -- elseif      ZoneLabel == "DELBE"    then Location = "Del Perro"
    -- elseif      ZoneLabel == "DELPE"    then Location = "Del Perro"
    -- elseif      ZoneLabel == "DELSOL"   then Location = "Metro"
    -- elseif      ZoneLabel == "DESRT"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "DOWNT"    then Location = "Metro"
    -- elseif      ZoneLabel == "DTVINE"   then Location = "Vinewood"
    -- elseif      ZoneLabel == "EAST_V"   then Location = "Vinewood"
    -- elseif      ZoneLabel == "EBURO"    then Location = "Metro"
    -- elseif      ZoneLabel == "ELGORL"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "ELYSIAN"  then Location = "Ports Of Los Santos"
    -- elseif      ZoneLabel == "GALFISH"  then Location = "Blaine County"
    -- elseif      ZoneLabel == "GOLF"     then Location = "Del Perro"
    -- elseif      ZoneLabel == "GRAPES"   then Location = "Grapeseed"
    -- elseif      ZoneLabel == "GREATC"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "HARMO"    then Location = "Harmony"
    -- elseif      ZoneLabel == "HAWICK"   then Location = "Vinewood"
    -- elseif      ZoneLabel == "HORS"     then Location = "Vinewood"
    -- elseif      ZoneLabel == "HUMLAB"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "JAIL"     then Location = "Blaine County"
    -- elseif      ZoneLabel == "KOREAT"   then Location = "Del Perro"
    -- elseif      ZoneLabel == "LACT"     then Location = "Vinewood"
    -- elseif      ZoneLabel == "LAGO"     then Location = "Blaine County"
    -- elseif      ZoneLabel == "LDAM"     then Location = "Vinewood"
    -- elseif      ZoneLabel == "LEGSQU"   then Location = "Metro"
    -- elseif      ZoneLabel == "LMESA"    then Location = "Vinewood"
    -- elseif      ZoneLabel == "LOSPUER"  then Location = "Metro"
    -- elseif      ZoneLabel == "MIRR"     then Location = "Mirror Park"
    -- elseif      ZoneLabel == "MORN"     then Location = "Del Perro"
    -- elseif      ZoneLabel == "MOVIE"    then Location = "Del Perro"
    -- elseif      ZoneLabel == "MTCHIL"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "MTGORDO"  then Location = "Blaine County"
    -- elseif      ZoneLabel == "MTJOSE"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "MURRI"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "NCHU"     then Location = "Chumash"
    -- elseif      ZoneLabel == "NOOSE"    then Location = "Vinewood"
    -- elseif      ZoneLabel == "OCEANA"   then Location = "Del Perro"
    -- elseif      ZoneLabel == "PALCOV"   then Location = "Paleto Bay"
    -- elseif      ZoneLabel == "PALETO"   then Location = "Paleto Bay"
    -- elseif      ZoneLabel == "PALFOR"   then Location = "Paleto Bay"
    -- elseif      ZoneLabel == "PALHIGH"  then Location = "Palomino Highlands"
    -- elseif      ZoneLabel == "PALMPOW"  then Location = "Blaine County"
    -- elseif      ZoneLabel == "PBLUFF"   then Location = "Del Perro"
    -- elseif      ZoneLabel == "PBOX"     then Location = "Metro"
    -- elseif      ZoneLabel == "PROCOB"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "RANCHO"   then Location = "Metro"
    -- elseif      ZoneLabel == "RGLEN"    then Location = "Richman Glen"
    -- elseif      ZoneLabel == "RICHM"    then Location = "Richman"
    -- elseif      ZoneLabel == "ROCKF"    then Location = "Rockford Hills"
    -- elseif      ZoneLabel == "RTRAK"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "SANAND"   then Location = "San Andreas"
    -- elseif      ZoneLabel == "SANCHIA"  then Location = "Blaine County"
    -- elseif      ZoneLabel == "SANDY"    then Location = "Sandy Shores"
    -- elseif      ZoneLabel == "SKID"     then Location = "Metro"
    -- elseif      ZoneLabel == "SLAB"     then Location = "Blaine County"
    -- elseif      ZoneLabel == "STAD"     then Location = "Metro"
    -- elseif      ZoneLabel == "STRAW"    then Location = "Metro"
    -- elseif      ZoneLabel == "TATAMO"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "TERMINA"  then Location = "Ports Of Los Santos"
    -- elseif      ZoneLabel == "TEXTI"    then Location = "Metro"
    -- elseif      ZoneLabel == "TONGVAH"  then Location = "Blaine County"
    -- elseif      ZoneLabel == "TONGVAV"  then Location = "Blaine County"
    -- elseif      ZoneLabel == "VCANA"    then Location = "Del Perro"
    -- elseif      ZoneLabel == "VESP"     then Location = "Del Perro"
    -- elseif      ZoneLabel == "VINE"     then Location = "Vinewood"
    -- elseif      ZoneLabel == "WINDF"    then Location = "Blaine County"
    -- elseif      ZoneLabel == "WVINE"    then Location = "Vinewood"
    -- elseif      ZoneLabel == "ZANCUDO"  then Location = "Blaine County"
    -- elseif      ZoneLabel == "ZP_ORT"   then Location = "Ports of Los Santos"
    -- elseif      ZoneLabel == "ZQ_UAR"   then Location = "Blaine County"
    -- elseif      ZoneLabel == "PROL"     then Location = "Prologue / North Yankton"
    -- elseif      ZoneLabel == "ISHeist"  then Location = "Cayo Perico
    -- end


    --
    -- Set 2
    --

    if          ZoneLabel == "AIRP"     then Location = "Los Santos"
    elseif      ZoneLabel == "ALAMO"    then Location = "Blaine County"
    elseif      ZoneLabel == "ALTA"     then Location = "Los Santos"
    elseif      ZoneLabel == "ARMYB"    then Location = "Blaine County"
    elseif      ZoneLabel == "BANHAMC"  then Location = "Blaine County"
    elseif      ZoneLabel == "BANNING"  then Location = "Los Santos"
    elseif      ZoneLabel == "BEACH"    then Location = "Los Santos"
    elseif      ZoneLabel == "BHAMCA"   then Location = "Blaine County"
    elseif      ZoneLabel == "BRADP"    then Location = "Blaine County"
    elseif      ZoneLabel == "BRADT"    then Location = "Blaine County"
    elseif      ZoneLabel == "BURTON"   then Location = "Los Santos"
    elseif      ZoneLabel == "CALAFB"   then Location = "Blaine County"
    elseif      ZoneLabel == "CANNY"    then Location = "Blaine County"
    elseif      ZoneLabel == "CCREAK"   then Location = "Blaine County"
    elseif      ZoneLabel == "CHAMH"    then Location = "Los Santos"
    elseif      ZoneLabel == "CHIL"     then Location = "Los Santos"
    elseif      ZoneLabel == "CHU"      then Location = "Chumash"
    elseif      ZoneLabel == "CMSW"     then Location = "Blaine County"
    elseif      ZoneLabel == "CYPRE"    then Location = "Los Santos"
    elseif      ZoneLabel == "DAVIS"    then Location = "Los Santos"
    elseif      ZoneLabel == "DELBE"    then Location = "Los Santos"
    elseif      ZoneLabel == "DELPE"    then Location = "Los Santos"
    elseif      ZoneLabel == "DELSOL"   then Location = "Los Santos"
    elseif      ZoneLabel == "DESRT"    then Location = "Blaine County"
    elseif      ZoneLabel == "DOWNT"    then Location = "Los Santos"
    elseif      ZoneLabel == "DTVINE"   then Location = "Los Santos"
    elseif      ZoneLabel == "EAST_V"   then Location = "Los Santos"
    elseif      ZoneLabel == "EBURO"    then Location = "Los Santos"
    elseif      ZoneLabel == "ELGORL"   then Location = "Blaine County"
    elseif      ZoneLabel == "ELYSIAN"  then Location = "Los Santos"
    elseif      ZoneLabel == "GALFISH"  then Location = "Blaine County"
    elseif      ZoneLabel == "GOLF"     then Location = "Los Santos"
    elseif      ZoneLabel == "GRAPES"   then Location = "Blaine County"
    elseif      ZoneLabel == "GREATC"   then Location = "Blaine County"
    elseif      ZoneLabel == "HARMO"    then Location = "Blaine County"
    elseif      ZoneLabel == "HAWICK"   then Location = "Los Santos"
    elseif      ZoneLabel == "HORS"     then Location = "Los Santos"
    elseif      ZoneLabel == "HUMLAB"   then Location = "Blaine County"
    elseif      ZoneLabel == "JAIL"     then Location = "Blaine County"
    elseif      ZoneLabel == "KOREAT"   then Location = "Los Santos"
    elseif      ZoneLabel == "LACT"     then Location = "Los Santos"
    elseif      ZoneLabel == "LAGO"     then Location = "Blaine County"
    elseif      ZoneLabel == "LDAM"     then Location = "Los Santos"
    elseif      ZoneLabel == "LEGSQU"   then Location = "Los Santos"
    elseif      ZoneLabel == "LMESA"    then Location = "Los Santos"
    elseif      ZoneLabel == "LOSPUER"  then Location = "Los Santos"
    elseif      ZoneLabel == "MIRR"     then Location = "Los Santos"
    elseif      ZoneLabel == "MORN"     then Location = "Los Santos"
    elseif      ZoneLabel == "MOVIE"    then Location = "Los Santos"
    elseif      ZoneLabel == "MTCHIL"   then Location = "Blaine County"
    elseif      ZoneLabel == "MTGORDO"  then Location = "Blaine County"
    elseif      ZoneLabel == "MTJOSE"   then Location = "Blaine County"
    elseif      ZoneLabel == "MURRI"    then Location = "Blaine County"
    elseif      ZoneLabel == "NCHU"     then Location = "Chumash"
    elseif      ZoneLabel == "NOOSE"    then Location = "Los Santos"
    elseif      ZoneLabel == "OCEANA"   then Location = "Los Santos"
    elseif      ZoneLabel == "PALCOV"   then Location = "Blaine County"
    elseif      ZoneLabel == "PALETO"   then Location = "Blaine County"
    elseif      ZoneLabel == "PALFOR"   then Location = "Blaine County"
    elseif      ZoneLabel == "PALHIGH"  then Location = "Los Santos"
    elseif      ZoneLabel == "PALMPOW"  then Location = "Blaine County"
    elseif      ZoneLabel == "PBLUFF"   then Location = "Los Santos"
    elseif      ZoneLabel == "PBOX"     then Location = "Los Santos"
    elseif      ZoneLabel == "PROCOB"   then Location = "Blaine County"
    elseif      ZoneLabel == "RANCHO"   then Location = "Los Santos"
    elseif      ZoneLabel == "RGLEN"    then Location = "Los Santos"
    elseif      ZoneLabel == "RICHM"    then Location = "Los Santos"
    elseif      ZoneLabel == "ROCKF"    then Location = "Los Santos"
    elseif      ZoneLabel == "RTRAK"    then Location = "Blaine County"
    elseif      ZoneLabel == "SANAND"   then Location = "San Andreas"
    elseif      ZoneLabel == "SANCHIA"  then Location = "Blaine County"
    elseif      ZoneLabel == "SANDY"    then Location = "Blaine County"
    elseif      ZoneLabel == "SKID"     then Location = "Los Santos"
    elseif      ZoneLabel == "SLAB"     then Location = "Blaine County"
    elseif      ZoneLabel == "STAD"     then Location = "Los Santos"
    elseif      ZoneLabel == "STRAW"    then Location = "Los Santos"
    elseif      ZoneLabel == "TATAMO"   then Location = "Blaine County"
    elseif      ZoneLabel == "TERMINA"  then Location = "Los Santos"
    elseif      ZoneLabel == "TEXTI"    then Location = "Los Santos"
    elseif      ZoneLabel == "TONGVAH"  then Location = "Blaine County"
    elseif      ZoneLabel == "TONGVAV"  then Location = "Blaine County"
    elseif      ZoneLabel == "VCANA"    then Location = "Los Santos"
    elseif      ZoneLabel == "VESP"     then Location = "Los Santos"
    elseif      ZoneLabel == "VINE"     then Location = "Los Santos"
    elseif      ZoneLabel == "WINDF"    then Location = "Blaine County"
    elseif      ZoneLabel == "WVINE"    then Location = "Los Santos"
    elseif      ZoneLabel == "ZANCUDO"  then Location = "Blaine County"
    elseif      ZoneLabel == "ZP_ORT"   then Location = "Los Santos"
    elseif      ZoneLabel == "ZQ_UAR"   then Location = "Blaine County"
    elseif      ZoneLabel == "PROL"     then Location = "Prologue / North Yankton"
    elseif      ZoneLabel == "ISHeist"  then Location = "Cayo Perico"
    end

    return Location
end


--[[
    TODO: Document Function
]]
function getPlayersInRadius(range, excludePlayer)
    TriggerServerEvent("Jay:Basics:syncPlayerList")
    
    local playersInRange = {}
    -- local players = GetPlayers()
    local players = PlayersList
    local player = PlayerId()
    local playerPed = GetPlayerPed(-1)
    local playerPedId = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPedId, 0)

    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index, playerIdx in ipairs(players) do
        local targetPlayerId = playerIdx
        local targetPlayerPlayer = GetPlayerFromServerId(targetPlayerId)
        local targetPlayerPed = GetPlayerPed(targetPlayerPlayer)
        -- print(index, playerIdx, targetPlayerPed, playerPed, playerPedId)

        -- if(excludePlayer and (target ~= playerPed)) then
        --     local targetCoords = GetEntityCoords(targetPlayerPed, 0)
        --     local distanceFromPlayer = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], playerCoords['x'], playerCoords['y'], playerCoords['z'], true)
        --     if (distanceFromPlayer < range) then
        --         table.insert(playersInRange, targetPlayerPed)
        --     end
        -- end

        if (excludePlayer) then
            if(targetPlayerPed ~= playerPed) then
                local targetCoords = GetEntityCoords(targetPlayerPed)
                local distanceFromPlayer = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], playerCoords['x'], playerCoords['y'], playerCoords['z'], true)
                
                if (distanceFromPlayer < range) then
                    table.insert(playersInRange, targetPlayerId)
                end
            end
        else

            if(targetPlayerPed ~= playerPed) then
                local targetCoords = GetEntityCoords(targetPlayerPed)
                local distanceFromPlayer = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], playerCoords['x'], playerCoords['y'], playerCoords['z'], true)
                
                if (distanceFromPlayer < range) then
                    table.insert(playersInRange, targetPlayerId)
                end
            else
                table.insert(playersInRange, targetPlayerId)
            end
        end

    end

    return playersInRange
end


--[[
    TODO: Document Function
]]
function ExtractIdentifiers(target)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    --Loop over all identifiers
    for i = 0, GetNumPlayerIdentifiers(target) - 1 do
        local id = GetPlayerIdentifier(target, i)

        --Convert it to a nice table.
        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end


--[[
    TODO: Document Function
]]
function getClosestStation() 
    local stations = JAILS
    local playerCoords = GetEntityCoords(PlayerPedId(), 0)

    for key, station in pairs(stations) do
        local currentDistance = Vdist(station.centerPointCoords, playerCoords)

        if currentDistance ~= nil then
            stations[key]["distanceFromPD"] = currentDistance
        end
    end

    local lowestValueIndex = 0
    local lowestValue = false
    
    for key, station in pairs(stations) do
        if not lowestValue or station.distanceFromPD < lowestValue then
            lowestValueIndex = key
            lowestValue = station.distanceFromPD
        end
    end
    
    return JAILS[lowestValueIndex]
end

function teleportPlayer(location) 

    if not IsPlayerSwitchInProgress() then
        SwitchOutPlayer(PlayerPedId(), 0, 1)
    end

    -- Wait for the switch cam to be in the sky in the 'waiting' state (5).
    while GetPlayerSwitchState() ~= 5 do
        Citizen.Wait(0)
        clearScreen()
    end

    clearScreen()
    Citizen.Wait(0)
    DoScreenFadeOut(0)

    ClearScreen()
    Citizen.Wait(0)
    ClearScreen()
    DoScreenFadeIn(500)
    while not IsScreenFadedIn() do
        Citizen.Wait(0)
        ClearScreen()
    end
    
    local timer = GetGameTimer()
    
    while true do
        ClearScreen()
        Citizen.Wait(0)
        
        -- wait 5 seconds before starting the switch to the player
        if GetGameTimer() - timer > 5000 then
            
            -- Switch to the player.
            SwitchInPlayer(PlayerPedId())
            
            ClearScreen()
            
            -- Wait for the player switch to be completed (state 12).
            while GetPlayerSwitchState() ~= 12 do
                Citizen.Wait(0)
                ClearScreen()
            end
            -- Stop the infinite loop.
            break
        end
    end
    
    -- Reset the draw origin, just in case (allowing HUD elements to re-appear correctly)
    ClearDrawOrigin()
end

function clearScreen() 
    SetCloudHatOpacity(cloudOpacity)
    HideHudAndRadarThisFrame()
    
    -- nice hack to 'hide' HUD elements from other resources/scripts. kinda buggy though.
    SetDrawOrigin(0.0, 0.0, 0.0, 0)
end


--[[
    TODO: Document Function
]]
function switchPlayerToCoords(destinationCoords, adjustCoordsToGround)  
    local destination = nil
    local player = {}
    player.pedId = PlayerPedId()
    player.heading = GetEntityHeading(playerPedId)
    player.cam = {}
    player.cam.pitch = GetGameplayCamRelativePitch()
    player.cam.heading = GetGameplayCamRelativeHeading()


    if adjustCoordsToGround then
        destination = vector3(destinationCoords.x, destinationCoords.y, destinationCoords.z + 1.0)
    else
        destination = vector3(destinationCoords.x, destinationCoords.y, destinationCoords.z)
    end

    RequestCollisionAtCoord(destination)
 
    --[[
        use flag of 0 for normal
        use switch type of 2 for 1 step out from player
    ]]
    SwitchOutPlayer(player.pedId, 0, 2)

    FreezeEntityPosition(player.pedId, true)

    Citizen.Wait(500)

    NetworkFadeOutEntity(player.pedId, false, true)

    while GetPlayerSwitchState() ~= 5 and GetPlayerSwitchState() ~= 3 do
        Citizen.Wait(250)
    end

    SetEntityCoordsNoOffset(player.pedId, destination)

    SetEntityHeading(player.pedId, player.heading)

    Citizen.Wait(5000)

    SwitchInPlayer(player.pedId)

    RequestCollisionAtCoord(destination)
    
    while not HasCollisionLoadedAroundEntity(player.pedId) do
        Citizen.Wait(0)
    end

    SetEntityCoordsNoOffset(player.pedId, destination)

    SetEntityHeading(player.pedId, player.heading)

    SetGameplayCamRelativePitch(player.cam.Pitch, 1.0)
    
    SetGameplayCamRelativeHeading(player.cam.heading)
    
    FreezeEntityPosition(player.pedId, false)
    
    NetworkFadeInEntity(player.pedId, true)
    
end