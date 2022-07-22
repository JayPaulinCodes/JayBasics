fx_version "cerulean"
games { "gta5" }

author "JayPaulinCodes (https://github.com/JayPaulinCodes)"
description "A simple all in one highly configurable FiveM script with tons of core and useful features for any server"

version "0.3.2"

ui_page "html/index.html"

files {
    "html/sounds/*.wav",
    "html/sounds/*.mp3",
    "html/sounds/*.ogg",
    "html/imgs/*.png",
    "html/css/*.css",
    "html/js/*.js",
    "html/index.html"
}

shared_scripts{
    "common/jails.lua",
    "common/weapons.lua",
    "common/jails.lua",
    "common/controls.lua",
    "common/locales.lua",
    "locales/*.lua",
    "common/config.lua",
}

client_scripts {
    "client/main.lua",
    "client/functions.lua",
    "client/VehicleControls.lua",
    "client/DiscordPresence.lua",
    "client/ChatCommands.lua",
    "client/WeaponsControls.lua",
    "client/Jail.lua"
} 

server_scripts {
    "server/VersionCheck.lua",
    "server/main.lua",
    "server/functions.lua",
    "server/VehicleControls.lua",
    "server/ChatCommands.lua",
    "server/Jail.lua"
} 