WEAPONS = {}

--[[ Combat Shotgun ]]
WEAPONS["94989220"] = {
    Name = "Combat Shotgun",
    Description = "There's only one semi-automatic shotgun with a fire rate that sets the LSFD alarm bells ringing, and you're looking at it.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_COMBATSHOTGUN",
    Hash = "94989220",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["3323278933"] = {
                Name = "Default Shells",
                Description = "Standard shotgun ammunition.",
                ComponentModelName = "COMPONENT_COMBATSHOTGUN_CLIP_01",
                ComponentHash = "3323278933",
                IsDefault = true
            },
        },
    }
}

--[[ Sniper Rifle ]]
WEAPONS["100416529"] = {
    Name = "Sniper Rifle",
    Description = "Standard sniper rifle. Ideal for situations that require accuracy at long range. Limitations include slow reload speed and very low rate of fire.",
    Category = "GROUP_SNIPER",
    AmmoType = "AMMO_SNIPER",
    ModelName = "WEAPON_SNIPERRIFLE",
    Hash = "100416529",
    WeaponStats = {
        DefaultClipSize = 10,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1077065191"] = {
                Name = "Etched Wood Grip Finish",
                Description = "",
                ComponentModelName = "COMPONENT_SNIPERRIFLE_VARMOD_LUXE",
                ComponentHash = "1077065191",
                IsDefault = false
            },
            ["2613461129"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_SNIPERRIFLE_CLIP_01",
                ComponentHash = "2613461129",
                IsDefault = true
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["3159677559"] = {
                Name = "Advanced Scope",
                Description = "Maximum zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MAX",
                ComponentHash = "3159677559",
                IsDefault = true
            },
            ["3527687644"] = {
                Name = "Scope",
                Description = "Long-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_LARGE",
                ComponentHash = "3527687644",
                IsDefault = true
            },
        },
    }
}

--[[ Fire Extinguisher ]]
WEAPONS["101631238"] = {
    Name = "Fire Extinguisher",
    Description = "",
    Category = "GROUP_FIREEXTINGUISHER",
    AmmoType = "AMMO_FIREEXTINGUISHER",
    ModelName = "WEAPON_FIREEXTINGUISHER",
    Hash = "101631238",
    WeaponStats = {
        DefaultClipSize = 2000,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Snowball ]]
WEAPONS["126349499"] = {
    Name = "Snowball",
    Description = "",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_SNOWBALL",
    ModelName = "WEAPON_SNOWBALL",
    Hash = "126349499",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Compact Grenade Launcher ]]
WEAPONS["125959754"] = {
    Name = "Compact Grenade Launcher",
    Description = "Focus groups using the regular model suggested it was too accurate and found it awkward to use with one hand on the throttle. Easy fix. Part of Bikers.",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_GRENADELAUNCHER",
    ModelName = "WEAPON_COMPACTLAUNCHER",
    Hash = "125959754",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1235472140"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_COMPACTLAUNCHER_CLIP_01",
                ComponentHash = "1235472140",
                IsDefault = true
            },
        },
    }
}

--[[ Vintage Pistol ]]
WEAPONS["137902532"] = {
    Name = "Vintage Pistol",
    Description = "What you really need is a more recognizable gun. Stand out from the crowd at an armed robbery with this engraved pistol. Part of The \"I'm Not a Hipster\" Update.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_VINTAGEPISTOL",
    Hash = "137902532",
    WeaponStats = {
        DefaultClipSize = 7,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["867832552"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Vintage Pistol.",
                ComponentModelName = "COMPONENT_VINTAGEPISTOL_CLIP_02",
                ComponentHash = "867832552",
                IsDefault = false
            },
            ["1168357051"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Vintage Pistol.",
                ComponentModelName = "COMPONENT_VINTAGEPISTOL_CLIP_01",
                ComponentHash = "1168357051",
                IsDefault = true
            },
            ["3271853210"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP",
                ComponentHash = "3271853210",
                IsDefault = false
            },
        },
    }
}

--[[ Heavy Sniper Mk II ]]
WEAPONS["177293209"] = {
    Name = "Heavy Sniper Mk II",
    Description = "Far away, yet always intimate: if you're looking for a secure foundation for that long-distance relationship, this is it.",
    Category = "GROUP_SNIPER",
    AmmoType = "AMMO_SNIPER",
    ModelName = "WEAPON_HEAVYSNIPER_MK2",
    Hash = "177293209",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["247526935"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY",
                ComponentHash = "247526935",
                IsDefault = false
            },
            ["277524638"] = {
                Name = "Heavy Barrel",
                Description = "Increases damage dealt to long-range targets.",
                ComponentModelName = "COMPONENT_AT_SR_BARREL_02",
                ComponentHash = "277524638",
                IsDefault = false
            },
            ["329939175"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_04",
                ComponentHash = "329939175",
                IsDefault = false
            },
            ["643374672"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_05",
                ComponentHash = "643374672",
                IsDefault = false
            },
            ["752418717"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02",
                ComponentHash = "752418717",
                IsDefault = false
            },
            ["776198721"] = {
                Name = "Thermal Scope",
                Description = "Long-range zoom with toggleable thermal vision.",
                ComponentModelName = "COMPONENT_AT_SCOPE_THERMAL",
                ComponentHash = "776198721",
                IsDefault = false
            },
            ["807875052"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_06",
                ComponentHash = "807875052",
                IsDefault = false
            },
            ["1005144310"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ",
                ComponentHash = "1005144310",
                IsDefault = false
            },
            ["1602080333"] = {
                Name = "Squared Muzzle Brake",
                Description = "Reduces recoil when firing.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_08",
                ComponentHash = "1602080333",
                IsDefault = false
            },
            ["1764221345"] = {
                Name = "Bell-End Muzzle Brake",
                Description = "Reduces recoil when firing.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_09",
                ComponentHash = "1764221345",
                IsDefault = false
            },
            ["1815270123"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_IND_01",
                ComponentHash = "1815270123",
                IsDefault = false
            },
            ["2193687427"] = {
                Name = "Zoom Scope",
                Description = "Long-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_LARGE_MK2",
                ComponentHash = "2193687427",
                IsDefault = false
            },
            ["2313935527"] = {
                Name = "Explosive Rounds",
                Description = "Bullets which explode on impact. Reduced capacity.",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE",
                ComponentHash = "2313935527",
                IsDefault = false
            },
            ["2425761975"] = {
                Name = "Default Barrel",
                Description = "Stock barrel attachment.",
                ComponentModelName = "COMPONENT_AT_SR_BARREL_01",
                ComponentHash = "2425761975",
                IsDefault = true
            },
            ["2881858759"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_10",
                ComponentHash = "2881858759",
                IsDefault = false
            },
            ["2890063729"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_SR_SUPP_03",
                ComponentHash = "2890063729",
                IsDefault = false
            },
            ["2893163128"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_07",
                ComponentHash = "2893163128",
                IsDefault = false
            },
            ["3061846192"] = {
                Name = "Night Vision Scope",
                Description = "Long-range zoom with toggleable night vision.",
                ComponentModelName = "COMPONENT_AT_SCOPE_NV",
                ComponentHash = "3061846192",
                IsDefault = false
            },
            ["3159677559"] = {
                Name = "Advanced Scope",
                Description = "Maximum zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MAX",
                ComponentHash = "3159677559",
                IsDefault = true
            },
            ["3198471901"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_08",
                ComponentHash = "3198471901",
                IsDefault = false
            },
            ["3317620069"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_02",
                ComponentHash = "3317620069",
                IsDefault = false
            },
            ["3447155842"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_09",
                ComponentHash = "3447155842",
                IsDefault = false
            },
            ["3916506229"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO_03",
                ComponentHash = "3916506229",
                IsDefault = false
            },
            ["4164123906"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CAMO",
                ComponentHash = "4164123906",
                IsDefault = false
            },
            ["4164277972"] = {
                Name = "Armor Piercing Rounds",
                Description = "Increased penetration of Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING",
                ComponentHash = "4164277972",
                IsDefault = false
            },
            ["4196276776"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01",
                ComponentHash = "4196276776",
                IsDefault = true
            },
        },
    }
}

--[[ Heavy Sniper ]]
WEAPONS["205991906"] = {
    Name = "Heavy Sniper",
    Description = "Features armor-piercing rounds for heavy damage. Comes with laser scope as standard.",
    Category = "GROUP_SNIPER",
    AmmoType = "AMMO_SNIPER",
    ModelName = "WEAPON_HEAVYSNIPER",
    Hash = "205991906",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1198478068"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYSNIPER_CLIP_01",
                ComponentHash = "1198478068",
                IsDefault = true
            },
            ["3159677559"] = {
                Name = "Advanced Scope",
                Description = "Maximum zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MAX",
                ComponentHash = "3159677559",
                IsDefault = true
            },
            ["3527687644"] = {
                Name = "Scope",
                Description = "Long-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_LARGE",
                ComponentHash = "3527687644",
                IsDefault = true
            },
        },
    }
}

--[[ Combat PDW ]]
WEAPONS["171789620"] = {
    Name = "Combat PDW",
    Description = "Who said personal weaponry couldn't be worthy of military personnel? Thanks to our lobbyists, not Congress. Integral suppressor. Part of the Ill-Gotten Gains Update Part 1.",
    Category = "GROUP_SMG",
    AmmoType = "AMMO_SMG",
    ModelName = "WEAPON_COMBATPDW",
    Hash = "171789620",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["860508675"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Combat PDW.",
                ComponentModelName = "COMPONENT_COMBATPDW_CLIP_02",
                ComponentHash = "860508675",
                IsDefault = false
            },
            ["1125642654"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Combat PDW.",
                ComponentModelName = "COMPONENT_COMBATPDW_CLIP_01",
                ComponentHash = "1125642654",
                IsDefault = true
            },
            ["1857603803"] = {
                Name = "Drum Magazine",
                Description = "Expanded capacity and slower reload.",
                ComponentModelName = "COMPONENT_COMBATPDW_CLIP_03",
                ComponentHash = "1857603803",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2855028148"] = {
                Name = "Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL",
                ComponentHash = "2855028148",
                IsDefault = false
            },
        },
    }
}

--[[ Micro SMG ]]
WEAPONS["324215364"] = {
    Name = "Micro SMG",
    Description = "Combines compact design with a high rate of fire at approximately 700-900 rounds per minute.",
    Category = "GROUP_SMG",
    AmmoType = "AMMO_SMG",
    ModelName = "WEAPON_MICROSMG",
    Hash = "324215364",
    WeaponStats = {
        DefaultClipSize = 16,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["283556395"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Micro SMG.",
                ComponentModelName = "COMPONENT_MICROSMG_CLIP_02",
                ComponentHash = "283556395",
                IsDefault = false
            },
            ["899381934"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH",
                ComponentHash = "899381934",
                IsDefault = false
            },
            ["1215999497"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_MICROSMG_VARMOD_LUXE",
                ComponentHash = "1215999497",
                IsDefault = false
            },
            ["2012362801"] = {
                Name = "Organics Finish",
                Description = "",
                ComponentModelName = "COMPONENT_MICROSMG_VARMOD_SECURITY",
                ComponentHash = "2012362801",
                IsDefault = false
            },
            ["2637152041"] = {
                Name = "Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO",
                ComponentHash = "2637152041",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["3410538224"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Micro SMG.",
                ComponentModelName = "COMPONENT_MICROSMG_CLIP_01",
                ComponentHash = "3410538224",
                IsDefault = true
            },
        },
    }
}

--[[ Sweeper Shotgun ]]
WEAPONS["317205821"] = {
    Name = "Sweeper Shotgun",
    Description = "How many effective tools for riot control can you tuck into your pants? OK, two. But this is the other one. Part of Bikers.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_AUTOSHOTGUN",
    Hash = "317205821",
    WeaponStats = {
        DefaultClipSize = 10,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["169463950"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_AUTOSHOTGUN_CLIP_01",
                ComponentHash = "169463950",
                IsDefault = true
            },
        },
    }
}

--[[ Pistol ]]
WEAPONS["453432689"] = {
    Name = "Pistol",
    Description = "Standard handgun. A .45 caliber pistol with a magazine capacity of 12 rounds that can be extended to 16.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_PISTOL",
    Hash = "453432689",
    WeaponStats = {
        DefaultClipSize = 12,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["899381934"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH",
                ComponentHash = "899381934",
                IsDefault = false
            },
            ["1709866683"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP_02",
                ComponentHash = "1709866683",
                IsDefault = false
            },
            ["3610841222"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_VARMOD_LUXE",
                ComponentHash = "3610841222",
                IsDefault = false
            },
            ["3978713628"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Pistol.",
                ComponentModelName = "COMPONENT_PISTOL_CLIP_02",
                ComponentHash = "3978713628",
                IsDefault = false
            },
            ["4275109233"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Pistol.",
                ComponentModelName = "COMPONENT_PISTOL_CLIP_01",
                ComponentHash = "4275109233",
                IsDefault = true
            },
        },
    }
}

--[[ Pipe Wrench ]]
WEAPONS["419712736"] = {
    Name = "Pipe Wrench",
    Description = "Perennial favourite of apocalyptic survivalists and violent fathers the world over, apparently it also doubles as some kind of tool. Part of Bikers.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_WRENCH",
    Hash = "419712736",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Pump Shotgun ]]
