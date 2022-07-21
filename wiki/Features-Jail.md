## Jail System

### Adding Custom Jails

To add custom jails navigate to the `jails.lua` file located in the common folder.

Once found open the file and create a new entry with the following format:
```lua
JAILS["JAILNAME"] = {
    name = "JAILNAMEFULL",
    centerPointCoords = vector3(X, Y, Z),
    cellCoords = vector3(X, Y, Z),
    freedCoords = vector3(X, Y, Z)
}
```

Where it says "JAILNAME" replace that with your jail name without any spaces 
*See other entries in the file for reference*

Where it says "JAILNAMEFULL" replace that with the full name of your jail, this is what will be displayed in the chat message(s)
*See other entries in the file for reference*

For the X, Y and Z values in the centerPointCoords vector3, set these to the coords of a location that is pretty well central in your police station.

For the X, Y and Z values in the cellCoords vector3, set these to the coords in the jail cell players will be in when "in jail"

For the X, Y and Z values in the freedCoords vector3, set these to the coords outside the jail where the player will be placed on release