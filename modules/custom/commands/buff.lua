-----------------------------------
-- func: buff
-- desc: Toggles buff on the player, granting them several special abilities.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 'i'
}

local buffOn = function(player)
    -- Add bonus effects to the player..
    player:addStatusEffect(xi.effect.REGAIN, 25, 0, 0)
    player:addStatusEffect(xi.effect.REFRESH, 10, 0, 0)
    player:addStatusEffect(xi.effect.REGEN, 10, 0, 0)
    player:addStatusEffect(xi.effect.DEDICATION, 500, 0, 0, 0, 30000) -- max 30000 or server crash
    -- Add bonus mods to the player..
    player:addMod(xi.mod.RACC, 50)
    player:addMod(xi.mod.RATT, 50)
    player:addMod(xi.mod.ACC, 50)
    player:addMod(xi.mod.ATT, 50)
    player:addMod(xi.mod.MATT, 50)
    player:addMod(xi.mod.MACC, 50)
    player:addMod(xi.mod.RDEF, 50)
    player:addMod(xi.mod.DEF, 50)
    player:addMod(xi.mod.MDEF, 50)
end
local buffOff = function(player)
    -- Remove bonus effects..
    player:delStatusEffect(xi.effect.REGAIN)
    player:delStatusEffect(xi.effect.REFRESH)
    player:delStatusEffect(xi.effect.REGEN)
    player:delStatusEffect(xi.effect.DEDICATION)
    player:delStatusEffect(xi.effect.COMMITMENT)
    -- Remove bonus mods..
    player:delMod(xi.mod.RACC, 50)
    player:delMod(xi.mod.RATT, 50)
    player:delMod(xi.mod.ACC, 50)
    player:delMod(xi.mod.ATT, 50)
    player:delMod(xi.mod.MATT, 50)
    player:delMod(xi.mod.MACC, 50)
    player:delMod(xi.mod.RDEF, 50)
    player:delMod(xi.mod.DEF, 50)
    player:delMod(xi.mod.MDEF, 50)
end
local buffOffnn = function(player)
    -- Remove bonus effects..
    player:delStatusEffect(xi.effect.REGAIN)
    player:delStatusEffect(xi.effect.REFRESH)
    player:delStatusEffect(xi.effect.REGEN)
    player:delStatusEffect(xi.effect.DEDICATION)
    -- Remove bonus mods..
    player:delMod(xi.mod.RACC, 50)
    player:delMod(xi.mod.RATT, 50)
    player:delMod(xi.mod.ACC, 50)
    player:delMod(xi.mod.ATT, 50)
    player:delMod(xi.mod.MATT, 50)
    player:delMod(xi.mod.MACC, 50)
    player:delMod(xi.mod.RDEF, 50)
    player:delMod(xi.mod.DEF, 50)
    player:delMod(xi.mod.MDEF, 50)
end

commandObj.onTrigger = function(player, tier)
  local mode = utils.clamp(tier or 0, 0, 2)
  local state = player:getCharVar('Buff')
    if state == 0 and
        player:getMainLvl() == 99 then
        player:setCharVar('Buff', 1)
        player:addStatusEffect(xi.effect.COMMITMENT, 40, 0, 0, 0, 30000)
        player:printToPlayer('Buff enabled.')
    elseif state == 0 and
        player:getMainLvl() <= 98 then
        player:setCharVar('Buff', 1)
        buffOn(player)
        player:printToPlayer('Buff enabled.')
    elseif state == 1 and
        player:getMainLvl() <= 98 then
        player:setCharVar('Buff', 0)
        buffOff(player)
        player:printToPlayer('Buff disabled.')
    elseif state == 1 and
        player:getMainLvl() == 99 then
        player:setCharVar('Buff', 0)
        buffOff(player)
        player:printToPlayer('Buff disabled.')
    end

                if player:getMainLvl() ~= 99 and
                   player:getCharVar('Buff') == 1 then
                   player:addListener('TICK', 'PLAYER_LEVEL', function(player)
                    local lvl = player:getMainLvl()
                      if lvl == 99 and
                         player:getCharVar('Buff') == 1 then
                                player:setCharVar('Buff', 0)
                                buffOffnn(player)
                                player:removeListener('PLAYER_LEVEL')
                      end
                   end)
                elseif player:getMainLvl() == 99 and
                       player:getCharVar('Buff') == 1 then
                       player:addListener('TICK', 'PLAYER_LEVEL', function(player)
                        local lvl = player:getMainLvl()
                          if lvl ~= 99 and
                             player:getCharVar('Buff') == 1 then
                                player:setCharVar('Buff', 0)
                                buffOff(player)
                                player:removeListener('PLAYER_LEVEL')
                      end
                   end)
                end 
end
return commandObj