WEAPONS["487013001"] = {
    Name = "Pump Shotgun",
    Description = "Standard shotgun ideal for short-range combat. A high-projectile spread makes up for its lower accuracy at long range.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_PUMPSHOTGUN",
    Hash = "487013001",
    WeaponStats = {
        DefaultClipSize = 8,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2732039643"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER",
                ComponentHash = "2732039643",
                IsDefault = false
            },
            ["3513717816"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_CLIP_01",
                ComponentHash = "3513717816",
                IsDefault = true
            },
            ["3859329886"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_SR_SUPP",
                ComponentHash = "3859329886",
                IsDefault = false
            },
            ["4052644405"] = {
                Name = "Bone Finish",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_VARMOD_SECURITY",
                ComponentHash = "4052644405",
                IsDefault = false
            },
        },
    }
}

--[[ Fertilizer Can ]]
WEAPONS["406929569"] = {
    Name = "Fertilizer Can",
    Description = "",
    Category = "GROUP_PETROLCAN",
    AmmoType = "AMMO_FERTILIZERCAN",
    ModelName = "WEAPON_FERTILIZERCAN",
    Hash = "406929569",
    WeaponStats = {
        DefaultClipSize = 4500,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ AP Pistol ]]
WEAPONS["584646201"] = {
    Name = "AP Pistol",
    Description = "High-penetration, fully-automatic pistol. Holds 18 rounds in magazine with option to extend to 36 rounds.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_APPISTOL",
    Hash = "584646201",
    WeaponStats = {
        DefaultClipSize = 18,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["614078421"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for AP Pistol.",
                ComponentModelName = "COMPONENT_APPISTOL_CLIP_02",
                ComponentHash = "614078421",
                IsDefault = false
            },
            ["834974250"] = {
                Name = "Default Clip",
                Description = "Standard capacity for AP Pistol.",
                ComponentModelName = "COMPONENT_APPISTOL_CLIP_01",
                ComponentHash = "834974250",
                IsDefault = true
            },
            ["899381934"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH",
                ComponentHash = "899381934",
                IsDefault = false
            },
            ["1657753414"] = {
                Name = "Record A Finish",
                Description = "",
                ComponentModelName = "COMPONENT_APPISTOL_VARMOD_SECURITY",
                ComponentHash = "1657753414",
                IsDefault = false
            },
            ["2608252716"] = {
                Name = "Gilded Gun Metal Finish",
                Description = "",
                ComponentModelName = "COMPONENT_APPISTOL_VARMOD_LUXE",
                ComponentHash = "2608252716",
                IsDefault = false
            },
            ["3271853210"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP",
                ComponentHash = "3271853210",
                IsDefault = false
            },
        },
    }
}

--[[ Ball ]]
WEAPONS["600439132"] = {
    Name = "Ball",
    Description = "",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_BALL",
    ModelName = "WEAPON_BALL",
    Hash = "600439132",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Ceramic Pistol ]]
WEAPONS["727643628"] = {
    Name = "Ceramic Pistol",
    Description = "Not your grandma's ceramics. Although this pint-sized pistol is small enough to fit into her purse and won't set off a metal detector.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_CERAMICPISTOL",
    Hash = "727643628",
    WeaponStats = {
        DefaultClipSize = 12,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1423184737"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_CERAMICPISTOL_CLIP_01",
                ComponentHash = "1423184737",
                IsDefault = true
            },
            ["2172153001"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_CERAMICPISTOL_CLIP_02",
                ComponentHash = "2172153001",
                IsDefault = false
            },
            ["2466764538"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_CERAMICPISTOL_SUPP",
                ComponentHash = "2466764538",
                IsDefault = false
            },
        },
    }
}

--[[ SMG ]]
WEAPONS["736523883"] = {
    Name = "SMG",
    Description = "This is known as a good all-round submachine gun. Lightweight with an accurate sight and 30-round magazine capacity.",
    Category = "GROUP_SMG",
    AmmoType = "AMMO_SMG",
    ModelName = "WEAPON_SMG",
    Hash = "736523883",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["643254679"] = {
                Name = "Default Clip",
                Description = "Standard capacity for SMG.",
                ComponentModelName = "COMPONENT_SMG_CLIP_01",
                ComponentHash = "643254679",
                IsDefault = true
            },
            ["663170192"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_VARMOD_LUXE",
                ComponentHash = "663170192",
                IsDefault = false
            },
            ["889808635"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for SMG.",
                ComponentModelName = "COMPONENT_SMG_CLIP_02",
                ComponentHash = "889808635",
                IsDefault = false
            },
            ["1019656791"] = {
                Name = "Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO_02",
                ComponentHash = "1019656791",
                IsDefault = false
            },
            ["2043113590"] = {
                Name = "Drum Magazine",
                Description = "Expanded capacity and slower reload.",
                ComponentModelName = "COMPONENT_SMG_CLIP_03",
                ComponentHash = "2043113590",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["3271853210"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP",
                ComponentHash = "3271853210",
                IsDefault = false
            },
        },
    }
}

--[[ Jerry Can ]]
WEAPONS["883325847"] = {
    Name = "Jerry Can",
    Description = "Leaves a trail of gasoline that can be ignited.",
    Category = "GROUP_PETROLCAN",
    AmmoType = "AMMO_PETROLCAN",
    ModelName = "WEAPON_PETROLCAN",
    Hash = "883325847",
    WeaponStats = {
        DefaultClipSize = 4500,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Molotov ]]
WEAPONS["615608432"] = {
    Name = "Molotov",
    Description = "Crude yet highly effective incendiary weapon. No happy hour with this cocktail.",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_MOLOTOV",
    ModelName = "WEAPON_MOLOTOV",
    Hash = "615608432",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Stone Hatchet ]]
WEAPONS["940833800"] = {
    Name = "Stone Hatchet",
    Description = "There's retro, there's vintage, and there's this. After 500 years of technological development and spiritual apocalypse, pre-Colombian chic is back.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_STONE_HATCHET",
    Hash = "940833800",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Sticky Bomb ]]
WEAPONS["741814745"] = {
    Name = "Sticky Bomb",
    Description = "A plastic explosive charge fitted with a remote detonator. Can be thrown and then detonated or attached to a vehicle then detonated.",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_STICKYBOMB",
    ModelName = "WEAPON_STICKYBOMB",
    Hash = "741814745",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Stun Gun ]]
WEAPONS["911657153"] = {
    Name = "Stun Gun",
    Description = "Fires a projectile that administers a voltage capable of temporarily stunning an assailant. Takes approximately 4 seconds to recharge after firing.",
    Category = "GROUP_STUNGUN",
    AmmoType = "AMMO_STUNGUN",
    ModelName = "WEAPON_STUNGUN",
    Hash = "911657153",
    WeaponStats = {
        DefaultClipSize = 2104529083,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Assault Rifle Mk II ]]
WEAPONS["961495388"] = {
    Name = "Assault Rifle Mk II",
    Description = "The definitive revision of an all-time classic: all it takes is a little work, and looks can kill after all.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_ASSAULTRIFLE_MK2",
    Hash = "961495388",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["48731514"] = {
                Name = "Heavy Duty Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_05",
                ComponentHash = "48731514",
                IsDefault = false
            },
            ["77277509"] = {
                Name = "Small Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO_MK2",
                ComponentHash = "77277509",
                IsDefault = false
            },
            ["628662130"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_04",
                ComponentHash = "628662130",
                IsDefault = false
            },
            ["880736428"] = {
                Name = "Slanted Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_06",
                ComponentHash = "880736428",
                IsDefault = false
            },
            ["937772107"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_02",
                ComponentHash = "937772107",
                IsDefault = false
            },
            ["1108334355"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS",
                ComponentHash = "1108334355",
                IsDefault = false
            },
            ["1134861606"] = {
                Name = "Default Barrel",
                Description = "Stock barrel attachment.",
                ComponentModelName = "COMPONENT_AT_AR_BARREL_01",
                ComponentHash = "1134861606",
                IsDefault = true
            },
            ["1303784126"] = {
                Name = "Split-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_07",
                ComponentHash = "1303784126",
                IsDefault = false
            },
            ["1401650071"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_03",
                ComponentHash = "1401650071",
                IsDefault = false
            },
            ["1447477866"] = {
                Name = "Heavy Barrel",
                Description = "Increases damage dealt to long-range targets.",
                ComponentModelName = "COMPONENT_AT_AR_BARREL_02",
                ComponentHash = "1447477866",
                IsDefault = false
            },
            ["1675665560"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ",
                ComponentHash = "1675665560",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2088750491"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_09",
                ComponentHash = "2088750491",
                IsDefault = false
            },
            ["2249208895"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01",
                ComponentHash = "2249208895",
                IsDefault = true
            },
            ["2434475183"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO",
                ComponentHash = "2434475183",
                IsDefault = false
            },
            ["2640679034"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP_02",
                ComponentHash = "2640679034",
                IsDefault = false
            },
            ["2781053842"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_10",
                ComponentHash = "2781053842",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["2816286296"] = {
                Name = "Armor Piercing Rounds",
                Description = "Increased penetration of Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING",
                ComponentHash = "2816286296",
                IsDefault = false
            },
            ["2847614993"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_07",
                ComponentHash = "2847614993",
                IsDefault = false
            },
            ["3113485012"] = {
                Name = "Flat Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_01",
                ComponentHash = "3113485012",
                IsDefault = false
            },
            ["3115408816"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01",
                ComponentHash = "3115408816",
                IsDefault = false
            },
            ["3309920045"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_05",
                ComponentHash = "3309920045",
                IsDefault = false
            },
            ["3328927042"] = {
                Name = "Large Scope",
                Description = "Extended-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                ComponentHash = "3328927042",
                IsDefault = false
            },
            ["3362234491"] = {
                Name = "Tactical Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_02",
                ComponentHash = "3362234491",
                IsDefault = false
            },
            ["3482022833"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_06",
                ComponentHash = "3482022833",
                IsDefault = false
            },
            ["3509242479"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02",
                ComponentHash = "3509242479",
                IsDefault = false
            },
            ["3725708239"] = {
                Name = "Fat-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_03",
                ComponentHash = "3725708239",
                IsDefault = false
            },
            ["3968886988"] = {
                Name = "Precision Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_04",
                ComponentHash = "3968886988",
                IsDefault = false
            },
            ["4012669121"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun. Standard capacity.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER",
                ComponentHash = "4012669121",
                IsDefault = false
            },
            ["4218476627"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY",
                ComponentHash = "4218476627",
                IsDefault = false
            },
            ["4234628436"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_MK2_CAMO_08",
                ComponentHash = "4234628436",
                IsDefault = false
            },
        },
    }
}

--[[ Heavy Shotgun ]]
WEAPONS["984333226"] = {
    Name = "Heavy Shotgun",
    Description = "The weapon to reach for when you absolutely need to make a horrible mess of the room. Best used near easy-wipe surfaces only. Part of the Last Team Standing Update.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_HEAVYSHOTGUN",
    Hash = "984333226",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["844049759"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Heavy Shotgun.",
                ComponentModelName = "COMPONENT_HEAVYSHOTGUN_CLIP_01",
                ComponentHash = "844049759",
                IsDefault = true
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2294798931"] = {
                Name = "Drum Magazine",
                Description = "Expanded capacity and slower reload.",
                ComponentModelName = "COMPONENT_HEAVYSHOTGUN_CLIP_03",
                ComponentHash = "2294798931",
                IsDefault = false
            },
            ["2535257853"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Heavy Shotgun.",
                ComponentModelName = "COMPONENT_HEAVYSHOTGUN_CLIP_02",
                ComponentHash = "2535257853",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
        },
    }
}

--[[ Minigun ]]
WEAPONS["1119849093"] = {
    Name = "Minigun",
    Description = "A devastating 6-barrel machine gun that features Gatling-style rotating barrels. Very high rate of fire (2000 to 6000 rounds per minute).",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_MINIGUN",
    ModelName = "WEAPON_MINIGUN",
    Hash = "1119849093",
    WeaponStats = {
        DefaultClipSize = 15000,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["3370020614"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_MINIGUN_CLIP_01",
                ComponentHash = "3370020614",
                IsDefault = true
            },
        },
    }
}

--[[ Unholy Hellbringer ]]
WEAPONS["1198256469"] = {
    Name = "Unholy Hellbringer",
    Description = "Republican Space Ranger Special. If you want to turn a little green man into little green goo, this is the only American way to do it.",
    Category = "GROUP_MG",
    AmmoType = "AMMO_MG",
    ModelName = "WEAPON_RAYCARBINE",
    Hash = "1198256469",
    WeaponStats = {
        DefaultClipSize = 9999,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Golf Club ]]
WEAPONS["1141786504"] = {
    Name = "Golf Club",
    Description = "Standard length, mid iron golf club with rubber grip for a lethal short game.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_GOLFCLUB",
    Hash = "1141786504",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Flare ]]
WEAPONS["1233104067"] = {
    Name = "Flare",
    Description = "",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_FLARE",
    ModelName = "WEAPON_FLARE",
    Hash = "1233104067",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Stun Gun ]]
WEAPONS["1171102963"] = {
    Name = "Stun Gun",
    Description = "It's, like, literally stunning.",
    Category = "GROUP_STUNGUN",
    AmmoType = "AMMO_STUNGUN",
    ModelName = "WEAPON_STUNGUN_MP",
    Hash = "1171102963",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Tear Gas Launcher ]]
WEAPONS["1305664598"] = {
    Name = "Tear Gas Launcher",
    Description = "",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_GRENADELAUNCHER_SMOKE",
    ModelName = "WEAPON_GRENADELAUNCHER_SMOKE",
    Hash = "1305664598",
    WeaponStats = {
        DefaultClipSize = 10,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2855028148"] = {
                Name = "Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL",
                ComponentHash = "2855028148",
                IsDefault = false
            },
        },
    }
}

