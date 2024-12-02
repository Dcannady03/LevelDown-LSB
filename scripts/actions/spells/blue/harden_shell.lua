-----------------------------------
-- Spell: Harden Shell
-- Enhances defense
-- Spell cost: 20 MP
-- Monster Type: Lizards
-- Spell Type: Magical (Earth)
-- Blue Magic Points: 
-- Stat Bonus: MP +30, INT +8
-- Level: 95
-- Casting Time: 1.5 seconds
-- Recast Time: 25 seconds
-- Combos: Magic Attack Bonus
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    if caster:hasStatusEffect(xi.effect.UNBRIDLED_LEARNING) or
    caster:hasStatusEffect(xi.effect.UNBRIDLED_WISDOM) then
        return 0
    else
        return spell:setMsg(xi.msg.basic.STATUS_PREVENTS)
    end 
end

spellObject.onSpellCast = function(caster, target, spell)
    local power = 100 -- 100%
    local duration = xi.spells.blue.calculateDurationWithDiffusion(caster, 90)

    if not target:addStatusEffect(xi.effect.DEFENSE_BOOST, power, 0, duration) then
        spell:setMsg(xi.msg.basic.MAGIC_NO_EFFECT)
    end

    return xi.effect.DEFENSE_BOOST
end

return spellObject
    