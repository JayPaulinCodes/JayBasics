LOCALES["en"] = {
    ["author"] = "script writen by Jay (Error#3569 on discord)",

    ["invalidArgs"] = "invalid arguments, usage: %s",

    ["redHex"] = "#d90429",
    ["greenHex"] = "#70e000",
    ["yellowHex"] = "#ffb703",

    -- Command Suggestions
    ["engineCommandSug"] = "toggle the state of your engine",
    ["trunkCommandSug"] = "opens or closes your trunk",
    ["hoodCommandSug"] = "opens or closes your hood",
    ["doorCommandSug"] = "opens or closes your doors",
    ["windowCommandSug"] = "opens or closes your windows",
    ["oocCommandSug"] = "out Of Character chat Message (Global Chat)",
    ["meCommandSug"] = "send message in the third person (Proximity Chat)",
    ["merCommandSug"] = "send highlighted message in the third person (Proximity Chat)",
    ["gmeCommandSug"] = "send message in the third person (Global Chat)",
    ["gmerCommandSug"] = "send highlighted message in the third person. (Global Chat)",
    ["setnameCommandSug"] = "set your character's name",
    ["nameCommandSug"] = "check what your character's name is",
    ["satefyCommandSug"] = "toggles the safety on your weapon",
    ["firemodeCommandSug"] = "cycles through the fire modes",
    ["tasersightCommandSug"] = "toggles the laser sight for tasers",
    ["jailCommandSug"] = "jail a player",

    -- Command Arguments
    ["meCommandName"] = "action",
    ["meCommandHelp"] = "an action your character will do.",
    ["merCommandName"] = "action",
    ["merCommandHelp"] = "an action your character will do.",
    ["oocCommandName"] = "message",
    ["oocCommandHelp"] = "out of context message.",
    ["gmeCommandName"] = "action",
    ["gmeCommandHelp"] = "an action your character will do.",
    ["gmerCommandName"] = "action",
    ["gmerCommandHelp"] = "an action your character will do.",
    ["doorCommandName"] = "door",
    ["doorCommandHelp"] = "the door to open: fd, fp, rd, rp",
    ["windowCommandName"] = "window",
    ["windowCommandHelp"] = "the window to open: fd, fp, rd, rp",

    -- HTML Chat Templates
    ["chatTemplateMessageOOC"] = "<p><span style=\"font-weight:bold;color:%s\">[OOC] {0} [#{1}]</span><span style=\"font-weight:normal\">: {2}</span></p>",
    ["chatTemplateMessageMe"] = "<p><span style=\"font-weight:normal;color:$s\">{0} [#{1}] ({2}m)</span><span style=\"font-weight:normal;\">: {3}</span></p>",
    ["chatTemplateMessageMeSelf"] = "<p><span style=\"font-weight:normal;color:%s\">{0} [#{1}]</span><span style=\"font-weight:normal;\">: {2}</span></p>",
    ["chatTemplateMessageMer"] = "<p><span style=\"font-weight:normal;color:%s\">{0} [#{1}] ({2}m)</span><span style=\"font-weight:normal\">: </span><span style=\"font-weight:bold;color:#FF0000\"> {3}</span></p>",
    ["chatTemplateMessageMerSelf"] = "<p><span style=\"font-weight:normal;color:%s\">{0} [#{1}]</span><span style=\"font-weight:normal\">: </span><span style=\"font-weight:bold;color:#FF0000\"> {2}</span></p>",
    ["chatTemplateMessageGme"] = "<p><span style=\"font-weight:normal;color:%s\">{0} [#{1}]</span><span style=\"font-weight:normal\">: {2}</span></p>",
    ["chatTemplateMessageGmer"] = "<p><span style=\"font-weight:normal;color:%s\">{0} [#{1}]</span><span style=\"font-weight:normal\">: </span><span style=\"font-weight:bold;color:#FF0000\">{2}</span></p>",
    ["chatTemplateMessageJudgeSentence"] = "<img src='https://i.imgur.com/iqQZ90a.png' height='16' style='border-radius: 5px'> <b style='color: #000000'>JUDGE SENTENCE</b>: {0} has been sentenced to {1} months in {2} for {3}.",
    ["chatTemplateMessageWardenRelease"] = "<b style='color: #4165B4'>WARDEN</b>: Your jail sentence has elapsed, your a free man once again. I'm sure we will be seeing you again soon.",

    -- Chat Commands / Character Module
    ["whoAmIPlayingAs"] = "Currently Playing As: ",
    ["setNamePrompt"] = "What's Your Character's Name?",

    -- Discord Presence Module
    ["statusMessageWithName"] = "patroling As %s In %s",
    ["statusMessageWithoutName"] = "patroling In %s",

    -- Vehicle Control Module
    ["frontDriver"] = "Front Driver",
    ["frontPassenger"] = "Front Passenger",
    ["rearDriver"] = "Rear Driver",
    ["rearPassenger"] = "Rear Passenger",
    ["trunk"] = "Trunk",
    ["hood"] = "Hood",
    ["notNearCar"] = "You're not close to any car",
    ["tooFarDoor"] = "You can't reach that handle from where you are",
    ["tooFarHood"] = "You can't reach the release latch from where you are",
    ["cantReachWindow"] = "You can't reach that window button from where you are in the car",
    ["windowDoesNotExist"] = "This car doesn't have a %s",
    ["notDriverDoor"] = "You can't reach that door handle from where you are in the car",
    ["notDriverTrunkHood"] = "You can't reach the release latch from where you are in the car",
    ["doorDoesNotExist"] = "This car doesn't have a %s",
    ["opened"] = "You've opened your vehicle's %s",
    ["closed"] = "You've closed your vehicle's %s",
    ["engineOn"] = "You're turning on your engine",
    ["engineOff"] = "You're turning off your engine",
    ["engineNotInCar"] = "You're not in a car",
    ["engineNotDriver"] = "You're not in the driver seat",

    -- Weapon Control Module
    ["laserSightEnabled"] = "Laser sight enabled",
    ["laserSightDisabled"] = "Laser sight disabled",

}