--[[ Hammer ]]
WEAPONS["1317494643"] = {
    Name = "Hammer",
    Description = "A robust, multi-purpose hammer with wooden handle and curved claw, this old classic still nails the competition.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_HAMMER",
    Hash = "1317494643",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Flare Gun ]]
WEAPONS["1198879012"] = {
    Name = "Flare Gun",
    Description = "Use to signal distress or drunken excitement. Warning: pointing directly at individuals may cause spontaneous combustion. Part of The Heists Update.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_FLAREGUN",
    ModelName = "WEAPON_FLAREGUN",
    Hash = "1198879012",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["2481569177"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_FLAREGUN_CLIP_01",
                ComponentHash = "2481569177",
                IsDefault = true
            },
        },
    }
}

--[[ Pump Shotgun Mk II ]]
WEAPONS["1432025498"] = {
    Name = "Pump Shotgun Mk II",
    Description = "Only one thing pumps more action than a pump action: watch out, the recoil is almost as deadly as the shot.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_PUMPSHOTGUN_MK2",
    Hash = "1432025498",
    WeaponStats = {
        DefaultClipSize = 8,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["8741501"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_05",
                ComponentHash = "8741501",
                IsDefault = false
            },
            ["77277509"] = {
                Name = "Small Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO_MK2",
                ComponentHash = "77277509",
                IsDefault = false
            },
            ["387223451"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_02",
                ComponentHash = "387223451",
                IsDefault = false
            },
            ["617753366"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_03",
                ComponentHash = "617753366",
                IsDefault = false
            },
            ["1004815965"] = {
                Name = "Explosive Slugs",
                Description = "Projectile which explodes on impact.",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE",
                ComponentHash = "1004815965",
                IsDefault = false
            },
            ["1060929921"] = {
                Name = "Medium Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL_MK2",
                ComponentHash = "1060929921",
                IsDefault = false
            },
            ["1108334355"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS",
                ComponentHash = "1108334355",
                IsDefault = false
            },
            ["1178671645"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_IND_01",
                ComponentHash = "1178671645",
                IsDefault = false
            },
            ["1315288101"] = {
                Name = "Steel Buckshot Shells",
                Description = "Increased penetration of Body Armor.",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING",
                ComponentHash = "1315288101",
                IsDefault = false
            },
            ["1602080333"] = {
                Name = "Squared Muzzle Brake",
                Description = "Reduces recoil when firing.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_08",
                ComponentHash = "1602080333",
                IsDefault = false
            },
            ["1739501925"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_10",
                ComponentHash = "1739501925",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2676628469"] = {
                Name = "Dragon's Breath Shells",
                Description = "Has a chance to set targets on fire when shot.",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY",
                ComponentHash = "2676628469",
                IsDefault = false
            },
            ["2890063729"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_SR_SUPP_03",
                ComponentHash = "2890063729",
                IsDefault = false
            },
            ["3449028929"] = {
                Name = "Default Shells",
                Description = "Standard shotgun ammunition.",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_01",
                ComponentHash = "3449028929",
                IsDefault = true
            },
            ["3639579478"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_08",
                ComponentHash = "3639579478",
                IsDefault = false
            },
            ["3693681093"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_06",
                ComponentHash = "3693681093",
                IsDefault = false
            },
            ["3783533691"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_07",
                ComponentHash = "3783533691",
                IsDefault = false
            },
            ["3820854852"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO",
                ComponentHash = "3820854852",
                IsDefault = false
            },
            ["3914869031"] = {
                Name = "Flechette Shells",
                Description = "Increased damage to targets without Body Armor.",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT",
                ComponentHash = "3914869031",
                IsDefault = false
            },
            ["4012490698"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_09",
                ComponentHash = "4012490698",
                IsDefault = false
            },
            ["4072589040"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_PUMPSHOTGUN_MK2_CAMO_04",
                ComponentHash = "4072589040",
                IsDefault = false
            },
        },
    }
}

--[[ Combat Pistol ]]
WEAPONS["1593441988"] = {
    Name = "Combat Pistol",
    Description = "A compact, lightweight, semi-automatic pistol designed for law enforcement and personal defense. 12-round magazine with option to extend to 16 rounds.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_COMBATPISTOL",
    Hash = "1593441988",
    WeaponStats = {
        DefaultClipSize = 12,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["119648377"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Combat Pistol.",
                ComponentModelName = "COMPONENT_COMBATPISTOL_CLIP_01",
                ComponentHash = "119648377",
                IsDefault = true
            },
            ["899381934"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH",
                ComponentHash = "899381934",
                IsDefault = false
            },
            ["3271853210"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP",
                ComponentHash = "3271853210",
                IsDefault = false
            },
            ["3328527730"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER",
                ComponentHash = "3328527730",
                IsDefault = false
            },
            ["3598405421"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Combat Pistol.",
                ComponentModelName = "COMPONENT_COMBATPISTOL_CLIP_02",
                ComponentHash = "3598405421",
                IsDefault = false
            },
        },
    }
}

--[[ Gusenberg Sweeper ]]
WEAPONS["1627465347"] = {
    Name = "Gusenberg Sweeper",
    Description = "Complete your look with a Prohibition gun. Looks great being fired from an Albany Roosevelt or paired with a pinstripe suit. Part of the Valentine's Day Massacre Special.",
    Category = "GROUP_MG",
    AmmoType = "AMMO_MG",
    ModelName = "WEAPON_GUSENBERG",
    Hash = "1627465347",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["484812453"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Gusenberg Sweeper.",
                ComponentModelName = "COMPONENT_GUSENBERG_CLIP_01",
                ComponentHash = "484812453",
                IsDefault = true
            },
            ["3939025520"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Gusenberg Sweeper.",
                ComponentModelName = "COMPONENT_GUSENBERG_CLIP_02",
                ComponentHash = "3939025520",
                IsDefault = false
            },
        },
    }
}

--[[ Compact Rifle ]]
WEAPONS["1649403952"] = {
    Name = "Compact Rifle",
    Description = "Half the size, all the power, double the recoil: there's no riskier way to say \"I'm compensating for something\". Part of Lowriders: Custom Classics.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_COMPACTRIFLE",
    Hash = "1649403952",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1363085923"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Compact Rifle.",
                ComponentModelName = "COMPONENT_COMPACTRIFLE_CLIP_01",
                ComponentHash = "1363085923",
                IsDefault = true
            },
            ["1509923832"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Compact Rifle.",
                ComponentModelName = "COMPONENT_COMPACTRIFLE_CLIP_02",
                ComponentHash = "1509923832",
                IsDefault = false
            },
            ["3322377230"] = {
                Name = "Drum Magazine",
                Description = "Expanded capacity and slower reload.",
                ComponentModelName = "COMPONENT_COMPACTRIFLE_CLIP_03",
                ComponentHash = "3322377230",
                IsDefault = false
            },
        },
    }
}

--[[ Nightstick ]]
WEAPONS["1737195953"] = {
    Name = "Nightstick",
    Description = "24\" polycarbonate side-handled nightstick.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_NIGHTSTICK",
    Hash = "1737195953",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Perico Pistol ]]
WEAPONS["1470379660"] = {
    Name = "Perico Pistol",
    Description = "A deadly shot. Don't be precious. You won't scuff the titanium nitride finish.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_GADGETPISTOL",
    Hash = "1470379660",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["2871488073"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_GADGETPISTOL_CLIP_01",
                ComponentHash = "2871488073",
                IsDefault = true
            },
        },
    }
}

--[[ Marksman Rifle Mk II ]]
WEAPONS["1785463520"] = {
    Name = "Marksman Rifle Mk II",
    Description = "Known in military circles as The Dislocator, this mod set will destroy both the target and your shoulder, in that order.",
    Category = "GROUP_SNIPER",
    AmmoType = "AMMO_SNIPER",
    ModelName = "WEAPON_MARKSMANRIFLE_MK2",
    Hash = "1785463520",
    WeaponStats = {
        DefaultClipSize = 8,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["48731514"] = {
                Name = "Heavy Duty Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_05",
                ComponentHash = "48731514",
                IsDefault = false
            },
            ["276639596"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_07",
                ComponentHash = "276639596",
                IsDefault = false
            },
            ["423313640"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_06",
                ComponentHash = "423313640",
                IsDefault = false
            },
            ["880736428"] = {
                Name = "Slanted Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_06",
                ComponentHash = "880736428",
                IsDefault = false
            },
            ["941317513"] = {
                Name = "Default Barrel",
                Description = "Stock barrel attachment.",
                ComponentModelName = "COMPONENT_AT_MRFL_BARREL_01",
                ComponentHash = "941317513",
                IsDefault = true
            },
            ["996213771"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_10",
                ComponentHash = "996213771",
                IsDefault = false
            },
            ["1108334355"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS",
                ComponentHash = "1108334355",
                IsDefault = false
            },
            ["1303784126"] = {
                Name = "Split-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_07",
                ComponentHash = "1303784126",
                IsDefault = false
            },
            ["1528590652"] = {
                Name = "Zoom Scope",
                Description = "Long-range fixed zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2",
                ComponentHash = "1528590652",
                IsDefault = true
            },
            ["1624199183"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_03",
                ComponentHash = "1624199183",
                IsDefault = false
            },
            ["1748450780"] = {
                Name = "Heavy Barrel",
                Description = "Increases damage dealt to long-range targets.",
                ComponentModelName = "COMPONENT_AT_MRFL_BARREL_02",
                ComponentHash = "1748450780",
                IsDefault = false
            },
            ["1842849902"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY",
                ComponentHash = "1842849902",
                IsDefault = false
            },
            ["1931539634"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_02",
                ComponentHash = "1931539634",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2425682848"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO",
                ComponentHash = "2425682848",
                IsDefault = false
            },
            ["2497785294"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01",
                ComponentHash = "2497785294",
                IsDefault = true
            },
            ["2612118995"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_09",
                ComponentHash = "2612118995",
                IsDefault = false
            },
            ["2640679034"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP_02",
                ComponentHash = "2640679034",
                IsDefault = false
            },
            ["3080918746"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_IND_01",
                ComponentHash = "3080918746",
                IsDefault = false
            },
            ["3113485012"] = {
                Name = "Flat Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_01",
                ComponentHash = "3113485012",
                IsDefault = false
            },
            ["3303610433"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_08",
                ComponentHash = "3303610433",
                IsDefault = false
            },
            ["3328927042"] = {
                Name = "Large Scope",
                Description = "Extended-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                ComponentHash = "3328927042",
                IsDefault = false
            },
            ["3362234491"] = {
                Name = "Tactical Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_02",
                ComponentHash = "3362234491",
                IsDefault = false
            },
            ["3615105746"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun. Standard capacity.",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER",
                ComponentHash = "3615105746",
                IsDefault = false
            },
            ["3725708239"] = {
                Name = "Fat-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_03",
                ComponentHash = "3725708239",
                IsDefault = false
            },
            ["3779763923"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ",
                ComponentHash = "3779763923",
                IsDefault = false
            },
            ["3872379306"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02",
                ComponentHash = "3872379306",
                IsDefault = false
            },
            ["3968886988"] = {
                Name = "Precision Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_04",
                ComponentHash = "3968886988",
                IsDefault = false
            },
            ["4084561241"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_05",
                ComponentHash = "4084561241",
                IsDefault = false
            },
            ["4100968569"] = {
                Name = "Armor Piercing Rounds",
                Description = "Increased penetration of Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING",
                ComponentHash = "4100968569",
                IsDefault = false
            },
            ["4268133183"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_MK2_CAMO_04",
                ComponentHash = "4268133183",
                IsDefault = false
            },
        },
    }
}

--[[ Railgun ]]
WEAPONS["1834241177"] = {
    Name = "Railgun",
    Description = "All you need to know is - magnets, and it does horrible things to the things it's pointed at. Exclusive content for returning players.",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_RAILGUN",
    ModelName = "WEAPON_RAILGUN",
    Hash = "1834241177",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["59044840"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Railgun.",
                ComponentModelName = "COMPONENT_RAILGUN_CLIP_01",
                ComponentHash = "59044840",
                IsDefault = true
            },
        },
    }
}

--[[ Sawed-Off Shotgun ]]
WEAPONS["2017895192"] = {
    Name = "Sawed-Off Shotgun",
    Description = "This single-barrel, sawed-off shotgun compensates for its low range and ammo capacity with devastating efficiency in close combat.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_SAWNOFFSHOTGUN",
    Hash = "2017895192",
    WeaponStats = {
        DefaultClipSize = 8,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["2242268665"] = {
                Name = "Gilded Gun Metal Finish",
                Description = "",
                ComponentModelName = "COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE",
                ComponentHash = "2242268665",
                IsDefault = false
            },
            ["3352699429"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_SAWNOFFSHOTGUN_CLIP_01",
                ComponentHash = "3352699429",
                IsDefault = true
            },
        },
    }
}

