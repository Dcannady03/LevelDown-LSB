-----------------------------------
-- Spell: Tenebral Crush
-- Deals dark damage to enemies with range. Additional effect: Weakens defense.
-- Spell cost: 116 MP
-- Monster Type: Elementals
-- Spell Type: Magical (Dark)
-- Blue Magic Points: 8
-- Stat Bonus: MP +30, VIT +4, INT +4, MND +4
-- Level: 99
-- Casting Time: 5 seconds
-- Recast Time: 60 seconds
-- Combos: Magic Accuracy Bonus
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0  
end

spellObject.onSpellCast = function(caster, target, spell)
    if target:hasStatusEffect(xi.effect.DIA) or
       target:hasStatusEffect(xi.effect.SLUGGISH_DAZE_1, 2, 6) or
       target:hasStatusEffect(xi.effect.DEFENSE_DOWN) or
       target:hasStatusEffect(xi.effect.GEO_FRAILTY) then
       return spell:setMsg(xi.msg.basic.STATUS_PREVENTS)
    end

    local params = {}
    params.ecosystem = xi.ecosystem.ELEMENTALS
    params.attackType = xi.attackType.MAGICAL
    params.damageType = xi.damageType.DARK
    params.attribute = xi.mod.INT
    params.attribute = xi.mod.MND
    params.attribute = xi.mod.VIT
    params.multiplier = 1.36
    params.duppercap = 99
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.3
    params.agi_wsc = 0.0
    params.int_wsc = 0.3
    params.mnd_wsc = 0.3
    params.chr_wsc = 0.0
    params.addedEffect = xi.effect.DEFENSE_DOWN
    local power = 5
    local tick = 0
    local duration = 180

    local damage = xi.spells.blue.useMagicalSpell(caster, target, spell, params)
    xi.spells.blue.useMagicalSpellAddedeffect(caster, target, spell, params, power, tick, duration)

    return damage
end

return spellObject
    