### The features of this script are explained in more detail in their respective sections:
- [[Vehicle Controls|Features-Vehicle-Controls]]
- [[Chat Commands|Features-Chat-Commands]]
- [[Weapon Controls|Features-Weapon-Controls]]
- [[Discord Precense|Features-Discord-Presence]]
- [[Jail|Features-Jail]]

---
## Commands

### Here we will outline each command in the script as well as their use, aliases and parameters.
Please note not all of these commands may be enabled on your server depending on how you have your config set up, visit the [[configuration wiki|Configuration]] for more details regarding what commands are enabled and disabled through the config.

| Command | Usage | Description | Parameters |
|:---:|:---:|:---:|:---:|
| engine | `/engine` `/eng` | Turns on or off the engine of a vehicle while your in the driver seat. | None |
| hood | `/hood` | Opens or closes the hood of a vehicle if you are standing outside of it or are sitting in the driver seat. Will not open the hood if the vehicle either doesn't have one or is locked. | None |
| trunk | `/trunk` | Opens or closes the trunk of a vehicle if you are standing outside of it or are sitting in the driver seat. Will not open the trunk if the vehicle either doesn't have one or is locked. | None |
| door | `/door [fd\|fp\|rd\|rp]` | Opens or closes a door of a vehicle if you outside the vehicle or are sitting in the appropriate seat for that door,  meaning you can't open the rear passenger door while sitting in the driver seat. Will not open a door if the vehicle either doesn't have one or is locked. | Options: `fd`, `fp`, `rd`, `rp` fd = Opens or closes the front driver door fp = Opens or closes the front passenger door rd = Opens or closes the rear driver door rp = Opens or closes the rear passenger door |
| window | `/window [fd\|fp\|rd\|rp]` | Opens or closes a window of a vehicle if you or are sitting in the appropriate seat for that door, meaning you can't open the front passenger window while sitting in the rear driver seat. The driver of the vehicle can open all windows. Will not open a window if the vehicle doesn't have one. | Options: `fd`, `fp`, `rd`, `rp` fd = Opens or closes the front driver window fp = Opens or closes the front passenger window rd = Opens or closes the rear driver window rp = Opens or closes the rear passenger window |
| setname | `/setname` | Prompts the player to set their character's name. | None |
| name | `/name` `/whoami` | Tells the player their current character's name. | None |
| ooc | `/ooc [message]` | Sends a message to all players in an out of character context. The message is sent in a Global Chat | message = Your message to send |
| me | `/me [action]` | Sends a message to nearby players outlining your characters actions. The message is sent in a Proximity Chat | action = The actions your character is taking |
| mer | `/mer [action]` | Sends a message to nearby players outlining your characters actions. The message is sent in a Proximity Chat | action = The actions your character is taking |
| gme | `/gme [action]` | Sends a message to all players outlining your characters actions. The message is sent in a Global Chat | action = The actions your character is taking |
| gmer | `/gmer [action]` | Sends a message to all players outlining your characters actions. The message is sent in a Global Chat | action = The actions your character is taking |
| safety | `/safety` | Toggles the safety on your weapon | None |
| firemode | `/firemode` | Cycles through the fire modes | None |
| tasersight | `/tasersight` | Toggles the laser sight for tasers | None |


---
## Keybinds

### Here we will outline each keybind in the script as well as their use..
Please note not all of these keybinds may be enabled on your server depending on how you have your config set up, visit the [[configuration wiki|Configuration]] for more details regarding what keybinds are enabled and disabled through the config.

The default key for each keybind can be modified in the config file.

Each user is able to modify their keybinds to their liking through the FiveM Settings menu, to access it click the `ESC` key while in game and then navigate to `Settings`, once there enter the settings menu and navigate to `keybinds` and select it to enter. Next navigate to `FiveM` and select it to enter, here user's will find the JayBasic keybinds along with keybinds provided by other scripts. 

In short the path to the FiveM keybinds is as follows: `ESC -> Settings -> Keybinds -> FiveM` 

| Keybind | Description | Default Config Entry |
|:---:|:---:|:---:|
| Toggle Safety | This keybind toggles the safety on your weapon. | `K` |
| Cycle Firemode | This keybind cycles through the fire modes for your weapon. | `J` |
| Toggle Taser Sight | This keybind toggles the laser sight on your taser. | `I` |