--[[ SMG Mk II ]]
WEAPONS["2024373456"] = {
    Name = "SMG Mk II",
    Description = "Lightweight, compact, with a rate of fire to die very messily for: turn any confined space into a kill box at the click of a well-oiled trigger.",
    Category = "GROUP_SMG",
    AmmoType = "AMMO_SMG",
    ModelName = "WEAPON_SMG_MK2",
    Hash = "2024373456",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["48731514"] = {
                Name = "Heavy Duty Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_05",
                ComponentHash = "48731514",
                IsDefault = false
            },
            ["190476639"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_SMG_MK2_CLIP_FMJ",
                ComponentHash = "190476639",
                IsDefault = false
            },
            ["572063080"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_09",
                ComponentHash = "572063080",
                IsDefault = false
            },
            ["616006309"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_07",
                ComponentHash = "616006309",
                IsDefault = false
            },
            ["880736428"] = {
                Name = "Slanted Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_06",
                ComponentHash = "880736428",
                IsDefault = false
            },
            ["899228776"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_06",
                ComponentHash = "899228776",
                IsDefault = false
            },
            ["940943685"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_02",
                ComponentHash = "940943685",
                IsDefault = false
            },
            ["966612367"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_IND_01",
                ComponentHash = "966612367",
                IsDefault = false
            },
            ["974903034"] = {
                Name = "Hollow Point Rounds",
                Description = "Increased damage to targets without Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT",
                ComponentHash = "974903034",
                IsDefault = false
            },
            ["1038927834"] = {
                Name = "Medium Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2",
                ComponentHash = "1038927834",
                IsDefault = false
            },
            ["1170588613"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_10",
                ComponentHash = "1170588613",
                IsDefault = false
            },
            ["1224100642"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_05",
                ComponentHash = "1224100642",
                IsDefault = false
            },
            ["1263226800"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_03",
                ComponentHash = "1263226800",
                IsDefault = false
            },
            ["1277460590"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_SMG_MK2_CLIP_01",
                ComponentHash = "1277460590",
                IsDefault = true
            },
            ["1303784126"] = {
                Name = "Split-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_07",
                ComponentHash = "1303784126",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2146055916"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun. Standard capacity.",
                ComponentModelName = "COMPONENT_SMG_MK2_CLIP_TRACER",
                ComponentHash = "2146055916",
                IsDefault = false
            },
            ["2681951826"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS_SMG",
                ComponentHash = "2681951826",
                IsDefault = false
            },
            ["2733014785"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_08",
                ComponentHash = "2733014785",
                IsDefault = false
            },
            ["2774849419"] = {
                Name = "Heavy Barrel",
                Description = "Increases damage dealt to long-range targets.",
                ComponentModelName = "COMPONENT_AT_SB_BARREL_02",
                ComponentHash = "2774849419",
                IsDefault = false
            },
            ["3112393518"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_SMG_MK2_CLIP_02",
                ComponentHash = "3112393518",
                IsDefault = false
            },
            ["3113485012"] = {
                Name = "Flat Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_01",
                ComponentHash = "3113485012",
                IsDefault = false
            },
            ["3271853210"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP",
                ComponentHash = "3271853210",
                IsDefault = false
            },
            ["3298267239"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO",
                ComponentHash = "3298267239",
                IsDefault = false
            },
            ["3362234491"] = {
                Name = "Tactical Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_02",
                ComponentHash = "3362234491",
                IsDefault = false
            },
            ["3641720545"] = {
                Name = "Default Barrel",
                Description = "Stock barrel attachment.",
                ComponentModelName = "COMPONENT_AT_SB_BARREL_01",
                ComponentHash = "3641720545",
                IsDefault = true
            },
            ["3650233061"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_SMG_MK2_CLIP_INCENDIARY",
                ComponentHash = "3650233061",
                IsDefault = false
            },
            ["3725708239"] = {
                Name = "Fat-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_03",
                ComponentHash = "3725708239",
                IsDefault = false
            },
            ["3842157419"] = {
                Name = "Small Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2",
                ComponentHash = "3842157419",
                IsDefault = false
            },
            ["3966931456"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_SMG_MK2_CAMO_04",
                ComponentHash = "3966931456",
                IsDefault = false
            },
            ["3968886988"] = {
                Name = "Precision Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_04",
                ComponentHash = "3968886988",
                IsDefault = false
            },
        },
    }
}

--[[ Bullpup Rifle ]]
WEAPONS["2132975508"] = {
    Name = "Bullpup Rifle",
    Description = "The latest Chinese import taking America by storm, this rifle is known for its balanced handling. Lightweight and very controllable in automatic fire. Part of The High Life Update.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_BULLPUPRIFLE",
    Hash = "2132975508",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2824322168"] = {
                Name = "Gilded Gun Metal Finish",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_VARMOD_LOW",
                ComponentHash = "2824322168",
                IsDefault = false
            },
            ["2855028148"] = {
                Name = "Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL",
                ComponentHash = "2855028148",
                IsDefault = false
            },
            ["3009973007"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Bullpup Rifle.",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_CLIP_02",
                ComponentHash = "3009973007",
                IsDefault = false
            },
            ["3315675008"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Bullpup Rifle.",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_CLIP_01",
                ComponentHash = "3315675008",
                IsDefault = true
            },
        },
    }
}

--[[ Homing Launcher ]]
WEAPONS["1672152130"] = {
    Name = "Homing Launcher",
    Description = "Infrared guided fire-and-forget missile launcher. For all your moving target needs. Part of the Festive Surprise.",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_HOMINGLAUNCHER",
    ModelName = "WEAPON_HOMINGLAUNCHER",
    Hash = "1672152130",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["4162006335"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_HOMINGLAUNCHER_CLIP_01",
                ComponentHash = "4162006335",
                IsDefault = true
            },
        },
    }
}

--[[ Firework Launcher ]]
WEAPONS["2138347493"] = {
    Name = "Firework Launcher",
    Description = "Put the flair back in flare with this firework launcher, guaranteed to raise some oohs and aahs from the crowd. Part of the Independence Day Special.",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_FIREWORK",
    ModelName = "WEAPON_FIREWORK",
    Hash = "2138347493",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["3840197261"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Firework Launcher.",
                ComponentModelName = "COMPONENT_FIREWORK_CLIP_01",
                ComponentHash = "3840197261",
                IsDefault = true
            },
        },
    }
}

--[[ Combat MG ]]
WEAPONS["2144741730"] = {
    Name = "Combat MG",
    Description = "Lightweight, compact machine gun that combines excellent maneuverability with a high rate of fire to devastating effect.",
    Category = "GROUP_MG",
    AmmoType = "AMMO_MG",
    ModelName = "WEAPON_COMBATMG",
    Hash = "2144741730",
    WeaponStats = {
        DefaultClipSize = 100,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["2466172125"] = {
                Name = "Etched Gun Metal Finish",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_VARMOD_LOWRIDER",
                ComponentHash = "2466172125",
                IsDefault = false
            },
            ["2698550338"] = {
                Name = "Scope",
                Description = "Long-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM",
                ComponentHash = "2698550338",
                IsDefault = false
            },
            ["3603274966"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Combat MG.",
                ComponentModelName = "COMPONENT_COMBATMG_CLIP_02",
                ComponentHash = "3603274966",
                IsDefault = false
            },
            ["3791631178"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Combat MG.",
                ComponentModelName = "COMPONENT_COMBATMG_CLIP_01",
                ComponentHash = "3791631178",
                IsDefault = true
            },
        },
    }
}

--[[ Bullpup Rifle Mk II ]]
WEAPONS["-2066285827"] = {
    Name = "Bullpup Rifle Mk II",
    Description = "So precise, so exquisite, it's not so much a hail of bullets as a symphony.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_BULLPUPRIFLE_MK2",
    Hash = "-2066285827",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["25766362"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01",
                ComponentHash = "25766362",
                IsDefault = true
            },
            ["36929477"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_06",
                ComponentHash = "36929477",
                IsDefault = false
            },
            ["48731514"] = {
                Name = "Heavy Duty Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_05",
                ComponentHash = "48731514",
                IsDefault = false
            },
            ["880736428"] = {
                Name = "Slanted Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_06",
                ComponentHash = "880736428",
                IsDefault = false
            },
            ["1005743559"] = {
                Name = "Heavy Barrel",
                Description = "Increases damage dealt to long-range targets.",
                ComponentModelName = "COMPONENT_AT_BP_BARREL_02",
                ComponentHash = "1005743559",
                IsDefault = false
            },
            ["1060929921"] = {
                Name = "Medium Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL_MK2",
                ComponentHash = "1060929921",
                IsDefault = false
            },
            ["1108334355"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS",
                ComponentHash = "1108334355",
                IsDefault = false
            },
            ["1130501904"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ",
                ComponentHash = "1130501904",
                IsDefault = false
            },
            ["1303784126"] = {
                Name = "Split-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_07",
                ComponentHash = "1303784126",
                IsDefault = false
            },
            ["1704640795"] = {
                Name = "Default Barrel",
                Description = "Stock barrel attachment.",
                ComponentModelName = "COMPONENT_AT_BP_BARREL_01",
                ComponentHash = "1704640795",
                IsDefault = true
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2183159977"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun. Standard capacity.",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER",
                ComponentHash = "2183159977",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2318995410"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_05",
                ComponentHash = "2318995410",
                IsDefault = false
            },
            ["2491819116"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_04",
                ComponentHash = "2491819116",
                IsDefault = false
            },
            ["2640679034"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP_02",
                ComponentHash = "2640679034",
                IsDefault = false
            },
            ["2797881576"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_03",
                ComponentHash = "2797881576",
                IsDefault = false
            },
            ["2826785822"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_10",
                ComponentHash = "2826785822",
                IsDefault = false
            },
            ["2845636954"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY",
                ComponentHash = "2845636954",
                IsDefault = false
            },
            ["2923451831"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO",
                ComponentHash = "2923451831",
                IsDefault = false
            },
            ["3104173419"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_02",
                ComponentHash = "3104173419",
                IsDefault = false
            },
            ["3113485012"] = {
                Name = "Flat Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_01",
                ComponentHash = "3113485012",
                IsDefault = false
            },
            ["3320426066"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_IND_01",
                ComponentHash = "3320426066",
                IsDefault = false
            },
            ["3350057221"] = {
                Name = "Small Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO_02_MK2",
                ComponentHash = "3350057221",
                IsDefault = false
            },
            ["3362234491"] = {
                Name = "Tactical Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_02",
                ComponentHash = "3362234491",
                IsDefault = false
            },
            ["3412267557"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_09",
                ComponentHash = "3412267557",
                IsDefault = false
            },
            ["3720197850"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_08",
                ComponentHash = "3720197850",
                IsDefault = false
            },
            ["3725708239"] = {
                Name = "Fat-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_03",
                ComponentHash = "3725708239",
                IsDefault = false
            },
            ["3968886988"] = {
                Name = "Precision Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_04",
                ComponentHash = "3968886988",
                IsDefault = false
            },
            ["4021290536"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02",
                ComponentHash = "4021290536",
                IsDefault = false
            },
            ["4026522462"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CAMO_07",
                ComponentHash = "4026522462",
                IsDefault = false
            },
            ["4205311469"] = {
                Name = "Armor Piercing Rounds",
                Description = "Increased penetration of Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING",
                ComponentHash = "4205311469",
                IsDefault = false
            },
        },
    }
}

--[[ Carbine Rifle ]]
WEAPONS["-2084633992"] = {
    Name = "Carbine Rifle",
    Description = "Combining long distance accuracy with a high-capacity magazine, the carbine rifle can be relied on to make the hit.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_CARBINERIFLE",
    Hash = "-2084633992",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["1967214384"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_AT_RAILCOVER_01",
                ComponentHash = "1967214384",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2433783441"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Carbine Rifle.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_CLIP_02",
                ComponentHash = "2433783441",
                IsDefault = false
            },
            ["2680042476"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Carbine Rifle.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_CLIP_01",
                ComponentHash = "2680042476",
                IsDefault = true
            },
            ["2698550338"] = {
                Name = "Scope",
                Description = "Long-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM",
                ComponentHash = "2698550338",
                IsDefault = false
            },
            ["3127044405"] = {
                Name = "Box Magazine",
                Description = "Expanded capacity and slower reload.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_CLIP_03",
                ComponentHash = "3127044405",
                IsDefault = false
            },
            ["3634075224"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_VARMOD_LUXE",
                ComponentHash = "3634075224",
                IsDefault = false
            },
        },
    }
}

