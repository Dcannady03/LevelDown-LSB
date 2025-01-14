-----------------------------------
-- Area: Mamool_Ja_Training_Grounds
-----------------------------------
zones = zones or {}

zones[xi.zone.MAMOOL_JA_TRAINING_GROUNDS] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        PLAYER_OBTAINS_ITEM           = 7323, -- <name> obtains <item>!
        ASSAULT_START_OFFSET          = 7458, -- Max MP Down removed for <name>.
        TIME_TO_COMPLETE              = 7519, -- You have <number> [minute/minutes] (Earth time) to complete this mission.
        MISSION_FAILED                = 7520, -- The mission has failed. Leaving area.
        RUNE_UNLOCKED_POS             = 7521, -- ission objective completed. Unlocking Rune of Release ([A/B/C/D/E/F/G/H/I/J/K/L/M/N/O/P/Q/R/S/T/U/V/W/X/Y/Z]-#).
        ASSAULT_POINTS_OBTAINED       = 7523, -- You gain <number> [Assault point/Assault points]!
        TIME_REMAINING_MINUTES        = 7524, -- ime remaining: <number> [minute/minutes] (Earth time).
        TIME_REMAINING_SECONDS        = 7525, -- ime remaining: <number> [second/seconds] (Earth time).
        PARTY_FALLEN                  = 7527, -- ll party members have fallen in battle. Mission failure in <number> [minute/minutes].
        BRUJEEL_TEXT                  = 7536, -- Am I glad to see you!
    },

    mob =
    {
        [xi.assault.mission.IMPERIAL_AGENT_RESCUE] =
        {
            MOBS_START =
            {
                17047553, 17047554, 17047556, 17047557, 17047559, 17047560, 17047561, 17047563, 17047564, 17047565, 17047566,
                GATE_1 = 17047567, GATE_2 = 17047568, GATE_3 = 17047569,
            },

            GATES      =
            {
                17047567, 17047568, 17047569,
            },
        },

        [xi.assault.mission.PREEMPTIVE_STRIKE] =
        {
            MOBS_START =
            {
                17047570, 17047571, 17047572, 17047573, 17047574, 17047575, 17047576, 17047577, 17047578, 17047579,
                17047580, 17047581, 17047582, 17047583, 17047584, 17047585, 17047586, 17047587, 17047588, 17047589,
            },
        },
    },

    npc =
    {
        ANCIENT_LOCKBOX = GetFirstID('Ancient_Lockbox'),
        RUNE_OF_RELEASE = GetFirstID('Rune_of_Release'),
        BRUJEEL         = GetFirstID('Brujeel'),
        DOOR_1          = GetFirstID('_ju3'), -- north
        DOOR_2          = GetFirstID('_ju5'), -- southwest
        DOOR_3          = GetFirstID('_ju7'), -- southest
        POT_HATCH       = GetFirstID('_jul'),
    },
}

return zones[xi.zone.MAMOOL_JA_TRAINING_GROUNDS]
