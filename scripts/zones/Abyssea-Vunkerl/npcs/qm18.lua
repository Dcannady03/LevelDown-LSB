-----------------------------------
-- Zone: Abyssea-Vunkerl
--  NPC: qm18 (???)
-- Spawns Sedna
-- !pos 403 -31 375 217
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    xi.abyssea.qmOnTrigger(player, npc, ID.mob.SEDNA, { xi.ki.GLOSSY_SEA_MONK_SUCKER, xi.ki.SHIMMERING_PUGIL_SCALE })
end

entity.onEventUpdate = function(player, csid, option, npc)
    xi.abyssea.qmOnEventUpdate(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.abyssea.qmOnEventFinish(player, csid, option, npc)
end

return entity
