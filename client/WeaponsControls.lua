if CONFIG["WeaponControls"]["Enable"] then

    local taserSight_Enabled = false
    local taserSight_TaskDelay = 1000
    
    if CONFIG["WeaponControls"]["DisableAutoReload"] then SetWeaponsNoAutoreload(true) else SetWeaponsNoAutoreload(false) end
    
    if CONFIG["WeaponControls"]["DisableAutoSwap"] then SetWeaponsNoAutoswap(true) else SetWeaponsNoAutoswap(false) end
    
    if CONFIG["WeaponControls"]["PersistentWeaponFlashlights"] then SetFlashLightKeepOnWhileMoving(true) else SetFlashLightKeepOnWhileMoving(false) end

    -- Prep the weapon state icon on the screen
    if CONFIG["WeaponControls"]["EnableWeaponSafety"] or CONFIG["WeaponControls"]["EnableWeaponFireModes"] then
        Citizen.CreateThread(function() 
            local x = CONFIG["WeaponControls"]["WeaponStateIcon"].x
            local y = CONFIG["WeaponControls"]["WeaponStateIcon"].y 
            Citizen.Wait(300)
            SendNUIMessage({
                module = "weapon-state",
                data = {
                    type = "setWeaponStateImgRight",
                    name = x
                }
            })
    
            SendNUIMessage({
                module = "weapon-state",
                data = {
                    type = "setWeaponStateImgBottom",
                    name = y
                }
            })

            Citizen.Wait(300)

            hideWeaponIcon()
        end)
    end 

    -- Register the commands and keybinds for the script
    if CONFIG["WeaponControls"]["EnableWeaponSafety"] then
        RegisterCommand("safety", function(source, args, rawCommands)
            local playerWeaponObject = getPedCurrentWeaponObject()
            if (doesWeaponHaveSafety(playerWeaponObject)) then
                toggleSaftey()
            end
        end, false)
    
        TriggerEvent("chat:addSuggestion", "/safety", _U("satefyCommandSug"))
    
        RegisterKeyMapping("safety", _U("satefyCommandSug"), 'keyboard', CONFIG["WeaponControls"]["ToggleSafteyDefaultKey"])
    end

    if CONFIG["WeaponControls"]["EnableWeaponFireModes"] then
        RegisterCommand("firemode", function(source, args, rawCommands)
            local playerWeaponObject = getPedCurrentWeaponObject()
            if (doesWeaponHaveFiringModes(playerWeaponObject)) then
                cycleFireMode()
            end
        end, false)
    
        TriggerEvent("chat:addSuggestion", "/firemode", _U("firemodeCommandSug"))
    
        RegisterKeyMapping("firemode", _U("firemodeCommandSug"), 'keyboard', CONFIG["WeaponControls"]["ChangeFireModeDefaultKey"])
    end

    if CONFIG["WeaponControls"]["EnableTaserLaserSight"] then
        RegisterCommand("tasersight", function(source, args, rawCommands)
            taserSight_Enabled = not taserSight_Enabled
            currentWeapon = getPedCurrentWeaponObject()
            if taserSight_Enabled and currentWeapon.Category == "GROUP_STUNGUN" then
                drawNotificationColour(_("laserSightEnabled"), _("greenHex"))
            else
                drawNotificationColour(_("laserSightDisabled"), _("redHex"))
            end
        end, false)
    
        TriggerEvent("chat:addSuggestion", "/tasersight", _U("tasersightCommandSug"))
    
        RegisterKeyMapping("tasersight", _U("tasersightCommandSug"), 'keyboard', CONFIG["WeaponControls"]["TaserLaserSightDefaultToggleKey"])
    end
    
    -- Handle the laser sight
    Citizen.CreateThread(function() 
        local player = PlayerId()
        local playerPed = GetPlayerPed(-1)
        local playerPedId = PlayerPedId()

        while true do
            local playerWeaponObject = getPedCurrentWeaponObject()

            -- Handle the laser sight
            if IsPlayerFreeAiming(player) and isPedRealAndAlive(playerPed) and taserSight_Enabled and (playerWeaponObject.Hash == WEAPONS["911657153"].Hash or playerWeaponObject.Hash == WEAPONS["1171102963"].Hash) then
                taserSight_TaskDelay = 0
                local playerCameraRotation = GetGameplayCamRot()
                local playerWeaponEntity = GetCurrentPedWeaponEntityIndex(playerPedId)
                local startPoint = GetOffsetFromEntityInWorldCoords(playerWeaponEntity, 0, 0, -0.01)
                local direction = RotationToDirection(playerCameraRotation)

                local _x1, castHit, castCoords, _x2, _x3 = GetShapeTestResult(
                    StartShapeTestRay(
                        startPoint.x, 
                        startPoint.y, 
                        startPoint.z, 
                        startPoint.x + direction.x * 150, 
                        startPoint.y + direction.y * 150 ,
                        startPoint.z + direction.z * 150,
                        -1, 
                        playerPedId, 
                        1
                    )
                )

                if castHit ~= 0 then
                    DrawLine(
                        startPoint.x, 
                        startPoint.y, 
                        startPoint.z, 
                        castCoords.x, 
                        castCoords.y, 
                        castCoords.z, 
                        CONFIG["WeaponControls"]["TaserLaserColour"].r, 
                        CONFIG["WeaponControls"]["TaserLaserColour"].g,
                        CONFIG["WeaponControls"]["TaserLaserColour"].b, 
                        CONFIG["WeaponControls"]["TaserLaserColour"].alpha
                    )
                    DrawMarker(
                        28, 
                        castCoords.x, 
                        castCoords.y, 
                        castCoords.z, 
                        0.0, 
                        0.0, 
                        0.0, 
                        0.0, 
                        0.0,
                        0.0, 
                        0.01, 
                        0.01, 
                        0.01, 
                        CONFIG["WeaponControls"]["TaserLaserColour"].r, 
                        CONFIG["WeaponControls"]["TaserLaserColour"].g,
                        CONFIG["WeaponControls"]["TaserLaserColour"].b, 
                        CONFIG["WeaponControls"]["TaserLaserColour"].alpha,
                        false, 
                        false, 
                        2, 
                        nil, 
                        nil, 
                        false
                    )
                end
            else 
                taserSight_TaskDelay = 1000
            end

            Citizen.Wait(taserSight_TaskDelay)
        end
    
    end)

    Citizen.CreateThread(function() 
        local player = PlayerId()
        local playerPed = GetPlayerPed(-1)
        local playerPedId = PlayerPedId()

        if isPedRealAndAlive(playerPed) then

            while true do
                playerWeaponObject = getPedCurrentWeaponObject()

                -- Handle the reticles
                if (GetFollowPedCamViewMode() ~= 4 and IsPlayerFreeAiming(player) and not doesArrayHaveValue(CONFIG["WeaponControls"]["ReticleWeapons"], playerWeaponObject)) then
                    HideHudComponentThisFrame(14)
                end

                Citizen.Wait(0)
            end

        end
    end)

    Citizen.CreateThread(function() 
        local player = PlayerId()
        local playerPed = GetPlayerPed(-1)
        local playerPedId = PlayerPedId()

        if isPedRealAndAlive(playerPed) then

            while true do
                playerWeaponObject = getPedCurrentWeaponObject()
    
                if IsPedArmed(playerPed, 4) then

                    -- Handle showing the icon
                    if doesWeaponHaveSafety(playerWeaponObject) or doesWeaponHaveFiringModes(playerWeaponObject) then
                        showWeaponIcon()
                        if not doesWeaponHaveFiringModes(playerWeaponObject) then
                            setWeaponIcon("standard")
                            WeaponFireMode = 0
                        end
                    else
                        hideWeaponIcon()
                    end

                    -- Handle while safety is enabled
                    if WeaponSafety then
                        DisablePlayerFiring(player, true)
                    
                        if IsControlJustPressed(0, 24) or IsDisabledControlJustPressed(0, 24) then
                            PlaySoundFrontend(-1, "Place_Prop_Fail", "DLC_Dmod_Prop_Editor_Sounds", false);
                        end
                    else 
                    
                        if WeaponFireMode == 1 then -- Handle single shot mode
                            --[[
                                Let the player shoot once,
                                while the player holds the control disable it
                                when the player releases the control enable it
                            ]]
                            
                            if IsControlJustPressed(0, 24) then
    
                                while IsControlPressed(0, 24) or IsDisabledControlPressed(0, 24) do
                                    DisablePlayerFiring(player, true)
                                    Citizen.Wait(0)
                                end
                                
                            end
                        elseif WeaponFireMode == 2 then -- Handle Burst Mode
                            --[[
                                Let the player shoot for a bit,
                                while the player holds the control disable it
                                when the player releases the control enable it
                            ]]
                            if IsControlJustPressed(0, 24) then
                                
                                Citizen.Wait(300)
    
                                while (IsControlPressed(0, 24) or IsDisabledControlPressed(0, 24)) do
                                    DisablePlayerFiring(player, true)
                                    Citizen.Wait(0)
                                end
    
                            end
                        end
                        --[[
                            We dont have to do anything else because Standard and
                            full auto are both default
                        ]]
    
                    end
                end
                Citizen.Wait(0)
            end

        end
    end)
end
