UPDATE item_basic SET stackSize = 99 WHERE itemid = 4049;
DELETE FROM mob_droplist WHERE dropId = 1536 AND itemId = 18852; -- delete octave club from LoO
INSERT INTO mob_droplist VALUES (1536, 0, 0, 1000, 17440, 1);   -- add kraken club to LoO
INSERT INTO mob_droplist VALUES (1763,0,0,1000,14724,5); -- Moldavite Earring (Rare, 5%)
-- ZNM
INSERT INTO mob_droplist VALUES (2418, 0, 1, 100, 18852, 334);   -- add Octave club to Tinnin
INSERT INTO mob_droplist VALUES (2162, 0, 1, 100, 18852, 333);   -- add Octave club to Sarameya
INSERT INTO mob_droplist VALUES (2508, 0, 1, 100, 18852, 333);   -- add Octave club to Tyger
INSERT INTO mob_droplist VALUES (2418, 0, 1, 100, 19163, 333);  -- add Nightfall to Tinnin
INSERT INTO mob_droplist VALUES (2162, 0, 1, 100, 19163, 333);   -- add Nightfall to Sarameya
INSERT INTO mob_droplist VALUES (2508, 0, 1, 100, 19163, 334);   -- add Nightfall to Tyger
-- Abyssea
UPDATE mob_droplist SET itemRate = 1000 WHERE dropId = 47 and itemRate = 100; -- alfard fang drop rate correction
UPDATE mob_droplist SET dropType = 1, groupId = 1, groupRate = 100, itemRate = 1000 WHERE dropId = 47 and itemRate = 50; -- alfard fang drop rate correction
UPDATE mob_droplist SET itemRate = 500 WHERE itemId IN (
    2961, 3094, 4400, 4756, 5568, 11434, 11444, 11445, 11572, 11573, 11623, 
    11647, 11648, 11649, 11650, 11652, 11653, 11694, 11695, 11696, 11701, 
    11702, 11703, 11709, 11718, 11721, 11722, 11752, 11754, 11800, 11886, 
    11898, 11899, 11900, 11901, 11902, 11903, 11905, 11906, 11907, 11908, 
    11909, 11910, 11937, 11947, 12318, 15910, 16190, 16308, 16309, 17047, 
    17110, 17856, 18456, 18514, 18620, 18801, 18803, 18833, 18834, 18893, 
    18900, 18968, 19052, 19053, 19054, 19055, 19056, 19057, 19058, 19059, 
    19131, 19190, 19193, 19257, 19258, 19259, 19261, 19289, 19313, 19315, 
    19732
) OR itemId BETWEEN 3110 AND 3293
  OR itemId BETWEEN 3315 AND 3315;
-- Sky
UPDATE mob_droplist SET itemRate = 350 WHERE dropId = 193 and itemRate = 20; -- Flask Of Romaeve Spring Water drop rate correction