--[[ SNS Pistol Mk II ]]
WEAPONS["-2009644972"] = {
    Name = "SNS Pistol Mk II",
    Description = "The ultimate purse-filler: if you want to make Saturday Night really special, this is your ticket.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_SNSPISTOL_MK2",
    Hash = "-2009644972",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["21392614"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CLIP_01",
                ComponentHash = "21392614",
                IsDefault = true
            },
            ["109848390"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_09",
                ComponentHash = "109848390",
                IsDefault = false
            },
            ["259780317"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO",
                ComponentHash = "259780317",
                IsDefault = false
            },
            ["520557834"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_IND_01_SLIDE",
                ComponentHash = "520557834",
                IsDefault = false
            },
            ["583159708"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_09_SLIDE",
                ComponentHash = "583159708",
                IsDefault = false
            },
            ["593945703"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_10",
                ComponentHash = "593945703",
                IsDefault = false
            },
            ["691432737"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_02_SLIDE",
                ComponentHash = "691432737",
                IsDefault = false
            },
            ["730876697"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_08_SLIDE",
                ComponentHash = "730876697",
                IsDefault = false
            },
            ["987648331"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_03_SLIDE",
                ComponentHash = "987648331",
                IsDefault = false
            },
            ["1122574335"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_07",
                ComponentHash = "1122574335",
                IsDefault = false
            },
            ["1142457062"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_IND_01",
                ComponentHash = "1142457062",
                IsDefault = false
            },
            ["1205768792"] = {
                Name = "Mounted Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_PI_RAIL_02",
                ComponentHash = "1205768792",
                IsDefault = false
            },
            ["1246324211"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH_03",
                ComponentHash = "1246324211",
                IsDefault = false
            },
            ["1308243489"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_06",
                ComponentHash = "1308243489",
                IsDefault = false
            },
            ["1420313469"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_08",
                ComponentHash = "1420313469",
                IsDefault = false
            },
            ["1709866683"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP_02",
                ComponentHash = "1709866683",
                IsDefault = false
            },
            ["1996130345"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_03",
                ComponentHash = "1996130345",
                IsDefault = false
            },
            ["2321624822"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_02",
                ComponentHash = "2321624822",
                IsDefault = false
            },
            ["2366463693"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_10_SLIDE",
                ComponentHash = "2366463693",
                IsDefault = false
            },
            ["2366665730"] = {
                Name = "Hollow Point Rounds",
                Description = "Increased damage to targets without Body Armor.",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT",
                ComponentHash = "2366665730",
                IsDefault = false
            },
            ["2418909806"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun.",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER",
                ComponentHash = "2418909806",
                IsDefault = false
            },
            ["2626704212"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_05",
                ComponentHash = "2626704212",
                IsDefault = false
            },
            ["2839309484"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_04",
                ComponentHash = "2839309484",
                IsDefault = false
            },
            ["2860680127"] = {
                Name = "Compensator",
                Description = "Reduces recoil for rapid fire.",
                ComponentModelName = "COMPONENT_AT_PI_COMP_02",
                ComponentHash = "2860680127",
                IsDefault = false
            },
            ["3239176998"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass.",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ",
                ComponentHash = "3239176998",
                IsDefault = false
            },
            ["3447384986"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_05_SLIDE",
                ComponentHash = "3447384986",
                IsDefault = false
            },
            ["3465283442"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CLIP_02",
                ComponentHash = "3465283442",
                IsDefault = false
            },
            ["3800418970"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_07_SLIDE",
                ComponentHash = "3800418970",
                IsDefault = false
            },
            ["3863286761"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_04_SLIDE",
                ComponentHash = "3863286761",
                IsDefault = false
            },
            ["3870121849"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot.",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY",
                ComponentHash = "3870121849",
                IsDefault = false
            },
            ["3891161322"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_SLIDE",
                ComponentHash = "3891161322",
                IsDefault = false
            },
            ["4202375078"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_MK2_CAMO_06_SLIDE",
                ComponentHash = "4202375078",
                IsDefault = false
            },
        },
    }
}

--[[ Crowbar ]]
WEAPONS["-2067956739"] = {
    Name = "Crowbar",
    Description = "Heavy-duty crowbar forged from high quality, tempered steel for that extra leverage you need to get the job done.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_CROWBAR",
    Hash = "-2067956739",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Flashlight ]]
WEAPONS["-1951375401"] = {
    Name = "Flashlight",
    Description = "Intensify your fear of the dark with this short range, battery-powered light source. Handy for blunt force trauma. Part of The Halloween Surprise.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_FLASHLIGHT",
    Hash = "-1951375401",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["3719772431"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_FLASHLIGHT_LIGHT",
                ComponentHash = "3719772431",
                IsDefault = true
            },
        },
    }
}

--[[ Navy Revolver ]]
WEAPONS["-1853920116"] = {
    Name = "Navy Revolver",
    Description = "A true museum piece. You want to know how the West was won - slow reload speeds and a whole heap of bloodshed.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_NAVYREVOLVER",
    Hash = "-1853920116",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["2556346983"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_NAVYREVOLVER_CLIP_01",
                ComponentHash = "2556346983",
                IsDefault = true
            },
        },
    }
}

--[[ Antique Cavalry Dagger ]]
WEAPONS["-1834847097"] = {
    Name = "Antique Cavalry Dagger",
    Description = "You've been rocking the pirate-chic look for a while, but no vicious weapon to complete the look? Get this dagger with guarded hilt. Part of The \"I'm Not a Hipster\" Update.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_DAGGER",
    Hash = "-1834847097",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Grenade ]]
WEAPONS["-1813897027"] = {
    Name = "Grenade",
    Description = "Standard fragmentation grenade. Pull pin, throw, then find cover. Ideal for eliminating clustered assailants.",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_GRENADE",
    ModelName = "WEAPON_GRENADE",
    Hash = "-1813897027",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Special Carbine Mk II ]]
WEAPONS["-1768145561"] = {
    Name = "Special Carbine Mk II",
    Description = "The jack of all trades just got a serious upgrade: bow to the master.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_SPECIALCARBINE_MK2",
    Hash = "-1768145561",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["48731514"] = {
                Name = "Heavy Duty Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_05",
                ComponentHash = "48731514",
                IsDefault = false
            },
            ["77277509"] = {
                Name = "Small Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO_MK2",
                ComponentHash = "77277509",
                IsDefault = false
            },
            ["172765678"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_07",
                ComponentHash = "172765678",
                IsDefault = false
            },
            ["382112385"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01",
                ComponentHash = "382112385",
                IsDefault = true
            },
            ["880736428"] = {
                Name = "Slanted Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_06",
                ComponentHash = "880736428",
                IsDefault = false
            },
            ["886015732"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_03",
                ComponentHash = "886015732",
                IsDefault = false
            },
            ["1108334355"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS",
                ComponentHash = "1108334355",
                IsDefault = false
            },
            ["1125852043"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_02",
                ComponentHash = "1125852043",
                IsDefault = false
            },
            ["1303784126"] = {
                Name = "Split-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_07",
                ComponentHash = "1303784126",
                IsDefault = false
            },
            ["1346235024"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ",
                ComponentHash = "1346235024",
                IsDefault = false
            },
            ["1362433589"] = {
                Name = "Armor Piercing Rounds",
                Description = "Increased penetration of Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING",
                ComponentHash = "1362433589",
                IsDefault = false
            },
            ["1377355801"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_IND_01",
                ComponentHash = "1377355801",
                IsDefault = false
            },
            ["2072122460"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_09",
                ComponentHash = "2072122460",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2271594122"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun. Standard capacity.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER",
                ComponentHash = "2271594122",
                IsDefault = false
            },
            ["2308747125"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_10",
                ComponentHash = "2308747125",
                IsDefault = false
            },
            ["2312089847"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_08",
                ComponentHash = "2312089847",
                IsDefault = false
            },
            ["2640679034"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP_02",
                ComponentHash = "2640679034",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["3032680157"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_04",
                ComponentHash = "3032680157",
                IsDefault = false
            },
            ["3113485012"] = {
                Name = "Flat Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_01",
                ComponentHash = "3113485012",
                IsDefault = false
            },
            ["3328927042"] = {
                Name = "Large Scope",
                Description = "Extended-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                ComponentHash = "3328927042",
                IsDefault = false
            },
            ["3362234491"] = {
                Name = "Tactical Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_02",
                ComponentHash = "3362234491",
                IsDefault = false
            },
            ["3557537083"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO",
                ComponentHash = "3557537083",
                IsDefault = false
            },
            ["3724612230"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY",
                ComponentHash = "3724612230",
                IsDefault = false
            },
            ["3725708239"] = {
                Name = "Fat-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_03",
                ComponentHash = "3725708239",
                IsDefault = false
            },
            ["3726614828"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02",
                ComponentHash = "3726614828",
                IsDefault = false
            },
            ["3750812792"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_06",
                ComponentHash = "3750812792",
                IsDefault = false
            },
            ["3879097257"] = {
                Name = "Default Barrel",
                Description = "Stock barrel attachment.",
                ComponentModelName = "COMPONENT_AT_SC_BARREL_01",
                ComponentHash = "3879097257",
                IsDefault = true
            },
            ["3968886988"] = {
                Name = "Precision Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_04",
                ComponentHash = "3968886988",
                IsDefault = false
            },
            ["3999758885"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_MK2_CAMO_05",
                ComponentHash = "3999758885",
                IsDefault = false
            },
            ["4185880635"] = {
                Name = "Heavy Barrel",
                Description = "Increases damage dealt to long-range targets.",
                ComponentModelName = "COMPONENT_AT_SC_BARREL_02",
                ComponentHash = "4185880635",
                IsDefault = false
            },
        },
    }
}

--[[ Pool Cue ]]
WEAPONS["-1810795771"] = {
    Name = "Pool Cue",
    Description = "Ah, there's no sound as satisfying as the crack of a perfect break, especially when it's the other guy's spine. Part of Bikers.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_POOLCUE",
    Hash = "-1810795771",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Double-Action Revolver ]]
WEAPONS["-1746263880"] = {
    Name = "Double-Action Revolver",
    Description = "Because sometimes revenge is a dish best served six times, in quick succession, right between the eyes. Part of The Doomsday Heist.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_DOUBLEACTION",
    Hash = "-1746263880",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1328622785"] = {
                Name = "Default Clip",
                Description = "Standard ammo capacity.",
                ComponentModelName = "COMPONENT_DOUBLEACTION_CLIP_01",
                ComponentHash = "1328622785",
                IsDefault = true
            },
        },
    }
}

--[[ Pistol .50 ]]
WEAPONS["-1716589765"] = {
    Name = "Pistol .50",
    Description = "High-impact pistol that delivers immense power but with extremely strong recoil. Holds 9 rounds in magazine.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_PISTOL50",
    Hash = "-1716589765",
    WeaponStats = {
        DefaultClipSize = 9,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["580369945"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Pistol .50.",
                ComponentModelName = "COMPONENT_PISTOL50_CLIP_01",
                ComponentHash = "580369945",
                IsDefault = true
            },
            ["899381934"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH",
                ComponentHash = "899381934",
                IsDefault = false
            },
            ["2008591151"] = {
                Name = "Platinum Pearl Deluxe Finish",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL50_VARMOD_LUXE",
                ComponentHash = "2008591151",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["3654528146"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Pistol .50.",
                ComponentModelName = "COMPONENT_PISTOL50_CLIP_02",
                ComponentHash = "3654528146",
                IsDefault = false
            },
        },
    }
}

--[[ Baseball Bat ]]
WEAPONS["-1786099057"] = {
    Name = "Baseball Bat",
    Description = "Aluminum baseball bat with leather grip. Lightweight yet powerful for all you big hitters out there.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_BAT",
    Hash = "-1786099057",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ MG ]]
WEAPONS["-1786099057"] = {
    Name = "MG",
    Description = "General purpose machine gun that combines rugged design with dependable performance. Long range penetrative power. Very effective against large groups.",
    Category = "GROUP_MG",
    AmmoType = "AMMO_MG",
    ModelName = "WEAPON_MG",
    Hash = "-1786099057",
    WeaponStats = {
        DefaultClipSize = 54,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1006677997"] = {
                Name = "Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL_02",
                ComponentHash = "1006677997",
                IsDefault = false
            },
            ["2182449991"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for MG.",
                ComponentModelName = "COMPONENT_MG_CLIP_02",
                ComponentHash = "2182449991",
                IsDefault = false
            },
            ["3604658878"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_MG_VARMOD_LOWRIDER",
                ComponentHash = "3604658878",
                IsDefault = false
            },
            ["4097109892"] = {
                Name = "Default Clip",
                Description = "Standard capacity for MG.",
                ComponentModelName = "COMPONENT_MG_CLIP_01",
                ComponentHash = "4097109892",
                IsDefault = true
            },
        },
    }
}

--[[ Military Rifle ]]
WEAPONS["-1658906650"] = {
    Name = "Military Rifle",
    Description = "This immensely powerful assault rifle was designed for highly qualified, exceptionally skilled soldiers. Yes, you can buy it.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_MILITARYRIFLE",
    Hash = "-1658906650",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["759617595"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_MILITARYRIFLE_CLIP_01",
                ComponentHash = "759617595",
                IsDefault = true
            },
            ["1749732930"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_MILITARYRIFLE_CLIP_02",
                ComponentHash = "1749732930",
                IsDefault = false
            },
            ["1803744149"] = {
                Name = "Iron Sights",
                Description = "Default rail-mounted iron sights.",
                ComponentModelName = "COMPONENT_MILITARYRIFLE_SIGHT_01",
                ComponentHash = "1803744149",
                IsDefault = true
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2855028148"] = {
                Name = "Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL",
                ComponentHash = "2855028148",
                IsDefault = false
            },
        },
    }
}

--[[ BZ Gas ]]
WEAPONS["-1600701090"] = {
    Name = "BZ Gas",
    Description = "",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_BZGAS",
    ModelName = "WEAPON_BZGAS",
    Hash = "-1600701090",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Bullpup Shotgun ]]
WEAPONS["-1654528753"] = {
    Name = "Bullpup Shotgun",
    Description = "More than makes up for its slow, pump-action rate of fire with its range and spread.  Decimates anything in its projectile path.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_BULLPUPSHOTGUN",
    Hash = "-1654528753",
    WeaponStats = {
        DefaultClipSize = 14,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["3377353998"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_BULLPUPSHOTGUN_CLIP_01",
                ComponentHash = "3377353998",
                IsDefault = true
            },
        },
    }
}

--[[ Unarmed ]]
WEAPONS["-1569615261"] = {
    Name = "Unarmed",
    Description = "",
    Category = "GROUP_UNARMED",
    AmmoType = "undefined",
    ModelName = "WEAPON_UNARMED",
    Hash = "-1569615261",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Grenade Launcher ]]
WEAPONS["-1568386805"] = {
    Name = "Grenade Launcher",
    Description = "A compact, lightweight grenade launcher with semi-automatic functionality. Holds up to 10 rounds.",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_GRENADELAUNCHER",
    ModelName = "WEAPON_GRENADELAUNCHER",
    Hash = "-1568386805",
    WeaponStats = {
        DefaultClipSize = 10,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["296639639"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_GRENADELAUNCHER_CLIP_01",
                ComponentHash = "296639639",
                IsDefault = true
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2855028148"] = {
                Name = "Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL",
                ComponentHash = "2855028148",
                IsDefault = false
            },
        },
    }
}

