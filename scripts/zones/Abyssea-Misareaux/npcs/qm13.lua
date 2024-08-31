-----------------------------------
-- Zone: Abyssea-Misareaux
--  NPC: qm13 (???)
-- Spawns Cirein-Croin
-- !pos 39.146 -15.500 519.988 216
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    xi.abyssea.qmOnTrigger(player, npc, ID.mob.CIREIN_CROIN, { xi.ki.GLISTENING_OROBON_LIVER, xi.ki.DOFFED_POROGGO_HAT })
end

entity.onEventUpdate = function(player, csid, option, npc)
    xi.abyssea.qmOnEventUpdate(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.abyssea.qmOnEventFinish(player, csid, option, npc)
end

return entity
