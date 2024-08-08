-- Set new player gear & parameters
-----------------------------------
require('modules/module_utils')
require('scripts/globals/player')
require('scripts/enum/item')
-----------------------------------
local m = Module:new('new_player_gear')


m:addOverride('xi.player.charCreate', function(player)
        super(player)
        if xi.settings.main.NEW_CHARACTER_CUTSCENE == 0 then 
            player:addItem(xi.item.DESTRIER_BERET)
            player:addItem(xi.item.CHOCOBO_SHIRT)
            player:setNewPlayer(false)
            player:unlockJob(xi.job.RUN)
            player:unlockJob(xi.job.GEO)
	        player:addKeyItem(xi.ki.JOB_BREAKER)
	        player:addKeyItem(xi.ki.LIMIT_BREAKER)
	        player:addKeyItem(xi.ki.HEART_OF_THE_BUSHIN)
                    -- fame
            player:addFame(xi.fameArea.BASTOK, 30000)
            player:addFame(xi.fameArea.SANDORIA, 30000)
            player:addFame(xi.fameArea.JEUNO, 30000)
            player:addFame(xi.fameArea.NORG, 30000)
            player:addFame(xi.fameArea.WINDURST, 30000)
            -- pet names
            player:setPetName(xi.petType.WYVERN, math.random(1,32))
            player:setPetName(xi.petType.AUTOMATON, math.random(118, 149))
                        -- moghouse
            player:changeContainerSize(xi.inv.MOGSAFE,  80)
            player:changeContainerSize(xi.inv.MOGSACK,  80)
            player:changeContainerSize(xi.inv.MOGLOCKER,  80)

        end

        if not player:hasItem(xi.item.SAN_DORIAN_RING) or
           not player:hasItem(xi.item.BASTOKAN_RING) or
           not player:hasItem(xi.item.WINDURSTIAN_RING) then
               player:addItem(xi.item.SAN_DORIAN_RING)
               player:addItem(xi.item.BASTOKAN_RING)
               player:addItem(xi.item.WINDURSTIAN_RING)
        elseif
        player:hasItem(xi.item.SAN_DORIAN_RING) then
        player:addItem(xi.item.BASTOKAN_RING)
        player:addItem(xi.item.WINDURSTIAN_RING)
        elseif
        player:hasItem(xi.item.BASTOKAN_RING) then
        player:addItem(xi.item.WINDURSTIAN_RING)
        player:addItem(xi.item.SAN_DORIAN_RING)
        elseif
        player:hasItem(xi.item.WINDURSTIAN_RING) then
        player:addItem(xi.item.SAN_DORIAN_RING)
        player:addItem(xi.item.BASTOKAN_RING)
        end
        player:addItem(xi.item.ANIMATOR)
	    -- add all learned weaponskills
	    targ = player
    		for i = 1, 63 do
        targ:addLearnedWeaponskill(i)
   		 end



            -- add all homepoints
   local keyIds =
    {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23,
        24, 25 ,26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
        45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60 ,61, 62, 63, 64, 65,
        66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
        87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
        107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121,
    }

        for _, v in ipairs(keyIds) do
        if not player:hasTeleport(xi.teleport.type.HOMEPOINT,  v % 32, math.floor(v / 32)) then
        player:addTeleport(xi.teleport.type.HOMEPOINT, v % 32, math.floor(v / 32))
        end
        end

        -- add all survival guide warps
    local keyIdz =
    {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23,
        24, 25 ,26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
        45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60 ,61, 62, 63, 64, 65,
        66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
        87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 
    }


    for _, v in ipairs(keyIdz) do
        if not player:hasTeleport(xi.teleport.type.SURVIVAL,  v % 32, math.floor(v / 32)) then
        player:addTeleport(xi.teleport.type.SURVIVAL,v % 32, math.floor(v / 32))
    end
    end

    local eschaPortals =
    {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23,
        24, 25 ,26, 27, 28, 29, 30, 31
    }

    local validSpells =
    {
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37,
        38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71,
        72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104,
        105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130,
        131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156,
        157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182,
        183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208,
        209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234,
        235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 258, 259, 260,
        261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286,
        287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312,
        313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338,
        339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364,
        365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390,
        391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416,
        417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442,
        443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468,
        469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494,
        495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 515, 517, 519, 521, 522, 524, 527,
        529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 547, 548, 549, 551, 554, 555, 557, 560, 561,
        563, 564, 565, 567, 569, 570, 572, 573, 574, 575, 576, 577, 578, 579, 581, 582, 584, 585, 587, 588, 589, 591, 592, 593, 594, 595,
        596, 597, 598, 599, 603, 604, 605, 606, 608, 610, 611, 612, 613, 614, 615, 616, 617, 618, 620, 621, 622, 623, 626, 628, 629, 631,
        632, 633, 634, 636, 637, 638, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659,
        660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685,
        686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711,
        712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 736, 737, 738, 739, 740, 741, 742, 743, 744,
        745, 746, 747, 748, 749, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788,
        789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814,
        815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840,
        841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866,
        867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892,
        893, 894, 895

    }

    -- Corsair Rolls
local ValidRolls = {
    98, -- Fighter's Roll
    99, -- Monk's Roll
    100, -- Healer's Roll
    101, -- Wizard's Roll
    102, -- Warlock's Roll
    103, -- Rogue's Roll
    104, -- Gallant's Roll
    105, -- Chaos Roll
    106, -- Beast Roll
    107, -- Choral Roll
    108, -- Hunter's Roll
    109, -- Samurai Roll
    110, -- Ninja Roll
    111, -- Drachen Roll
    112, -- Evoker's Roll
    113, -- Magus' Roll
    114, -- Corsair's Roll
    115, -- Puppet's Roll
    116, -- Dancer's Roll
    117, -- Scholar's Roll
    118, -- Bolter's Roll
    119, -- Caster's Roll
    120, -- Courser's Roll
    121, -- Blitzer's Roll
    122, -- Tactician's Roll
    302, -- Allies Roll
    303, -- Miser's Roll
    304, -- Companion's Roll
    305, -- Avenger's Roll
    390, -- Naturalist's Roll
    391, -- Runeist's Roll
}
local ValidAttachments = {
    8193, 8194, 8195, 8196, 8197, 8198, 8224, 8225, 8226, 8227,
    8449, 8450, 8451, 8452, 8453, 8454, 8455, 8456, 8458,
    8462, 8481, 8482, 8483, 8484, 8485, 8486, 8487, 8488, 8489, 8490, 8491, 8493, 8497,
    8513, 8514, 8515, 8516, 8517, 8518, 8519, 8520,
    8523, 8524, 8526, 8528, 8545, 8546, 8547, 8548, 8549, 8550, 8551,
    8555, 8577, 8578, 8579, 8580, 8581, 8582, 8583, 8584, 8585,
    8587, 8609, 8610, 8611, 8612, 8613, 8614, 8615, 8616,
    8619, 8641, 8642, 8643, 8644, 8645, 8646, 8648, 8651,
    8673, 8674, 8675, 8676, 8677, 8678, 8680, 8682, 9138, 9143, 9230,
}
    local confIds =
    {
        -- [xi.zone.ABYSSEA_KONSCHTAT] 
        {0, 0},
        {0, 1},
        {0, 2},
        {0, 3},
        {0, 4},
        {0, 5},
        {0, 6},
        {0, 7},
        -- [xi.zone.ABYSSEA_TAHRONGI]
        {1, 0},
        {1, 1},
        {1, 2},
        {1, 3},
        {1, 4},
        {1, 5},
        {1, 6},
        {1, 7},
        -- [xi.zone.ABYSSEA_LA_THEINE]
        {2, 0},
        {2, 1},
        {2, 2},
        {2, 3},
        {2, 4},
        {2, 5},
        {2, 6},
        {2, 7},
        -- [xi.zone.ABYSSEA_ATTOHWA]
        {3, 0},
        {3, 1},
        {3, 2},
        {3, 3},
        {3, 4},
        {3, 5},
        {3, 6},
        {3, 7},
        {3, 8},
        -- [xi.zone.ABYSSEA_MISAREAUX]
        {4, 0},
        {4, 1},
        {4, 2},
        {4, 3},
        {4, 4},
        {4, 5},
        {4, 6},
        {4, 7},
        {4, 8},
        -- [xi.zone.ABYSSEA_VUNKERL]
        {5, 0},
        {5, 1},
        {5, 2},
        {5, 3},
        {5, 4},
        {5, 5},
        {5, 6},
        {5, 7},
        {5, 8},
        -- [xi.zone.ABYSSEA_ALTEPA]
        {6, 0},
        {6, 1},
        {6, 2},
        {6, 3},
        {6, 4},
        {6, 5},
        {6, 6},
        {6, 7},
        -- [xi.zone.ABYSSEA_ULEGUERAND]
        {7, 0},
        {7, 1},
        {7, 2},
        {7, 3},
        {7, 4},
        {7, 5},
        {7, 6},
        {7, 7},
        -- [xi.zone.ABYSSEA_GRAUBERG]
        {8, 0},
        {8, 1},
        {8, 2},
        {8, 3},
        {8, 4},
        {8, 5},
        {8, 6},
        {8, 7},
    } 

    -- add all spells
    local save = true
    local silent = true
    local sendUpdate = false -- prevent packet spam

    for i = 1, #validSpells do
        if i == #validSpells then
            silent = false
            sendUpdate = true
        end

        targ:addSpell(validSpells[i], silent, save, sendUpdate)
    end
    -- add in rolls
    for i = 1, #ValidRolls do
        if i == #ValidRolls then
            silent = false
            sendUpdate = true
        end

        targ:addLearnedAbility(ValidRolls[i], silent, save, sendUpdate)
    end
    -- add in attachments
    for i = 1, #ValidAttachments do
        if i == #ValidAttachments then
            silent = false
            sendUpdate = true
        end

        targ:unlockAttachment(ValidAttachments[i], silent, save, sendUpdate)

    end
    -- add eschaPortals
    for _, v in ipairs(eschaPortals) do
        targ:addTeleport(xi.teleport.type.ESCHAN_PORTAL, v)
    end

    -- add conflux
    for _, v in ipairs(confIds) do
        targ:addTeleport(xi.teleport.type.ABYSSEA_CONFLUX, v[1], v[2])
    end

    -- add all waypoints
    for i = 1,50 do
    targ:addTeleport(xi.teleport.type.WAYPOINT, i)
    end

        -- add all Runic Portals
    for i = 1,6 do
    targ:addTeleport(xi.teleport.type.RUNIC_PORTAL, i)
    end

----------------------------------------
local openingDecoration = '\129\155'
local mid1Decoration = '\129\154'
local mid2Decoration = '\129\154'
local closingDecoration = '\129\155'
local end1Decoration = '\129\154'
local end2Decoration = '\129\154'


local checkWorldServerVar = function(player, varName, worldMessage)

    if  player:getLocalVar('gameLogin') == 1 then
        local decoratedMessage = string.format('%s %s %s %s %s %s %s', openingDecoration, mid1Decoration, mid2Decoration, worldMessage, end1Decoration, end2Decoration, closingDecoration)
        player:printToArea(decoratedMessage, xi.msg.channel.SYSTEM_3, 0, '')
    end
end
        checkWorldServerVar(player,
        'gameLogin',
        string.format('%s has logged in for the first time!', player:getName()))

end)

m:addOverride('xi.player.onGameIn', function(player, firstLogin, zoning)
super(player, firstLogin, zoning)
local gmlvl = player:getGMLevel()

        if not firstLogin and not zoning and gmlvl <=0 then
        local openingDecoration = '\129\155'
        local mid1Decoration = '\129\154'
        local mid2Decoration = '\129\154'
        local closingDecoration = '\129\155'
        local end1Decoration = '\129\154'
        local end2Decoration = '\129\154'
        local message = string.format('%s has logged in!', player:getName())
        local decoratedMessage = string.format('%s %s %s %s %s %s %s', openingDecoration, mid1Decoration, mid2Decoration, message, end1Decoration, end2Decoration, closingDecoration)
        player:printToArea(decoratedMessage, xi.msg.channel.SYSTEM_3, 0)        
        end
end)

return m

