if CONFIG["WeaponControls"]["Enable"] then

    local taserSight_Enabled = false
    local taserSight_Delay = 1000
    
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
            if taserSight_Enabled then
                drawNotificationColour(_("laserSightEnabled"), _("greenHex")))
            else
                drawNotificationColour(_("laserSightDisabled"), _("redHex")))
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
            if isPedRealAndAlive(playerPed) and taserSight_Enabled and (playerWeaponObject.Hash == WEAPONS["911657153"].Hash or playerWeaponObject.Hash == WEAPONS["1171102963"].Hash) then

                local camview = GetFollowPedCamViewMode()
                local crouch = GetPedStealthMovement(playerPedId)

                taserSight_Delay = 1000
                if IsPlayerFreeAiming(player) then
                    taserSight_Delay = 1
                    local playerPedId_Weapon = GetCurrentPedWeaponEntityIndex(playerPedId)
                    local offset = GetPedBoneCoords(playerPed, 0x6F06, 0.4, 0.0, 0.01)
                    local castHit, castCoords = RayCastPed(offset, 150, playerPedId)
                    
                    if castHit ~= 0 then
                        DrawLine(offset.x, offset.y, offset.z, castCoords.x, castCoords.y, castCoords.z, CONFIG["WeaponControls"]["TaserLaserColour"].r, CONFIG["WeaponControls"]["TaserLaserColour"].g, CONFIG["WeaponControls"]["TaserLaserColour"].b, CONFIG["WeaponControls"]["TaserLaserColour"].alpha)
                        DrawSphere2(castCoords, 0.01, CONFIG["WeaponControls"]["TaserLaserColour"].r, CONFIG["WeaponControls"]["TaserLaserColour"].g, CONFIG["WeaponControls"]["TaserLaserColour"].b, CONFIG["WeaponControls"]["TaserLaserColour"].alpha)
                    end
                end

            end

            Citizen.Wait(taserSight_Delay)
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

                -- Handle showing the icon
                if doesWeaponHaveSafety(playerWeaponObject) or doesWeaponHaveFiringModes(playerWeaponObject) then
                    showWeaponIcon()
                else
                    hideWeaponIcon()
                end
    
                if IsPedArmed(playerPed, 4) then
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
