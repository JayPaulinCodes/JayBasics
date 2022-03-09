local installedVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)
local githubVersion = ''
local badName = false
local printArrayOpen = {
    "\n\n\n\t^4 _____________________________________________________",
    "\t^4| |^4                                                 ^4| |",
    "\t^4| |^6                    JayBasics                    ^4| |",
    "\t^4| |^7          Thank you for using JayBasics!         ^4| |",
    "\t^4| |^9      Discord: ^7https://discord.gg/aJcVKFMd9F     ^4| |",
    "\t^4| |^9             Installed Version: ^7" .. installedVersion .. "            ^4| |",
}

local printArrayUpdate = {
    "\t^4| |^4                                                 ^4| |",
    "\t^4| |^3            !!! ^1UPDATE REQUIRED ^3!!!^4              | |",
    "\t^4| |^1              DOWNLOAD FROM GITHUB:              ^4| |",
    "\t^4| |^1   github.com/JayPaulinCodes/JayBasics/releases  ^4| |",
}

local printArrayName = {
    "\t^4| |^4                                                 ^4| |",
    "\t^4| |^3          !!! ^1INVALID RESOURCE NAME ^3!!!          ^4| |",
    "\t^4| |^1 RESOURCE NAME MUST BE ^7'JayBasics' ^1CASESENSITIVE ^4| |",
    "\t^4| |^1    PLEASE RENAME AND THEN RESTART THE SERVER    ^4| |",
}

local printArrayClose = {
    "\t^4| |^4                                                 ^4| |",
    "\t^4|_|_________________________________________________|_|\n\n\n",
}


Citizen.CreateThread( function()
    PerformHttpRequest("https://raw.githubusercontent.com/JayPaulinCodes/JayBasics/master/version", function(error, responseText, headers)
        if responseText ~= nil and responseText ~= "" then 
            githubVersion = responseText 
            table.insert(printArrayOpen, "\t^4| |^9              Latest Version: ^7" .. githubVersion .. "              ^4| |")
        end
    end)

    Citizen.Wait(3000)

    for i, message in ipairs(printArrayOpen) do
        print(message)
    end

    Citizen.Wait(500)

    -- Name Check
    if GetCurrentResourceName() ~= "JayBasics" then
        badName = true
        for i, message in ipairs(printArrayName) do
            print(message)
        end
        -- print(installedVersion, githubVersion, (installedVersion < githubVersion))
    end

    Citizen.Wait(500)

    -- Version Check
    if installedVersion < githubVersion then --	UPDATE DETECTED
        for i, message in ipairs(printArrayUpdate) do
            print(message)
        end
    end

    for i, message in ipairs(printArrayClose) do
        print(message)
    end

    if badName then 
        -- print("^3!!! ^1WARNING ^3!!!\t^7Stopping " .. GetCurrentResourceName() .. " Due To Invalid Name!")
        -- TriggerEvent("Jay:ResourceManager:stopResource", GetCurrentResourceName())
    end

end)