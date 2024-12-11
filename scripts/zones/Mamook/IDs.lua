-----------------------------------
-- Area: Mamook
-----------------------------------
zones = zones or {}

zones[xi.zone.MAMOOK] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        NOTHING_HAPPENS               = 119,  -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7061, -- You can't fish here.
        LOGGING_IS_POSSIBLE_HERE      = 7546, -- Logging is possible here if you have <item>.
        PARTY_MEMBERS_HAVE_FALLEN     = 7903, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7910, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        IMPENDING_BATTLE              = 8067, -- You feel the rush of impending battle!
        NUMEROUS_STRANDS              = 8664, -- Numerous strands of hair are scattered all over...
        SICKLY_SWEET                  = 8666, -- A sickly sweet fragrance pervades the air...
        DRAWS_NEAR                    = 8688, -- Something draws near!
        COMMON_SENSE_SURVIVAL         = 9559, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        ZIZZY_ZILLAH         = GetFirstID('Zizzy_Zillah'),
        FIREDANCE_MAGMAAL_JA = GetFirstID('Firedance_Magmaal_Ja'),
        GULOOL_JA_JA         = GetFirstID('Gulool_Ja_Ja'),
        CHAMROSH             = GetFirstID('Chamrosh'),
        IRIRI_SAMARIRI       = GetFirstID('Iriri_Samariri'),
        POROGGO_CASANOVA     = GetFirstID('Poroggo_Casanova'),
        MIKILULU             = GetFirstID('Mikilulu'),
        MIKIRURU             = GetFirstID('Mikiruru'),
        NIKILULU             = GetFirstID('Nikilulu'),
        MIKILURU             = GetFirstID('Mikiluru'),
        MIKIRULU             = GetFirstID('Mikirulu'),
    },
    npc =
    {
        LOGGING = GetTableOfIDs('Logging_Point'),
    },
}

return zones[xi.zone.MAMOOK]
