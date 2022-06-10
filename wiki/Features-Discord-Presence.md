## Setup
Start by visiting the [Discord Developer Portal](https://discord.com/developers/applications/) and creating a new application.

![Discord Developer Portal](https://i.imgur.com/EQZuuWe.png)

Give your application a name and create it. Once on your application's page copy your application ID by using the copy button under the application ID.

Paste the application ID in the config.lua file in this location, replacing the default value of 123456789:
```lua
CONFIG["DiscordPresence"]["DiscordAppId"] = 123456789
```
Next on your application's page, on the left bar click "Rich Presence" and then "Art Assets" 

Once here you can add images to your application by using the "Add Image(s)" button near the bottom of the page. 

To make these images appear on the discord presence fill the config.lua file with the image(AKA assets) names in the following fields:
```lua
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
```

And that's it! Configure the remainder of the config.lua and your good to go.