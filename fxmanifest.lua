fx_version 'cerulean'
games { 'gta5' }

author "Jay (Error#3569)"

version 'legacy'

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
    "server/main.lua",
    "server/functions.lua",
    "server/VehicleControls.lua",
    "server/ChatCommands.lua"
} 