#### The config file can be found [here](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua) we will go through each value one by one and explaining their purpose and how to use them.

#### The bellow table will show an overview of every config option including their default value and data type they take.

| Line # | Configuration Option | Data Type | Default Value |
|:---:|:---:|:---:|:---:|
| [12](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L12) | [`CONFIG["Locale"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configlocale) | String | `"en"` |
| [31](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L31) | [`CONFIG["VehicleControls"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolsenable) | Boolean | `true` |
| [41](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L41) | [`CONFIG["VehicleControls"]["EngineControl"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolsenginecontrol) | Boolean | `true` |
| [54](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L54) | [`CONFIG["VehicleControls"]["TrunkControl"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolstrunkcontrol) | Boolean | `true` |
| [55](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L55) | [`CONFIG["VehicleControls"]["HoodControl"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolshoodcontrol) | Boolean | `true` |
| [56](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L56) | [`CONFIG["VehicleControls"]["DoorControl"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolsdoorcontrol) | Boolean | `true` |
| [67](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L67) | [`CONFIG["VehicleControls"]["WindowControl"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolswindowcontrol) | Boolean | `true` |
| [86](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L86) | [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) | Boolean | `true` |
| [94](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L94) | [`CONFIG["ChatCommands"]["UseDefaultNames"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsusedefaultnames) | Boolean | `false` |
| [100](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L100) | [`CONFIG["ChatCommands"]["DefaultMessagesToOOC"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsdefaultmessagestoooc) | Boolean | `true` |
| [105](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L105) | [`CONFIG["ChatCommands"]["ProximityRange"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsproximityrange) | Number | `40.0` |
| [117](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L117) | [`CONFIG["ChatCommands"]["oocCommand"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsooccommand) | Boolean | `true` |
| [118](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L118) | [`CONFIG["ChatCommands"]["meCommand"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsmecommand) | Boolean | `true` |
| [119](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L119) | [`CONFIG["ChatCommands"]["merCommand"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsmercommand) | Boolean | `true` |
| [120](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L120) | [`CONFIG["ChatCommands"]["gmeCommand"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsgmecommand) | Boolean | `true` |
| [121](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L121) | [`CONFIG["ChatCommands"]["gmerCommand"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsgmercommand) | Boolean | `true` |
| [127](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L127) | [`CONFIG["ChatCommands"]["oocHex"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsoochex) | String ([[HEX Colour Code\|HEX-Colour-Codes]]) | `"#CD5700"` |
| [128](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L128) | [`CONFIG["ChatCommands"]["meHex"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsmehex) | String ([[HEX Colour Code\|HEX-Colour-Codes]]) | `"#F1F1F1"` |
| [129](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L129) | [`CONFIG["ChatCommands"]["merHex"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsmerhex) | String ([[HEX Colour Code\|HEX-Colour-Codes]]) | `"#F1F1F1"` |
| [130](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L130) | [`CONFIG["ChatCommands"]["gmeHex"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsgmehex) | String ([[HEX Colour Code\|HEX-Colour-Codes]]) | `"#2667FF"` |
| [131](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L131) | [`CONFIG["ChatCommands"]["gmerHex"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsgmerhex) | String ([[HEX Colour Code\|HEX-Colour-Codes]]) | `"#2667FF"` |
| [149](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L149) | [`CONFIG["WeaponControls"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolsenable) | Boolean | `true` |
| [155](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L155) | [`CONFIG["WeaponControls"]["DisableAutoReload"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolsdisableautreload) | Boolean | `true` |
| [161](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L161) | [`CONFIG["WeaponControls"]["DisableAutoSwap"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolsdisableautoswap) | Boolean | `true` |
| [166](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L166) | [`CONFIG["WeaponControls"]["PersistentWeaponFlashlights"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolspersistentweaponflashlights) | Boolean | `true` |
| [172](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L172) | [`CONFIG["WeaponControls"]["WeaponStateIcon"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolsweaponstateicon) | Table | `{ x = "56.5%", y = "18.5%" }` |
| [180](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L180) | [`CONFIG["WeaponControls"]["EnableWeaponSafety"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolsenableweaponsafety) | Boolean | `true` |
| [185](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L185) | [`CONFIG["WeaponControls"]["ToggleSafteyDefaultKey"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolstogglesafteydefaultkey) | String | `"K"` |
| [190](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L190) | [`CONFIG["WeaponControls"]["EnableWeaponFireModes"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolsenableweaponfiremodes) | Boolean | `true` |
| [195](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L195) | [`CONFIG["WeaponControls"]["ChangeFireModeDefaultKey"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolschangefiremodedefaultkey) | String | `"J"` |
| [200](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L200) | [`CONFIG["WeaponControls"]["EnableTaserLaserSight"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolsenabletaserlasersight) | Boolean | `true` |
| [206](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L206) | [`CONFIG["WeaponControls"]["TaserLaserSightDefaultToggleKey"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolstaserlasersightdefaulttogglekey) | String | `"I"` |
| [216](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L206) | [`CONFIG["WeaponControls"]["TaserLaserColour"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolstaserlasercolour) | Table | `Reference Description For More Info` |
| [227](https://github.com/JayPaulinCodes/JayBasics/blob/master/common/config.lua#L227) | [`CONFIG["WeaponControls"]["ReticleWeapons"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configweaponcontrolsreticleweapons) | Table | `Reference Description For More Info` |



---
## Base Configuration

### `CONFIG["Locale"]`
This sets the language pack that the script will use, at the moment we only have english, if you are fluent in another language and wish to help me translate them into other languages please contact me on discord.

## Vehicle Controls Options

### `CONFIG["VehicleControls"]["Enable"]`
This is the master switch for the vehicle control module of the script controlling all commands associated with this module of the script.
- While set to `true` other commands in this module can be enabled and disabled respectivley
- While set to `false` all other commands in this module are disabled and cannot be enabled and disabled respectivley

### `CONFIG["VehicleControls"]["EngineControl"]`
This controls the [[engine|Features#commands]] and it's aliases
- While set to `true` enables the egine command
- While set to `false` disables the egine command

*Note that [`CONFIG["VehicleControls"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolsenable) must be set to true for this value to have any effect*

### `CONFIG["VehicleControls"]["TrunkControl"]`
This controls the [[trunk|Features#commands]]
- While set to `true` enables the trunk command
- While set to `false` disables the trunk command

*Note that [`CONFIG["VehicleControls"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolsenable) must be set to true for this value to have any effect*

### `CONFIG["VehicleControls"]["HoodControl"]`
This controls the [[hood|Features#commands]]
- While set to `true` enables the hood command
- While set to `false` disables the hood command

*Note that [`CONFIG["VehicleControls"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolsenable) must be set to true for this value to have any effect*

### `CONFIG["VehicleControls"]["DoorControl"]`
This controls the [[door|Features#commands]]
- While set to `true` enables the door command
- While set to `false` disables the door command

*Note that [`CONFIG["VehicleControls"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolsenable) must be set to true for this value to have any effect*

### `CONFIG["VehicleControls"]["WindowControl"]`
This controls the [[window|Features#commands]] as well as any exports or events related to it.
- While set to `true` enables the window command and exports or events related to it
- While set to `false` disables the window command and exports or events related to it

*Note that [`CONFIG["VehicleControls"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configvehiclecontrolsenable) must be set to true for this value to have any effect*

## Chat Commands Options

### `CONFIG["ChatCommands"]["Enable"]`
This is the master switch for the chat commands module of the script controlling all commands associated with this module of the script.
- While set to `true` other commands in this module can be enabled and disabled respectivley
- While set to `false` all other commands in this module are disabled and cannot be enabled and disabled respectivley

### `CONFIG["ChatCommands"]["UseDefaultNames"]`
This controls what name is going to be used in the chat commands.
- While set to `true` the system will use the user's Steam/FiveM name as default and disable the [[setname|Features#commands]] and [[name|Features#commands]] commands
- While set to `false` the system will use a user provided name and enable the [[setname|Features#commands]] and [[name|Features#commands]] commands

### `CONFIG["ChatCommands"]["DefaultMessagesToOOC"]`
This controls wether or not messages that are not apart of a command are sent in OOC message style or default FiveM message style.
- While set to `true` enables the default messages to OOC feature
- While set to `false` disables the default messages to OOC feature

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["ProximityRange"]`
This controls how far proximity messages are sent, so when set to `40.0` if you are within 40 GTA units of the person who executed the command you will see the message. 

We don't know how GTA units translate to IRL mesurments due to the scale of GTA so we arbitrarily call them meters. 

*If you know more about GTA units and how they would translate to IRL mesurments with GTA's scale contact me on discord*

### `CONFIG["ChatCommands"]["oocCommand"]`
This controls the [[ooc|Features#commands]]
- While set to `true` enables the ooc command
- While set to `false` disables the ooc command

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["meCommand"]`
This controls the [[me|Features#commands]]
- While set to `true` enables the me command
- While set to `false` disables the me command

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["merCommand"]`
This controls the [[mer|Features#commands]]
- While set to `true` enables the mer command
- While set to `false` disables the mer command

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["gmeCommand"]`
This controls the [[gme|Features#commands]]
- While set to `true` enables the gme command
- While set to `false` disables the gme command

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["gmerCommand"]`
This controls the [[gmer|Features#commands]]
- While set to `true` enables the gmer command
- While set to `false` disables the gmer command

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["oocHex"]`
This controls the prefix colour for the [[ooc|Features#commands]] command
- Reference [[HEX Codes|Hex-Colour-Codes]]

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["meHex"]`
This controls the prefix colour for the [[me|Features#commands]] command
- Reference [[HEX Codes|Hex-Colour-Codes]]

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["merHex"]`
This controls the prefix colour for the [[mer|Features#commands]] command
- Reference [[HEX Codes|Hex-Colour-Codes]]

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["gmeHex"]`
This controls the prefix colour for the [[gme|Features#commands]] command
- Reference [[HEX Codes|Hex-Colour-Codes]]

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*

### `CONFIG["ChatCommands"]["gmerHex"]`
This controls the prefix colour for the [[gmer|Features#commands]] command
- Reference [[HEX Codes|Hex-Colour-Codes]]

*Note that [`CONFIG["ChatCommands"]["Enable"]`](https://github.com/JayPaulinCodes/JayBasics/wiki/Configuration#configchatcommandsenable) must be set to true for this value to have any effect*


## Weapons Control

### `CONFIG["WeaponControls"]["Enable"]`
This is the master switch for the weapon controls module of the script controlling all commands associated with this module of the script.
- While set to `true` other commands and features in this module can be enabled and disabled respectivley
- While set to `false` all other commands and features in this module are disabled and cannot be enabled and disabled respectivley

### `CONFIG["WeaponControls"]["DisableAutoReload"]`
This will handle how players behave when their weapons magazine runs out of ammo.
- While set to `true` players will not automatically reload their weapons when the current magazine runs out of ammo.
- While set to `false` players will automatically reload their weapons when the current magazine runs out of ammo.

### `CONFIG["WeaponControls"]["DisableAutoSwap"]`
This will handle how players behave when their weapon runs out of ammo.
- While set to `true` players will not automatically swap out their weapons when they run out of ammo.
- While set to `false` players will automatically swap out their weapons when they run out of ammo.

### `CONFIG["WeaponControls"]["PersistentWeaponFlashlights"]`
This will handle how weapons flashlights behave.
- While set to `true` weapons flashlights will stay on when players stop aiming their weapons
- While set to `false` weapons flashlights will not stay on when players stop aiming their weapons

### `CONFIG["WeaponControls"]["WeaponStateIcon"]`
This config value controls the location of the weapon state icon.
The x value controls the left and right possitioning, and the y value controls the up and down possitioning.
By default the table looks like such: 
```
{
    x = "56.5%",
    y = "18.5%"
}
```

### `CONFIG["WeaponControls"]["EnableWeaponSafety"]`
This controls wether or not you can toggle the safety on your weapon.
- While set to `true` applicable weapons will be able to have their safety toggled
- While set to `false` applicable weapons will not be able to have their safety toggled

### `CONFIG["WeaponControls"]["ToggleSafteyDefaultKey"]`
This is the default key for the toggle safety keybind, this is the key that will be set for new user's on their first join of the server. User's are able to change this keybind for themselves as they see fit.
The default key for the toggle safety feature is `K`

### `CONFIG["WeaponControls"]["EnableWeaponFireModes"]`
This controls wether or not you can cycle through firemodes on your weapons
- While set to `true` applicable weapons will be able to cycle through firemodes
- While set to `false` applicable weapons will not be able to cycle through firemodes

### `CONFIG["WeaponControls"]["ChangeFireModeDefaultKey"]`
This is the default key for the cycle firemode keybind, this is the key that will be set for new user's on their first join of the server. User's are able to change this keybind for themselves as they see fit.
The default key for the cycle firemode feature is `J`

### `CONFIG["WeaponControls"]["EnableTaserLaserSight"]`
This controls wether or not you can toggle a laser sight for your taser.
- While set to `true` you will be able to toggle a laser sight for your taser.
- While set to `false` you will not be able to toggle a laser sight for your taser.

### `CONFIG["WeaponControls"]["TaserLaserSightDefaultToggleKey"]`
This is the default key for the toggle taser laser sight keybind, this is the key that will be set for new user's on their first join of the server. User's are able to change this keybind for themselves as they see fit.
The default key for the toggle taser laser sight feature is `I`

### `CONFIG["WeaponControls"]["TaserLaserColour"]`
Using RGB values you are able to customize the colour of the taser laser sight.
The default config entry is as such:
```
{
    r = 255,
    g = 0,
    b = 0,
    alpha = 255
}
```

### `CONFIG["WeaponControls"]["ReticleWeapons"]`
This is a list of weapons from the `weapons.lua` file in the common folder of the script that wont have their reticle removed.
```
{
    WEAPONS["911657153"], -- WEAPON_STUNGUN
    WEAPONS["1171102963"], -- WEAPON_STUNGUN_MP
    WEAPONS["100416529"], -- WEAPON_SNIPERRIFLE
    WEAPONS["177293209"], -- WEAPON_HEAVYSNIPER_MK2
    WEAPONS["205991906"], -- WEAPON_HEAVYSNIPER
    WEAPONS["1785463520"], -- WEAPON_MARKSMANRIFLE_MK2
    WEAPONS["-952879014"], -- WEAPON_MARKSMANRIFLE
}
```

---

# DISCLAIMER
#### For the love of god and to keep me and others sane while we provide support for this script, **DO NOT REMOVE** any config values or lines that have a value of `{}`. These are ment to be there for the structure of the config file, if you remove them your script **will not work**