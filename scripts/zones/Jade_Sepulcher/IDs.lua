-----------------------------------
-- Area: Jade_Sepulcher
-----------------------------------
zones = zones or {}

zones[xi.zone.JADE_SEPULCHER] =
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
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7328, -- Your time in the battlefield is up! Now exiting...
        PARTY_MEMBERS_ARE_ENGAGED     = 7343, -- The battlefield where your party members are engaged in combat is locked. Access is denied.
        NO_BATTLEFIELD_ENTRY          = 7367, -- A decorative door. It appears to be locked...
        TESTIMONY_IS_TORN             = 7386, -- Your <item> is torn...
        TESTIMONY_WEARS               = 7387, -- Your <item> [/rips into shreds!/is on the verge of tearing apart.../is showing signs of wear...] (# [use remains/uses remain].)
        MEMBERS_OF_YOUR_PARTY         = 7634, -- Currently, # members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE      = 7635, -- Currently, # members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7637, -- The time limit for this battle is <number> minutes.
        ORB_IS_CRACKED                = 7638, -- There is a crack in the %. It no longer contains a monster.
        A_CRACK_HAS_FORMED            = 7639, -- A crack has formed on the <item>, and the beast inside has been unleashed!
        PARTY_MEMBERS_HAVE_FALLEN     = 7673, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7680, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        IMPERIAL_ORDER_BREAKS         = 7688, -- The <item> breaks!
        ENTERING_THE_BATTLEFIELD_FOR  = 7701, -- Entering the battlefield for [Making a Mockery/Shadows of the Mind/The Beast Within/Moment of Truth/Puppet in Peril/Puppet in Peril/Tateeya's Worries/An Imperial Heist]!
    },
    mob =
    {
        LANCELORD_GAHEEL_JA        = GetFirstID('Lancelord_Gaheel_Ja'),
        LANCELORD_GAHEEL_JA_HTBF   = GetFirstID('Lancelord_Gaheel_HTBF'),
        MAMOOL_JA_UNSEEN_HTBF      = GetFirstID('Mamool_Unseen_HTBF'),
        MAMOOL_JA_FLAMEREARER_HTBF = GetFirstID('Mamool_Flamerearer_HTBF'),
        MAMOOL_JA_ISANGOMA_HTBF    = GetFirstID('Mamool_Isangoma_HTBF'),
        MAMOOL_JA_PROFLIGATE_HTBF  = GetFirstID('Mamool_Profligate_HTBF'),
        MAMOOL_JA_POLEMICIST_HTBF  = GetFirstID('Mamool_Polemicist_HTBF'),
    },
    npc =
    {
    },
}

return zones[xi.zone.JADE_SEPULCHER]
