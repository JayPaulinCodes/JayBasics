fx_version "cerulean"
games { "gta5" }

author "JayPaulinCodes (https://github.com/JayPaulinCodes)"
description "A simple all in one highly configurable FiveM script with tons of core and useful features for any server"

version "0.1.0"

-- dependencies {
--     "JayResourceManger"
-- }

shared_scripts{
    "common/locales.lua",
    "locales/*.lua",
    "common/config.lua",
}

client_scripts {
    "client/main.lua",
    "client/functions.lua",
    "client/VehicleControls.lua",
    "client/ChatCommands.lua"
} 

server_scripts {
    "server/VersionCheck.lua",
    "server/main.lua",
    "server/functions.lua",
    "server/VehicleControls.lua",
    "server/ChatCommands.lua"
} 