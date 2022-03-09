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
    Roll Front Windows       = /window front
    Roll Rear Windows        = /window rear
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