--[[ Knife ]]
WEAPONS["-1716189206"] = {
    Name = "Knife",
    Description = "This carbon steel 7\" bladed knife is dual edged with a serrated spine to provide improved stabbing and thrusting capabilities.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_KNIFE",
    Hash = "-1716189206",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Musket ]]
WEAPONS["-1466123874"] = {
    Name = "Musket",
    Description = "Armed with nothing but muskets and a superiority complex, the Brits took over half the world. Own the gun that built an empire. Part of the Independence Day Special.",
    Category = "GROUP_SNIPER",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_MUSKET",
    Hash = "-1466123874",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1322387263"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Musket.",
                ComponentModelName = "COMPONENT_MUSKET_CLIP_01",
                ComponentHash = "1322387263",
                IsDefault = true
            },
        },
    }
}

--[[ Advanced Rifle ]]
WEAPONS["-1357824103"] = {
    Name = "Advanced Rifle",
    Description = "The most lightweight and compact of all assault rifles, without compromising accuracy and rate of fire.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_ADVANCEDRIFLE",
    Hash = "-1357824103",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["930927479"] = {
                Name = "Gilded Gun Metal Finish",
                Description = "",
                ComponentModelName = "COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE",
                ComponentHash = "930927479",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2395064697"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Assault Rifle.",
                ComponentModelName = "COMPONENT_ADVANCEDRIFLE_CLIP_02",
                ComponentHash = "2395064697",
                IsDefault = false
            },
            ["2855028148"] = {
                Name = "Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL",
                ComponentHash = "2855028148",
                IsDefault = false
            },
            ["4203716879"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Assault Rifle.",
                ComponentModelName = "COMPONENT_ADVANCEDRIFLE_CLIP_01",
                ComponentHash = "4203716879",
                IsDefault = true
            },
        },
    }
}

--[[ Up-n-Atomizer ]]
WEAPONS["-1355376991"] = {
    Name = "Up-n-Atomizer",
    Description = "Republican Space Ranger Special, fresh from the galactic war on socialism: no ammo, no mag, just one brutal energy pulse after another.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_RAYPISTOL",
    ModelName = "WEAPON_RAYPISTOL",
    Hash = "-1355376991",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["3621517063"] = {
                Name = "Festive tint",
                Description = "The Festive tint for the Up-n-Atomizer.",
                ComponentModelName = "COMPONENT_RAYPISTOL_VARMOD_XMAS18",
                ComponentHash = "3621517063",
                IsDefault = false
            },
        },
    }
}

--[[ Widowmaker ]]
WEAPONS["-1238556825"] = {
    Name = "Widowmaker",
    Description = "Republican Space Ranger Special. GO AHEAD, SAY I'M COMPENSATING FOR SOMETHING. I DARE YOU.",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_MINIGUN",
    ModelName = "WEAPON_RAYMINIGUN",
    Hash = "-1238556825",
    WeaponStats = {
        DefaultClipSize = 15000,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["3370020614"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_MINIGUN_CLIP_01",
                ComponentHash = "3370020614",
                IsDefault = true
            },
        },
    }
}

--[[ RPG ]]
WEAPONS["-1312131151"] = {
    Name = "RPG",
    Description = "A portable, shoulder-launched, anti-tank weapon that fires explosive warheads. Very effective for taking down vehicles or large groups of assailants.",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_RPG",
    ModelName = "WEAPON_RPG",
    Hash = "-1312131151",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1319465907"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_RPG_CLIP_01",
                ComponentHash = "1319465907",
                IsDefault = true
            },
        },
    }
}

--[[ Hazardous Jerry Can ]]
WEAPONS["-1168940174"] = {
    Name = "Hazardous Jerry Can",
    Description = "",
    Category = "GROUP_PETROLCAN",
    AmmoType = "AMMO_HAZARDCAN",
    ModelName = "WEAPON_HAZARDCAN",
    Hash = "-1168940174",
    WeaponStats = {
        DefaultClipSize = 4500,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Pipe Bomb ]]
WEAPONS["-1169823560"] = {
    Name = "Pipe Bomb",
    Description = "Remember, it doesn't count as an IED when you buy it in a store and use it in a first world country. Part of Bikers.",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_PIPEBOMB",
    ModelName = "WEAPON_PIPEBOMB",
    Hash = "-1169823560",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Mini SMG ]]
WEAPONS["-1121678507"] = {
    Name = "Mini SMG",
    Description = "Increasingly popular since the marketing team looked beyond spec ops units and started caring about the little guys in low income areas. Part of Bikers.",
    Category = "GROUP_SMG",
    AmmoType = "AMMO_SMG",
    ModelName = "WEAPON_MINISMG",
    Hash = "-1121678507",
    WeaponStats = {
        DefaultClipSize = 20,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["2227745491"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Mini SMG.",
                ComponentModelName = "COMPONENT_MINISMG_CLIP_01",
                ComponentHash = "2227745491",
                IsDefault = true
            },
            ["2474561719"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Mini SMG.",
                ComponentModelName = "COMPONENT_MINISMG_CLIP_02",
                ComponentHash = "2474561719",
                IsDefault = false
            },
        },
    }
}

--[[ SNS Pistol ]]
WEAPONS["-1076751822"] = {
    Name = "SNS Pistol",
    Description = "Like condoms or hairspray, this fits in your pocket for a night out in a Vinewood club. It's half as accurate as a champagne cork but twice as deadly. Part of the Beach Bum Pack.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_SNSPISTOL",
    Hash = "-1076751822",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["2063610803"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for SNS Pistol.",
                ComponentModelName = "COMPONENT_SNSPISTOL_CLIP_02",
                ComponentHash = "2063610803",
                IsDefault = false
            },
            ["2150886575"] = {
                Name = "Etched Wood Grip Finish",
                Description = "",
                ComponentModelName = "COMPONENT_SNSPISTOL_VARMOD_LOWRIDER",
                ComponentHash = "2150886575",
                IsDefault = false
            },
            ["4169150169"] = {
                Name = "Default Clip",
                Description = "Standard capacity for SNS Pistol.",
                ComponentModelName = "COMPONENT_SNSPISTOL_CLIP_01",
                ComponentHash = "4169150169",
                IsDefault = true
            },
        },
    }
}

--[[ Pistol Mk II ]]
WEAPONS["-1075685676"] = {
    Name = "Pistol Mk II",
    Description = "Balance, simplicity, precision: nothing keeps the peace like an extended barrel in the other guy's mouth.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_PISTOL_MK2",
    Hash = "-1075685676",
    WeaponStats = {
        DefaultClipSize = 12,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["24902297"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_04",
                ComponentHash = "24902297",
                IsDefault = false
            },
            ["368550800"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_02",
                ComponentHash = "368550800",
                IsDefault = false
            },
            ["438243936"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_02_SLIDE",
                ComponentHash = "438243936",
                IsDefault = false
            },
            ["568543123"] = {
                Name = "Compensator",
                Description = "Reduces recoil for rapid fire.",
                ComponentModelName = "COMPONENT_AT_PI_COMP",
                ComponentHash = "568543123",
                IsDefault = false
            },
            ["634039983"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun. Standard capacity.",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CLIP_TRACER",
                ComponentHash = "634039983",
                IsDefault = false
            },
            ["733837882"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY",
                ComponentHash = "733837882",
                IsDefault = false
            },
            ["740920107"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_04_SLIDE",
                ComponentHash = "740920107",
                IsDefault = false
            },
            ["1135718771"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_10_SLIDE",
                ComponentHash = "1135718771",
                IsDefault = false
            },
            ["1140676955"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH_02",
                ComponentHash = "1140676955",
                IsDefault = false
            },
            ["1253942266"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_IND_01_SLIDE",
                ComponentHash = "1253942266",
                IsDefault = false
            },
            ["1301287696"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_08",
                ComponentHash = "1301287696",
                IsDefault = false
            },
            ["1329061674"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CLIP_FMJ",
                ComponentHash = "1329061674",
                IsDefault = false
            },
            ["1550611612"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO",
                ComponentHash = "1550611612",
                IsDefault = false
            },
            ["1591132456"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CLIP_02",
                ComponentHash = "1591132456",
                IsDefault = false
            },
            ["1597093459"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_09",
                ComponentHash = "1597093459",
                IsDefault = false
            },
            ["1709866683"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP_02",
                ComponentHash = "1709866683",
                IsDefault = false
            },
            ["1769871776"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_10",
                ComponentHash = "1769871776",
                IsDefault = false
            },
            ["1809261196"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_06_SLIDE",
                ComponentHash = "1809261196",
                IsDefault = false
            },
            ["2248057097"] = {
                Name = "Hollow Point Rounds",
                Description = "Increased damage to targets without Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT",
                ComponentHash = "2248057097",
                IsDefault = false
            },
            ["2396306288"] = {
                Name = "Mounted Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_PI_RAIL",
                ComponentHash = "2396306288",
                IsDefault = false
            },
            ["2467084625"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_IND_01",
                ComponentHash = "2467084625",
                IsDefault = false
            },
            ["2499030370"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CLIP_01",
                ComponentHash = "2499030370",
                IsDefault = true
            },
            ["2525897947"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_03",
                ComponentHash = "2525897947",
                IsDefault = false
            },
            ["2648428428"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_07_SLIDE",
                ComponentHash = "2648428428",
                IsDefault = false
            },
            ["3004802348"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_08_SLIDE",
                ComponentHash = "3004802348",
                IsDefault = false
            },
            ["3036451504"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_SLIDE",
                ComponentHash = "3036451504",
                IsDefault = false
            },
            ["3141791350"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_07",
                ComponentHash = "3141791350",
                IsDefault = false
            },
            ["3330502162"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_09_SLIDE",
                ComponentHash = "3330502162",
                IsDefault = false
            },
            ["3710005734"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_06",
                ComponentHash = "3710005734",
                IsDefault = false
            },
            ["3753350949"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_05_SLIDE",
                ComponentHash = "3753350949",
                IsDefault = false
            },
            ["3839888240"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_03_SLIDE",
                ComponentHash = "3839888240",
                IsDefault = false
            },
            ["4066925682"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_PISTOL_MK2_CAMO_05",
                ComponentHash = "4066925682",
                IsDefault = false
            },
        },
    }
}

--[[ Assault Rifle ]]
WEAPONS["-1074790547"] = {
    Name = "Assault Rifle",
    Description = "This standard assault rifle boasts a large capacity magazine and long distance accuracy.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_ASSAULTRIFLE",
    Hash = "-1074790547",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["1319990579"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE",
                ComponentHash = "1319990579",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2637152041"] = {
                Name = "Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO",
                ComponentHash = "2637152041",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["2971750299"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Assault Rifle.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_CLIP_02",
                ComponentHash = "2971750299",
                IsDefault = false
            },
            ["3193891350"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Assault Rifle.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_CLIP_01",
                ComponentHash = "3193891350",
                IsDefault = true
            },
            ["3689981245"] = {
                Name = "Drum Magazine",
                Description = "Expanded capacity and slower reload.",
                ComponentModelName = "COMPONENT_ASSAULTRIFLE_CLIP_03",
                ComponentHash = "3689981245",
                IsDefault = false
            },
        },
    }
}

--[[ Special Carbine ]]
WEAPONS["-1063057011"] = {
    Name = "Special Carbine",
    Description = "Combining accuracy, maneuverability and low recoil, this is an extremely versatile assault rifle for any combat situation. Part of The Business Update.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_SPECIALCARBINE",
    Hash = "-1063057011",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["1801039530"] = {
                Name = "Drum Magazine",
                Description = "Expanded capacity and slower reload.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_CLIP_03",
                ComponentHash = "1801039530",
                IsDefault = false
            },
            ["1929467122"] = {
                Name = "Etched Gun Metal Finish",
                Description = "",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER",
                ComponentHash = "1929467122",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2089537806"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Special Carbine.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_CLIP_02",
                ComponentHash = "2089537806",
                IsDefault = false
            },
            ["2698550338"] = {
                Name = "Scope",
                Description = "Long-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM",
                ComponentHash = "2698550338",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["3334989185"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Special Carbine.",
                ComponentModelName = "COMPONENT_SPECIALCARBINE_CLIP_01",
                ComponentHash = "3334989185",
                IsDefault = true
            },
        },
    }
}

--[[ Proximity Mine ]]
WEAPONS["-1420407917"] = {
    Name = "Proximity Mine",
    Description = "Leave a present for your friends with these motion sensor landmines. Short delay after activation. Part of the Festive Surprise.",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_PROXMINE",
    ModelName = "WEAPON_PROXMINE",
    Hash = "-1420407917",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Heavy Revolver ]]
WEAPONS["-1045183535"] = {
    Name = "Heavy Revolver",
    Description = "A handgun with enough stopping power to drop a crazed rhino, and heavy enough to beat it to death if you're out of ammo. Part of Executives and Other Criminals.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_REVOLVER",
    Hash = "-1045183535",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["384708672"] = {
                Name = "VIP Variant",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_VARMOD_BOSS",
                ComponentHash = "384708672",
                IsDefault = false
            },
            ["2492708877"] = {
                Name = "Bodyguard Variant",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_VARMOD_GOON",
                ComponentHash = "2492708877",
                IsDefault = false
            },
            ["3917905123"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_CLIP_01",
                ComponentHash = "3917905123",
                IsDefault = true
            },
        },
    }
}

