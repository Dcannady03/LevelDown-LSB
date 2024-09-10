-----------------------------------
-- Spell: Wind Breath
-- Deals Wind breath damage to enemies within a fan-shaped area originating from the caster.
-- Spell cost: 26 MP
-- Monster Type: Dragons
-- Spell Type: Breath (Wind)
-- Blue Magic Points: 2
-- Stat Bonus: STR+2, AGI+2
-- Level: 99
-- Casting Time: 1.5 seconds
-- Recast Time: 29.5 seconds
-- Magic Bursts on:
-- Combos: Fast Cast
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    local params = {}
    params.ecosystem = xi.ecosystem.DRAGON
    params.attackType = xi.attackType.BREATH
    params.damageType = xi.damageType.WIND
    params.diff = 0 -- no stat increases magic accuracy
    params.skillType = xi.skill.BLUE_MAGIC
    params.hpMod = 3
    params.lvlMod = 1

    local results = xi.spells.blue.useBreathSpell(caster, target, spell, params, true)
    local damage = results[1]
    local resist = results[2]

    return damage
end

return spellObject
