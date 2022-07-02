CONFIG = {}

--      ##################
--      ##     BASE     ##
--      ##################

--[[
    This is the language of the stings used in the script,
    devs can create their own locale in the locales folder 
    and use that if they wish!
]]
CONFIG["Locale"] = "en"



--      ##############################
--      ##     VEHICLE CONTROLS     ##
--      ##############################

--[[
    This is the vehicle controls section of the script, 
    it contains many options such as toggling engine and
    opening doors and windows. 
]]
CONFIG["VehicleControls"] = {}

--[[
    This is the master switch for this module of the script, 
    if this is false all commands in this seciton will not operate
]]
CONFIG["VehicleControls"]["Enable"] = true

--[[
    This enables the /eng and /engine command
    as well as allows the exports and events to work

    Set this to true to enable the commands and false
    to disable it, note that CONFIG["VehicleControls"]["Enable"]
    must be true for this to work.
]]
CONFIG["VehicleControls"]["EngineControl"] = true

--[[
    This is the door control module, bellow I will list
    the config values and each of their commands,

    TrunkControl                = /trunk
    HoodControl                 = /hood
    Open Front Driver           = /door fd
    Open Front Passenger        = /door fp
    Open Rear Driver            = /door rd
    Open Rear Passenger         = /door rp
]]
CONFIG["VehicleControls"]["TrunkControl"] = true
CONFIG["VehicleControls"]["HoodControl"] = true
CONFIG["VehicleControls"]["DoorControl"] = true

--[[
    This is the window control module, bellow I will list
    the config values and each of their commands,

    Roll Front Driver        = /window fd
    Roll Front Passenger     = /window fp
    Roll Rear Driver         = /window rd
    Roll Rear Passenger      = /window rp
]]
CONFIG["VehicleControls"]["WindowControl"] = true



--      ###########################
--      ##     CHAT COMMANDS     ##
--      ###########################

--[[
    This is the chat commands portion of the
    script, this contains commands such as /ooc, 
    /me, /mer, /gme and /gmer 
]]
CONFIG["ChatCommands"] = {}

--[[
    This is the master switch for this module of the script, 
    if this is false all commands in this seciton will not operate
]]
CONFIG["ChatCommands"]["Enable"] = true

--[[
    This controls the name that will be displayed when a user uses a chat command, 
    if set to true it will use their Steam/FiveM name. When false it will
    prompt users to enter a RP name when they join the server and allow
    the command /setname to switch their name.
]]
CONFIG["ChatCommands"]["UseDefaultNames"] = false

--[[
    This will make it so any many type in chat regularly without any
    command will be send in OOC by default
]]
CONFIG["ChatCommands"]["DefaultMessagesToOOC"] = true

--[[
    This is the distance that proximity messages will show in.
]]
CONFIG["ChatCommands"]["ProximityRange"] = 40.0

--[[
    This is the chat commands, bellow I will list
    the config values and each of their commands,

    oocCommand      = /ooc
    meCommand       = /me
    merCommand      = /mer
    gmeCommand      = /gme
    gmerCommand     = /gmer
]]
CONFIG["ChatCommands"]["oocCommand"] = true
CONFIG["ChatCommands"]["meCommand"] = true
CONFIG["ChatCommands"]["merCommand"] = true
CONFIG["ChatCommands"]["gmeCommand"] = true
CONFIG["ChatCommands"]["gmerCommand"] = true

--[[
    This is the chat commands pefix colour
    in hex value
]]
CONFIG["ChatCommands"]["oocHex"] = "#CD5700"
CONFIG["ChatCommands"]["meHex"] = "#F1F1F1"
CONFIG["ChatCommands"]["merHex"] = "#F1F1F1"
CONFIG["ChatCommands"]["gmeHex"] = "#2667FF"
CONFIG["ChatCommands"]["gmerHex"] = "#2667FF"



--      #############################
--      ##     WEAPON CONTROLS     ##
--      #############################

--[[
    This is where the weapon controls options and features
    are configured.
]]
CONFIG["WeaponControls"] = {}

--[[
    This is the master switch for this module of the script, 
    if this is false all features in this seciton will not operate
]]
CONFIG["WeaponControls"]["Enable"] = true

--[[
    This controls wether players will auto reload
    weapons once their weapon runs out of ammo.
]]
CONFIG["WeaponControls"]["DisableAutoReload"] = true

--[[
    This controls wether players will auto swap out
    weapons once their weapon runs out of ammo.
]]
CONFIG["WeaponControls"]["DisableAutoSwap"] = true

--[[
    Keeps the flashlight on a weapon on when not aiming weapon.
]]
CONFIG["WeaponControls"]["PersistentWeaponFlashlights"] = true

--[[
    This modifies the location of the icon.
    (More info about this can be found on the wiki)
]]
CONFIG["WeaponControls"]["WeaponStateIcon"] = {
    x = "56.5%",
    y = "18.5%"
}

--[[
    Enables the weapon safety feature.
]]
CONFIG["WeaponControls"]["EnableWeaponSafety"] = true

--[[
    The default keybind for the toggle saftey feature.
]]
CONFIG["WeaponControls"]["ToggleSafteyDefaultKey"] = "K"

--[[
    Enables the weapon fire modes feature.
]]
CONFIG["WeaponControls"]["EnableWeaponFireModes"] = true

--[[
    The default keybind for the change fire mode feature.
]]
CONFIG["WeaponControls"]["ChangeFireModeDefaultKey"] = "J"

--[[
    Enables the taser laser sight feature.
]]
CONFIG["WeaponControls"]["EnableTaserLaserSight"] = true

--[[
    The default keybind for the toggle the laser sight on
    the taser
]]
CONFIG["WeaponControls"]["TaserLaserSightDefaultToggleKey"] = "I"

