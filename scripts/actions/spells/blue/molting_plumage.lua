-----------------------------------
-- Spell: Molting Plumage
-- Deals wind damage to enemies within a fan-shape in front of the caster.
-- Spell cost: 146 MP
-- Monster Type: Birds
-- Spell Type: Magical (Wind)
-- Blue Magic Points: 6
-- Stat Bonus: AGI +8
-- Level: 99
-- Casting Time: 1 seconds
-- Recast Time: 25 seconds
-----------------------------------
-- Combos: Dual Wield
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0

end

spellObject.onSpellCast = function(caster, target, spell)
   local params = {}
    params.ecosystem = xi.ecosystem.BIRDS
    params.attackType = xi.attackType.MAGICAL
    params.damageType = xi.damageType.WIND
    params.attribute = xi.mod.AGI
    params.attribute = xi.mod.INT
    params.diff = 0
    params.multiplier = 1
    params.tMultiplier = 1.0
    params.tp150 = 1.5
    params.tp300 = 2
    params.azuretp = 1
    params.duppercap = 0
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.7
    params.int_wsc = 0.0
    params.mnd_wsc = 0.0
    params.chr_wsc = 0.0

   local damage = xi.spells.blue.useMagicalSpell(caster, target, spell, params)
   return damage
end

return spellObject