--[[ Marksman Rifle ]]
WEAPONS["-952879014"] = {
    Name = "Marksman Rifle",
    Description = "Whether you're up close or a disconcertingly long way away, this weapon will get the job done. A multi-range tool for tools. Part of the Last Team Standing Update.",
    Category = "GROUP_SNIPER",
    AmmoType = "AMMO_SNIPER",
    ModelName = "WEAPON_MARKSMANRIFLE",
    Hash = "-952879014",
    WeaponStats = {
        DefaultClipSize = 8,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["371102273"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_VARMOD_LUXE",
                ComponentHash = "371102273",
                IsDefault = false
            },
            ["471997210"] = {
                Name = "Scope",
                Description = "Long-range fixed zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM",
                ComponentHash = "471997210",
                IsDefault = true
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["3439143621"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Marksman Rifle.",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_CLIP_02",
                ComponentHash = "3439143621",
                IsDefault = false
            },
            ["3627761985"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Marksman Rifle.",
                ComponentModelName = "COMPONENT_MARKSMANRIFLE_CLIP_01",
                ComponentHash = "3627761985",
                IsDefault = true
            },
        },
    }
}

--[[ Heavy Revolver Mk II ]]
WEAPONS["-879347409"] = {
    Name = "Heavy Revolver Mk II",
    Description = "If you can lift it, this is the closest you'll get to shooting someone with a freight train.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_REVOLVER_MK2",
    Hash = "-879347409",
    WeaponStats = {
        DefaultClipSize = 6,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["11918884"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_02",
                ComponentHash = "11918884",
                IsDefault = false
            },
            ["15712037"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which set targets on fire when shot.",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY",
                ComponentHash = "15712037",
                IsDefault = false
            },
            ["77277509"] = {
                Name = "Small Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO_MK2",
                ComponentHash = "77277509",
                IsDefault = false
            },
            ["176157112"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_03",
                ComponentHash = "176157112",
                IsDefault = false
            },
            ["231258687"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass.",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CLIP_FMJ",
                ComponentHash = "231258687",
                IsDefault = false
            },
            ["284438159"] = {
                Name = "Hollow Point Rounds",
                Description = "Increased damage to targets without Body Armor.",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT",
                ComponentHash = "284438159",
                IsDefault = false
            },
            ["288456487"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_05",
                ComponentHash = "288456487",
                IsDefault = false
            },
            ["398658626"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_06",
                ComponentHash = "398658626",
                IsDefault = false
            },
            ["552442715"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_10",
                ComponentHash = "552442715",
                IsDefault = false
            },
            ["628697006"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_07",
                ComponentHash = "628697006",
                IsDefault = false
            },
            ["654802123"] = {
                Name = "Compensator",
                Description = "Reduces recoil for rapid fire.",
                ComponentModelName = "COMPONENT_AT_PI_COMP_03",
                ComponentHash = "654802123",
                IsDefault = false
            },
            ["899381934"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH",
                ComponentHash = "899381934",
                IsDefault = false
            },
            ["925911836"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_08",
                ComponentHash = "925911836",
                IsDefault = false
            },
            ["1108334355"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS",
                ComponentHash = "1108334355",
                IsDefault = false
            },
            ["1222307441"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_09",
                ComponentHash = "1222307441",
                IsDefault = false
            },
            ["3122911422"] = {
                Name = "Default Rounds",
                Description = "Standard revolver ammunition.",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CLIP_01",
                ComponentHash = "3122911422",
                IsDefault = true
            },
            ["3225415071"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO",
                ComponentHash = "3225415071",
                IsDefault = false
            },
            ["3336103030"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun.",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CLIP_TRACER",
                ComponentHash = "3336103030",
                IsDefault = false
            },
            ["3646023783"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_IND_01",
                ComponentHash = "3646023783",
                IsDefault = false
            },
            ["4074914441"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_REVOLVER_MK2_CAMO_04",
                ComponentHash = "4074914441",
                IsDefault = false
            },
        },
    }
}

--[[ Heavy Rifle ]]
WEAPONS["-947031628"] = {
    Name = "Heavy Rifle",
    Description = "The no-holds-barred 30-round answer to that eternal question, how do I get this guy off my back?",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_HEAVYRIFLE",
    Hash = "-947031628",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["1525977990"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Heavy Rifle.",
                ComponentModelName = "COMPONENT_HEAVYRIFLE_CLIP_01",
                ComponentHash = "1525977990",
                IsDefault = true
            },
            ["1824470811"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Heavy Rifle.",
                ComponentModelName = "COMPONENT_HEAVYRIFLE_CLIP_02",
                ComponentHash = "1824470811",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2698550338"] = {
                Name = "Scope",
                Description = "Long-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM",
                ComponentHash = "2698550338",
                IsDefault = false
            },
            ["3017917522"] = {
                Name = "Iron Sights",
                Description = "Default rail-mounted iron sights.",
                ComponentModelName = "COMPONENT_HEAVYRIFLE_SIGHT_01",
                ComponentHash = "3017917522",
                IsDefault = true
            },
            ["3969903833"] = {
                Name = "Families Finish",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYRIFLE_CAMO1",
                ComponentHash = "3969903833",
                IsDefault = false
            },
        },
    }
}

--[[ Knuckle Duster ]]
WEAPONS["-656458692"] = {
    Name = "Knuckle Duster",
    Description = "Perfect for knocking out gold teeth, or as a gift to the trophy partner who has everything. Part of The Ill-Gotten Gains Update Part 2.",
    Category = "GROUP_UNARMED",
    AmmoType = "undefined",
    ModelName = "WEAPON_KNUCKLE",
    Hash = "-656458692",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["146278587"] = {
                Name = "The Player",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_PLAYER",
                ComponentHash = "146278587",
                IsDefault = false
            },
            ["1062111910"] = {
                Name = "The Lover",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_LOVE",
                ComponentHash = "1062111910",
                IsDefault = false
            },
            ["1351683121"] = {
                Name = "The Hustler",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_DOLLAR",
                ComponentHash = "1351683121",
                IsDefault = false
            },
            ["2062808965"] = {
                Name = "The Vagos",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_VAGOS",
                ComponentHash = "2062808965",
                IsDefault = false
            },
            ["2112683568"] = {
                Name = "The Hater",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_HATE",
                ComponentHash = "2112683568",
                IsDefault = false
            },
            ["2539772380"] = {
                Name = "The Rock",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_DIAMOND",
                ComponentHash = "2539772380",
                IsDefault = false
            },
            ["3323197061"] = {
                Name = "The Pimp",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_PIMP",
                ComponentHash = "3323197061",
                IsDefault = false
            },
            ["3800804335"] = {
                Name = "The King",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_KING",
                ComponentHash = "3800804335",
                IsDefault = false
            },
            ["4007263587"] = {
                Name = "The Ballas",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_BALLAS",
                ComponentHash = "4007263587",
                IsDefault = false
            },
            ["4081463091"] = {
                Name = "Base Model",
                Description = "",
                ComponentModelName = "COMPONENT_KNUCKLE_VARMOD_BASE",
                ComponentHash = "4081463091",
                IsDefault = false
            },
        },
    }
}

--[[ Battle Axe ]]
WEAPONS["-853065399"] = {
    Name = "Battle Axe",
    Description = "If it's good enough for medieval foot soldiers, modern border guards and pushy soccer moms, it's good enough for you. Part of Bikers.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_BATTLEAXE",
    Hash = "-853065399",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Heavy Pistol ]]
WEAPONS["-771403250"] = {
    Name = "Heavy Pistol",
    Description = "The heavyweight champion of the magazine fed, semi-automatic handgun world. Delivers a serious forearm workout every time. Part of The Business Update.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_HEAVYPISTOL",
    Hash = "-771403250",
    WeaponStats = {
        DefaultClipSize = 18,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["222992026"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Heavy Pistol.",
                ComponentModelName = "COMPONENT_HEAVYPISTOL_CLIP_01",
                ComponentHash = "222992026",
                IsDefault = true
            },
            ["899381934"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_PI_FLSH",
                ComponentHash = "899381934",
                IsDefault = false
            },
            ["1694090795"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Heavy Pistol.",
                ComponentModelName = "COMPONENT_HEAVYPISTOL_CLIP_02",
                ComponentHash = "1694090795",
                IsDefault = false
            },
            ["2053798779"] = {
                Name = "Etched Wood Grip Finish",
                Description = "",
                ComponentModelName = "COMPONENT_HEAVYPISTOL_VARMOD_LUXE",
                ComponentHash = "2053798779",
                IsDefault = false
            },
            ["3271853210"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP",
                ComponentHash = "3271853210",
                IsDefault = false
            },
        },
    }
}

--[[ Combat MG Mk II ]]
WEAPONS["-608341376"] = {
    Name = "Combat MG Mk II",
    Description = "You can never have too much of a good thing: after all, if the first shot counts, then the next hundred or so must count for double.",
    Category = "GROUP_MG",
    AmmoType = "AMMO_MG",
    ModelName = "WEAPON_COMBATMG_MK2",
    Hash = "-608341376",
    WeaponStats = {
        DefaultClipSize = 100,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["42685294"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_10",
                ComponentHash = "42685294",
                IsDefault = false
            },
            ["48731514"] = {
                Name = "Heavy Duty Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_05",
                ComponentHash = "48731514",
                IsDefault = false
            },
            ["235171324"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_09",
                ComponentHash = "235171324",
                IsDefault = false
            },
            ["400507625"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CLIP_02",
                ComponentHash = "400507625",
                IsDefault = false
            },
            ["457967755"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_08",
                ComponentHash = "457967755",
                IsDefault = false
            },
            ["696788003"] = {
                Name = "Armor Piercing Rounds",
                Description = "Increased penetration of Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING",
                ComponentHash = "696788003",
                IsDefault = false
            },
            ["880736428"] = {
                Name = "Slanted Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_06",
                ComponentHash = "880736428",
                IsDefault = false
            },
            ["1060929921"] = {
                Name = "Medium Scope",
                Description = "Medium-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_SMALL_MK2",
                ComponentHash = "1060929921",
                IsDefault = false
            },
            ["1108334355"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS",
                ComponentHash = "1108334355",
                IsDefault = false
            },
            ["1219453777"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_05",
                ComponentHash = "1219453777",
                IsDefault = false
            },
            ["1227564412"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CLIP_01",
                ComponentHash = "1227564412",
                IsDefault = true
            },
            ["1249283253"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO",
                ComponentHash = "1249283253",
                IsDefault = false
            },
            ["1303784126"] = {
                Name = "Split-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_07",
                ComponentHash = "1303784126",
                IsDefault = false
            },
            ["1475288264"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CLIP_FMJ",
                ComponentHash = "1475288264",
                IsDefault = false
            },
            ["1980349969"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_04",
                ComponentHash = "1980349969",
                IsDefault = false
            },
            ["2220186280"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_07",
                ComponentHash = "2220186280",
                IsDefault = false
            },
            ["2441508106"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_06",
                ComponentHash = "2441508106",
                IsDefault = false
            },
            ["2640679034"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP_02",
                ComponentHash = "2640679034",
                IsDefault = false
            },
            ["3051509595"] = {
                Name = "Heavy Barrel",
                Description = "Increases damage dealt to long-range targets.",
                ComponentModelName = "COMPONENT_AT_MG_BARREL_02",
                ComponentHash = "3051509595",
                IsDefault = false
            },
            ["3113485012"] = {
                Name = "Flat Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_01",
                ComponentHash = "3113485012",
                IsDefault = false
            },
            ["3197423398"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_03",
                ComponentHash = "3197423398",
                IsDefault = false
            },
            ["3274096058"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY",
                ComponentHash = "3274096058",
                IsDefault = false
            },
            ["3276730932"] = {
                Name = "Default Barrel",
                Description = "Stock barrel attachment.",
                ComponentModelName = "COMPONENT_AT_MG_BARREL_01",
                ComponentHash = "3276730932",
                IsDefault = true
            },
            ["3328927042"] = {
                Name = "Large Scope",
                Description = "Extended-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                ComponentHash = "3328927042",
                IsDefault = false
            },
            ["3362234491"] = {
                Name = "Tactical Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_02",
                ComponentHash = "3362234491",
                IsDefault = false
            },
            ["3437259709"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_02",
                ComponentHash = "3437259709",
                IsDefault = false
            },
            ["3607349581"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CAMO_IND_01",
                ComponentHash = "3607349581",
                IsDefault = false
            },
            ["3725708239"] = {
                Name = "Fat-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_03",
                ComponentHash = "3725708239",
                IsDefault = false
            },
            ["3968886988"] = {
                Name = "Precision Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_04",
                ComponentHash = "3968886988",
                IsDefault = false
            },
            ["4133787461"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun. Standard capacity.",
                ComponentModelName = "COMPONENT_COMBATMG_MK2_CLIP_TRACER",
                ComponentHash = "4133787461",
                IsDefault = false
            },
        },
    }
}

--[[ Compact EMP Launcher ]]
WEAPONS["-618237638"] = {
    Name = "Compact EMP Launcher",
    Description = "Ever seen a confetti cannon? The Compact EMP Launcher is just like that, but instead of paper and happiness, it's an electromagnetic pulse, short circuits and shattered dreams.",
    Category = "GROUP_HEAVY",
    AmmoType = "AMMO_EMPLAUNCHER",
    ModelName = "WEAPON_EMPLAUNCHER",
    Hash = "-618237638",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["3532609777"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_EMPLAUNCHER_CLIP_01",
                ComponentHash = "3532609777",
                IsDefault = true
            },
        },
    }
}

