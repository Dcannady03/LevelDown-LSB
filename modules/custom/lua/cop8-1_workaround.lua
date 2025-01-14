-----------------------------------
-- CoP 8.1 Workaround (for use until CoP 8-1
-- is converted to the Interaction framework)
-- NPC: Crystalline Field (_0x0.lua)
-- !pos .1 -10 -464 33
-----------------------------------
local ID = zones[xi.zone.AlTaieu]
require("scripts/globals/missions");
require("modules/module_utils")
require("scripts/zones/AlTaieu/npcs/_0x0")
-----------------------------------
local m = Module:new("COP8-1_Workaround")

m:addOverride("xi.zones.AlTaieu.npcs._0x0.onTrigger", function(player, npc)
    -- Set the PromathiaStatus to 3 if they did all 3 towers for GARDEN_OF_ANTIQUITY
    if
        player:getCharVar('[SEA][AlTieu]SouthTowerCS') == 1 and
        player:getCharVar('[SEA][AlTieu]WestTowerCS') == 1 and
        player:getCharVar('[SEA][AlTieu]EastTowerCS') == 1 and
        player:getCharVar('PromathiaStatus') == 2
    then
        player:setCharVar('[SEA][AlTieu]SouthTowerCS', 0)
        player:setCharVar('[SEA][AlTieu]WestTowerCS', 0)
        player:setCharVar('[SEA][AlTieu]EastTowerCS', 0)
        player:setCharVar('PromathiaStatus', 3)
    end

    if
        player:getCurrentMission(xi.mission.log_id.COP) == xi.mission.id.cop.GARDEN_OF_ANTIQUITY and
        player:getCharVar('PromathiaStatus') == 0 -- original value was 1, changed to 0 (to account for this variable not existing in CoP prior to 8-1)
    then
        player:startEvent(164)
    elseif
        player:getCurrentMission(xi.mission.log_id.COP) > xi.mission.id.cop.GARDEN_OF_ANTIQUITY or
        (
            player:getCurrentMission(xi.mission.log_id.COP) == xi.mission.id.cop.GARDEN_OF_ANTIQUITY and
            player:getCharVar('PromathiaStatus') == 3
        )
    then
        player:startEvent(100) -- Teleport inside
	else
		player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY); -- Access should be restricted if below requirements. Message is probably wrong, though.
    end
end)

m:addOverride("xi.zones.AlTaieu.npcs._0x0.onEventFinish", function(player,csid,option)
    if (csid == 100 and option == 1) then
        player:setPos(-20,0.624,-355,191,34); -- {R}
    elseif (csid == 164) then
        player:setCharVar("PromathiaStatus", 2);
    end
end)

return m