--[[
    Controls the colour of the laser. 

    r is the Red value of the RGB Code (Min 0, Max 255)
    g is the Green value of the RGB Code (Min 0, Max 255)
    b is the Blue value of the RGB Code (Min 0, Max 255)
    alpha is the Transparency of the laser (Min 0, Max 255)
]]
CONFIG["WeaponControls"]["TaserLaserColour"] = {
    r = 255,
    g = 0,
    b = 0,
    alpha = 255
}

--[[
    List of weapons that dont have their reticle 
    disabled
]]
CONFIG["WeaponControls"]["ReticleWeapons"] = {
    WEAPONS["911657153"], -- WEAPON_STUNGUN
    WEAPONS["1171102963"], -- WEAPON_STUNGUN_MP
    WEAPONS["100416529"], -- WEAPON_SNIPERRIFLE
    WEAPONS["177293209"], -- WEAPON_HEAVYSNIPER_MK2
    WEAPONS["205991906"], -- WEAPON_HEAVYSNIPER
    WEAPONS["1785463520"], -- WEAPON_MARKSMANRIFLE_MK2
    WEAPONS["-952879014"], -- WEAPON_MARKSMANRIFLE
}



--      ##############################
--      ##     DISCORD PRESENCE     ##
--      ##############################

--[[
    This is the discord presence section of the script, 
    it controls creating a custom presence for user's 
    while their on your server.
]]
CONFIG["DiscordPresence"] = {}

--[[
    This is the master switch for this module of the script, 
    if this is false all commands in this seciton will not operate
]]
CONFIG["DiscordPresence"]["Enable"] = true

--[[
    How fast to refresh the presence in miliseconds
]]
CONFIG["DiscordPresence"]["RefreshRate"] = 10000

--[[
    The discord application id
]]
CONFIG["DiscordPresence"]["DiscordAppId"] = 123456789

--[[
    This line is for config strucure, for the love 
    of god do not change this line.
]]
CONFIG["DiscordPresence"]["LargeIcon"] = {}

--[[
    This is the asset name of the large 
    icon on your discord application
]]
CONFIG["DiscordPresence"]["LargeIcon"]["AssetName"] = "logo1"

--[[
    This is the text to display when the 
    large icon is hovered 
]]
CONFIG["DiscordPresence"]["LargeIcon"]["HoverText"] = "Hover Text"

--[[
    This line is for config strucure, for the love 
    of god do not change this line.
]]
CONFIG["DiscordPresence"]["SmallIcon"] = {}

--[[
    Do you want a small icon to be displayed?
]]
CONFIG["DiscordPresence"]["SmallIcon"]["Enabled"] = true

--[[
    This is the asset name of the small 
    icon on your discord application
]]
CONFIG["DiscordPresence"]["SmallIcon"]["AssetName"] = "logo2"

--[[
    This is the text to display when the 
    small icon is hovered 
]]
CONFIG["DiscordPresence"]["SmallIcon"]["HoverText"] = "Hover Text"

--[[
    This line is for config strucure, for the love 
    of god do not change this line.
]]
CONFIG["DiscordPresence"]["Buttons"] = {}

--[[
    This line is for config strucure, for the love 
    of god do not change this line.
]]
CONFIG["DiscordPresence"]["Buttons"]["Button1"] = {}

--[[
    Is the Top Button enabled?
]]
CONFIG["DiscordPresence"]["Buttons"]["Button1"]["Enabled"] = true

--[[
    The text to display on the top button
]]
CONFIG["DiscordPresence"]["Buttons"]["Button1"]["Text"] = "Join Our Discord!"

--[[
    The URL to send the user to on button click.
    Use the following in the url field bellow to 
    connect to your fivem server fivem://connect/YourServerIPHere:30120
    NOTE: this has to start with "fivem://connect/" or "https://"
]]
CONFIG["DiscordPresence"]["Buttons"]["Button1"]["URL"] = "https://discord.gg/"

--[[
    This line is for config strucure, for the love 
    of god do not change this line.
]]
CONFIG["DiscordPresence"]["Buttons"]["Button2"] = {}

--[[
    Is the Bottom Button enabled?
]]
CONFIG["DiscordPresence"]["Buttons"]["Button2"]["Enabled"] = true

--[[
    The text to display on the bottom button
]]
CONFIG["DiscordPresence"]["Buttons"]["Button2"]["Text"] = "Connect To The Server!"

--[[
    The URL to send the user to on button click.
    Use the following in the url field bellow to 
    connect to your fivem server fivem://connect/YourServerIPHere:30120
    NOTE: this has to start with "fivem://connect/" or "https://"
]]
CONFIG["DiscordPresence"]["Buttons"]["Button2"]["URL"] = "fivem://connect/"

--[[
    This line is for config strucure, for the love 
    of god do not change this line.
]]
CONFIG["DiscordPresence"]["StatusMessage"] = {}

--[[
    Use the default codded status messages
]]
CONFIG["DiscordPresence"]["StatusMessage"]["UseDefault"] = true

--[[
    The status message to use when 
    CONFIG["DiscordPresence"]["StatusMessage"]["UseDefault"] 
    is set to false.
]]
CONFIG["DiscordPresence"]["StatusMessage"]["CustomMessage"] = "Custom Status Message"



--      ###################
--      ##     JAIL      ##
--      ###################

--[[
    This is the section of the config where you can
    customize and control the Jail feature
]]
CONFIG["Jail"] = {}

--[[
    This is the master switch for this module of the script, 
    if this is false all commands in this seciton will not operate
]]
CONFIG["Jail"]["Enable"] = true

CONFIG["Jail"]["SendMessageOnJail"] = true

CONFIG["Jail"]["SendMessageOnRelease"] = true