--[[ Machine Pistol ]]
WEAPONS["-619010992"] = {
    Name = "Machine Pistol",
    Description = "This fully automatic is the snare drum to your twin-engine V8 bass: no drive-by sounds quite right without it. Part of Lowriders.",
    Category = "GROUP_SMG",
    AmmoType = "AMMO_SMG",
    ModelName = "WEAPON_MACHINEPISTOL",
    Hash = "-619010992",
    WeaponStats = {
        DefaultClipSize = 12,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1198425599"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Machine Pistol.",
                ComponentModelName = "COMPONENT_MACHINEPISTOL_CLIP_01",
                ComponentHash = "1198425599",
                IsDefault = true
            },
            ["2850671348"] = {
                Name = "Drum Magazine",
                Description = "Expanded capacity and slower reload.",
                ComponentModelName = "COMPONENT_MACHINEPISTOL_CLIP_03",
                ComponentHash = "2850671348",
                IsDefault = false
            },
            ["3106695545"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Machine Pistol.",
                ComponentModelName = "COMPONENT_MACHINEPISTOL_CLIP_02",
                ComponentHash = "3106695545",
                IsDefault = false
            },
            ["3271853210"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_PI_SUPP",
                ComponentHash = "3271853210",
                IsDefault = false
            },
        },
    }
}

--[[ Switchblade ]]
WEAPONS["-538741184"] = {
    Name = "Switchblade",
    Description = "From your pocket to hilt-deep in the other guy's ribs in under a second: folding knives will never go out of style. Part of Executives and Other Criminals.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_SWITCHBLADE",
    Hash = "-538741184",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["1530822070"] = {
                Name = "VIP Variant",
                Description = "",
                ComponentModelName = "COMPONENT_SWITCHBLADE_VARMOD_VAR1",
                ComponentHash = "1530822070",
                IsDefault = false
            },
            ["2436343040"] = {
                Name = "Default Handle",
                Description = "",
                ComponentModelName = "COMPONENT_SWITCHBLADE_VARMOD_BASE",
                ComponentHash = "2436343040",
                IsDefault = false
            },
            ["3885209186"] = {
                Name = "Bodyguard Variant",
                Description = "",
                ComponentModelName = "COMPONENT_SWITCHBLADE_VARMOD_VAR2",
                ComponentHash = "3885209186",
                IsDefault = false
            },
        },
    }
}

--[[ Assault Shotgun ]]
WEAPONS["-494615257"] = {
    Name = "Assault Shotgun",
    Description = "Fully automatic shotgun with 8 round magazine and high rate of fire.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_ASSAULTSHOTGUN",
    Hash = "-494615257",
    WeaponStats = {
        DefaultClipSize = 8,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["202788691"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP",
                ComponentHash = "202788691",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2260565874"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for Assault Shotgun.",
                ComponentModelName = "COMPONENT_ASSAULTSHOTGUN_CLIP_02",
                ComponentHash = "2260565874",
                IsDefault = false
            },
            ["2498239431"] = {
                Name = "Default Clip",
                Description = "Standard capacity for Assault Shotgun.",
                ComponentModelName = "COMPONENT_ASSAULTSHOTGUN_CLIP_01",
                ComponentHash = "2498239431",
                IsDefault = true
            },
        },
    }
}

--[[ Double Barrel Shotgun ]]
WEAPONS["-275439685"] = {
    Name = "Double Barrel Shotgun",
    Description = "Do one thing, do it well. Who needs a high rate of fire when your first shot turns the other guy into a fine mist? Part of Lowriders: Custom Classics.",
    Category = "GROUP_SHOTGUN",
    AmmoType = "AMMO_SHOTGUN",
    ModelName = "WEAPON_DBSHOTGUN",
    Hash = "-275439685",
    WeaponStats = {
        DefaultClipSize = 2,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["703231006"] = {
                Name = "",
                Description = "",
                ComponentModelName = "COMPONENT_DBSHOTGUN_CLIP_01",
                ComponentHash = "703231006",
                IsDefault = true
            },
        },
    }
}

--[[ Marksman Pistol ]]
WEAPONS["-598887786"] = {
    Name = "Marksman Pistol",
    Description = "Not for the risk averse. Make it count as you'll be reloading as much as you shoot. Part of The Ill-Gotten Gains Update Part 2.",
    Category = "GROUP_PISTOL",
    AmmoType = "AMMO_PISTOL",
    ModelName = "WEAPON_MARKSMANPISTOL",
    Hash = "-598887786",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["3416146413"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_MARKSMANPISTOL_CLIP_01",
                ComponentHash = "3416146413",
                IsDefault = true
            },
        },
    }
}

--[[ Assault SMG ]]
WEAPONS["-270015777"] = {
    Name = "Assault SMG",
    Description = "A high-capacity submachine gun that is both compact and lightweight. Holds up to 30 bullets in one magazine.",
    Category = "GROUP_SMG",
    AmmoType = "AMMO_SMG",
    ModelName = "WEAPON_ASSAULTSMG",
    Hash = "-270015777",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {
            ["663517359"] = {
                Name = "Yusuf Amir Luxury Finish",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER",
                ComponentHash = "663517359",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2366834608"] = {
                Name = "Default Clip",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTSMG_CLIP_01",
                ComponentHash = "2366834608",
                IsDefault = true
            },
            ["2637152041"] = {
                Name = "Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO",
                ComponentHash = "2637152041",
                IsDefault = false
            },
            ["2805810788"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP_02",
                ComponentHash = "2805810788",
                IsDefault = false
            },
            ["3141985303"] = {
                Name = "Extended Clip",
                Description = "",
                ComponentModelName = "COMPONENT_ASSAULTSMG_CLIP_02",
                ComponentHash = "3141985303",
                IsDefault = false
            },
        },
    }
}

--[[ Machete ]]
WEAPONS["-581044007"] = {
    Name = "Machete",
    Description = "America's West African arms trade isn't just about giving. Rediscover the simple life with this rusty cleaver. Part of Lowriders.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_MACHETE",
    Hash = "-581044007",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Bottle ]]
WEAPONS["-102323637"] = {
    Name = "Bottle",
    Description = "It's not clever and it's not pretty but, most of the time, neither is the guy coming at you with a knife. When all else fails, this gets the job done. Part of the Beach Bum Pack.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_BOTTLE",
    Hash = "-102323637",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Carbine Rifle Mk II ]]
WEAPONS["-86904375"] = {
    Name = "Carbine Rifle Mk II",
    Description = "This is bespoke, artisan firepower: you couldn't deliver a hail of bullets with more love and care if you inserted them by hand.",
    Category = "GROUP_RIFLE",
    AmmoType = "AMMO_RIFLE",
    ModelName = "WEAPON_CARBINERIFLE_MK2",
    Hash = "-86904375",
    WeaponStats = {
        DefaultClipSize = 30,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = true,
        Components = {
            ["48731514"] = {
                Name = "Heavy Duty Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_05",
                ComponentHash = "48731514",
                IsDefault = false
            },
            ["77277509"] = {
                Name = "Small Scope",
                Description = "Standard-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MACRO_MK2",
                ComponentHash = "77277509",
                IsDefault = false
            },
            ["391640422"] = {
                Name = "Tracer Rounds",
                Description = "Bullets with bright visible markers that match the tint of the gun. Standard capacity.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER",
                ComponentHash = "391640422",
                IsDefault = false
            },
            ["626875735"] = {
                Name = "Armor Piercing Rounds",
                Description = "Increased penetration of Body Armor. Reduced capacity.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING",
                ComponentHash = "626875735",
                IsDefault = false
            },
            ["792221348"] = {
                Name = "Woodland Camo",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_03",
                ComponentHash = "792221348",
                IsDefault = false
            },
            ["880736428"] = {
                Name = "Slanted Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_06",
                ComponentHash = "880736428",
                IsDefault = false
            },
            ["1025884839"] = {
                Name = "Incendiary Rounds",
                Description = "Bullets which include a chance to set targets on fire when shot. Reduced capacity.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY",
                ComponentHash = "1025884839",
                IsDefault = false
            },
            ["1080719624"] = {
                Name = "Brushstroke Camo",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_02",
                ComponentHash = "1080719624",
                IsDefault = false
            },
            ["1108334355"] = {
                Name = "Holographic Sight",
                Description = "Accurate sight for close quarters combat.",
                ComponentModelName = "COMPONENT_AT_SIGHTS",
                ComponentHash = "1108334355",
                IsDefault = false
            },
            ["1141059345"] = {
                Name = "Full Metal Jacket Rounds",
                Description = "Increased damage to vehicles. Also penetrates bullet resistant and bulletproof vehicle glass. Reduced capacity.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ",
                ComponentHash = "1141059345",
                IsDefault = false
            },
            ["1272803094"] = {
                Name = "Digital Camo",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO",
                ComponentHash = "1272803094",
                IsDefault = false
            },
            ["1283078430"] = {
                Name = "Default Clip",
                Description = "Standard capacity for regular ammo.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CLIP_01",
                ComponentHash = "1283078430",
                IsDefault = true
            },
            ["1303784126"] = {
                Name = "Split-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_07",
                ComponentHash = "1303784126",
                IsDefault = false
            },
            ["1574296533"] = {
                Name = "Extended Clip",
                Description = "Extended capacity for regular ammo.",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CLIP_02",
                ComponentHash = "1574296533",
                IsDefault = false
            },
            ["1796459838"] = {
                Name = "Boom!",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_10",
                ComponentHash = "1796459838",
                IsDefault = false
            },
            ["2076495324"] = {
                Name = "Flashlight",
                Description = "Aids low light target acquisition.",
                ComponentModelName = "COMPONENT_AT_AR_FLSH",
                ComponentHash = "2076495324",
                IsDefault = false
            },
            ["2201368575"] = {
                Name = "Default Barrel",
                Description = "Stock barrel attachment.",
                ComponentModelName = "COMPONENT_AT_CR_BARREL_01",
                ComponentHash = "2201368575",
                IsDefault = true
            },
            ["2205435306"] = {
                Name = "Suppressor",
                Description = "Reduces noise and muzzle flash.",
                ComponentModelName = "COMPONENT_AT_AR_SUPP",
                ComponentHash = "2205435306",
                IsDefault = false
            },
            ["2250671235"] = {
                Name = "Perseus",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_06",
                ComponentHash = "2250671235",
                IsDefault = false
            },
            ["2335983627"] = {
                Name = "Heavy Barrel",
                Description = "Increases damage dealt to long-range targets.",
                ComponentModelName = "COMPONENT_AT_CR_BARREL_02",
                ComponentHash = "2335983627",
                IsDefault = false
            },
            ["2559813981"] = {
                Name = "Geometric",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_09",
                ComponentHash = "2559813981",
                IsDefault = false
            },
            ["2640679034"] = {
                Name = "Grip",
                Description = "Improves weapon accuracy.",
                ComponentModelName = "COMPONENT_AT_AR_AFGRIP_02",
                ComponentHash = "2640679034",
                IsDefault = false
            },
            ["2866892280"] = {
                Name = "Zebra",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_08",
                ComponentHash = "2866892280",
                IsDefault = false
            },
            ["3113485012"] = {
                Name = "Flat Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_01",
                ComponentHash = "3113485012",
                IsDefault = false
            },
            ["3328927042"] = {
                Name = "Large Scope",
                Description = "Extended-range zoom functionality.",
                ComponentModelName = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                ComponentHash = "3328927042",
                IsDefault = false
            },
            ["3362234491"] = {
                Name = "Tactical Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_02",
                ComponentHash = "3362234491",
                IsDefault = false
            },
            ["3548192559"] = {
                Name = "Sessanta Nove",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_05",
                ComponentHash = "3548192559",
                IsDefault = false
            },
            ["3663056191"] = {
                Name = "Patriotic",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01",
                ComponentHash = "3663056191",
                IsDefault = false
            },
            ["3725708239"] = {
                Name = "Fat-End Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_03",
                ComponentHash = "3725708239",
                IsDefault = false
            },
            ["3842785869"] = {
                Name = "Skull",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_04",
                ComponentHash = "3842785869",
                IsDefault = false
            },
            ["3968886988"] = {
                Name = "Precision Muzzle Brake",
                Description = "Reduces recoil during rapid fire.",
                ComponentModelName = "COMPONENT_AT_MUZZLE_04",
                ComponentHash = "3968886988",
                IsDefault = false
            },
            ["4095795318"] = {
                Name = "Leopard",
                Description = "",
                ComponentModelName = "COMPONENT_CARBINERIFLE_MK2_CAMO_07",
                ComponentHash = "4095795318",
                IsDefault = false
            },
        },
    }
}

--[[ Hatchet ]]
WEAPONS["-102973651"] = {
    Name = "Hatchet",
    Description = "Make kindling... of your pals with this easy to wield, easy to hide hatchet. Exclusive content for returning players.",
    Category = "GROUP_MELEE",
    AmmoType = "undefined",
    ModelName = "WEAPON_HATCHET",
    Hash = "-102973651",
    WeaponStats = {
        DefaultClipSize = 0,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}

--[[ Tear Gas ]]
WEAPONS["-37975472"] = {
    Name = "Tear Gas",
    Description = "Tear gas grenade, particularly effective at incapacitating multiple assailants. Sustained exposure can be lethal.",
    Category = "GROUP_THROWN",
    AmmoType = "AMMO_SMOKEGRENADE",
    ModelName = "WEAPON_SMOKEGRENADE",
    Hash = "-37975472",
    WeaponStats = {
        DefaultClipSize = 1,
        MaxAmmo = 0,
        Damage = 5,
        RateOfFire = 20,
        Accuracy = 0,
        Range = 0
    },
    Addons = {
        isMK2 = false,
        Components = {},
    }
}
