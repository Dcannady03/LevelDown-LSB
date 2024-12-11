-----------------------------------
-- Area: Halvung
-----------------------------------
zones = zones or {}

zones[xi.zone.HALVUNG] =
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
        KEY_BREAKS                    = 7372, -- The <item> breaks!
        PARTY_MEMBERS_HAVE_FALLEN     = 7796, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7803, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        WIDE_TRENCH                   = 7923, -- There is a wide trench around the gate here. There are three keyholes of differing sizes inside the trench.
        MINING_IS_POSSIBLE_HERE       = 7946, -- Mining is possible here if you have <item>.
        BLUE_FLAMES                   = 7985, -- You can see blue flames flickering from a hole in the ground here...
        SICKLY_SWEET                  = 8037, -- A sickly sweet fragrance pervades the air...
        THIN_LAYER_OF_CINDER          = 8044, -- The ground is carpeted in a thin layer of cinder.
        DRAWS_NEAR                    = 8059, -- Something draws near!
        DULL_PIECE                    = 8060, -- A dull piece of metal lies on the ground. It appears to be a bracelet of sorts, but the layers of grime covering its surface render it wholly unwearable.
        LIFT_LEVER                    = 8063, -- You lift the lever with all your might!
        UNITY_WANTED_BATTLE_INTERACT  = 8102, -- Those who have accepted % must pay # Unity accolades to participate. The content for this Wanted battle is #. [Ready to begin?/You do not have the appropriate object set, so your rewards will be limited.]
        COMMON_SENSE_SURVIVAL         = 8124, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        WAMOURA_OFFSET         = GetTableOfIDs('Wamoura'),
        BIG_BOMB               = GetFirstID('Big_Bomb'),
        GURFURLUR_THE_MENACING = GetFirstID('Gurfurlur_the_Menacing'),
        DEXTROSE               = GetFirstID('Dextrose'),
        REACTON                = GetFirstID('Reacton'),
        ACHAMOTH               = GetFirstID('Achamoth'),
    },
    npc =
    {
        LEVER_AB_DOOR = GetFirstID('_1qf'),
        LEVER_CD_DOOR = GetFirstID('_1qh'),
        LEVER_EF_DOOR = GetFirstID('_1qj'),
        LEVER_GH_DOOR = GetFirstID('_1ql'),
        LEVER_IJ_DOOR = GetFirstID('_1qn'),
        MINING        = GetTableOfIDs('Mining_Point'),
    },
}

return zones[xi.zone.HALVUNG]
