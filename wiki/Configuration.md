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



---
## Base Configuration

### `CONFIG["Locale"]`

## Vehicle Controls Options

### `CONFIG["VehicleControls"]["Enable"]`

### `CONFIG["VehicleControls"]["EngineControl"]`

### `CONFIG["VehicleControls"]["TrunkControl"]`

### `CONFIG["VehicleControls"]["HoodControl"]`

### `CONFIG["VehicleControls"]["DoorControl"]`

### `CONFIG["VehicleControls"]["WindowControl"]`

## Chat Commands Options

### `CONFIG["ChatCommands"]["Enable"]`

### `CONFIG["ChatCommands"]["UseDefaultNames"]`

### `CONFIG["ChatCommands"]["DefaultMessagesToOOC"]`

### `CONFIG["ChatCommands"]["ProximityRange"]`

### `CONFIG["ChatCommands"]["oocCommand"]`

### `CONFIG["ChatCommands"]["meCommand"]`

### `CONFIG["ChatCommands"]["merCommand"]`

### `CONFIG["ChatCommands"]["gmeCommand"]`

### `CONFIG["ChatCommands"]["gmerCommand"]`

### `CONFIG["ChatCommands"]["oocHex"]`

### `CONFIG["ChatCommands"]["meHex"]`

### `CONFIG["ChatCommands"]["merHex"]`

### `CONFIG["ChatCommands"]["gmeHex"]`

### `CONFIG["ChatCommands"]["gmerHex"]`

---
# DISCLAIMER
#### For the love of god and to keep me and other sane while we provide support for this script, **DO NOT REMOVE** any config values or lines that have a value of `{}`. These are ment to be there for the structure of the config file, if you remove them your script **will not work**