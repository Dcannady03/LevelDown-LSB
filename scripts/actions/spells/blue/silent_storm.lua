-----------------------------------
-- Spell: Silent Storm
-- Deals wind damage to enemies within range. Additional effect: Silence
-- Spell cost: 116 MP
-- Monster Type: Elementals
-- Spell Type: Magical (Wind)
-- Blue Magic Points: 8
-- Stat Bonus: MP +30, AGI +8
-- Level: 99
-- Casting Time: 5 seconds
-- Recast Time: 60 seconds
-- Combos: Evasion Bonus
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0  
end

spellObject.onSpellCast = function(caster, target, spell)
    local params = {}
    params.ecosystem = xi.ecosystem.ELEMENTALS
    params.attackType = xi.attackType.MAGICAL
    params.damageType = xi.damageType.WIND
    params.attribute = xi.mod.AGI
    params.multiplier = 1.36
    params.duppercap = 99
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.8
    params.int_wsc = 0.0
    params.mnd_wsc = 0.0
    params.chr_wsc = 0.0

    params.addedEffect = xi.effect.SILENCE
    local power = 5
    local tick = 0
    local duration = 300

    local damage = xi.spells.blue.useMagicalSpell(caster, target, spell, params)
    xi.spells.blue.useMagicalSpellAddedeffect(caster, target, spell, params, power, tick, duration)

    return damage
end

return spellObject
    