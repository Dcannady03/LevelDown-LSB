-----------------------------------
-- Spell: Quadrastrike
-- Deliver a fourfold attack. Chance of critical hit varies with TP.
-- Spell cost: 98
-- Monster Type: Demons
-- Spell Type: Physical (SLASHING)
-- Blue Magic Points: 5
-- Stat Bonus: STR+3 , CHR+3
-- Level: 96
-- Casting Time: 2 seconds
-- Recast Time: 42.5 seconds
-- Skillchain Element(s): Liquefaction/Scission
-- Combos: Skillchain Bonus
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    local params = {}
    params.ecosystem = xi.ecosystem.DEMONS
    params.tpmod = TPMOD_CRITICAL
    params.critchance = 0
    if caster:hasStatusEffect(xi.effect.EFFLUX) then
        params.critchance = 55
    elseif caster:hasStatusEffect(xi.effect.CHAIN_AFFINITY) then
        params.critchance = math.floor (caster:getTP() / 75)
    end

    params.attackType = xi.attackType.PHYSICAL
    params.damageType = xi.damageType.BLUNT
    params.scattr = xi.skillchainType.LIQUEFACTION
    params.scattr2 = xi.skillchainType.SCISSION
    params.numhits = 4
    params.multiplier = 1
    params.tp150 = 1.1875
    params.tp300 = 2.525
    params.effluxtp = 1.5
    params.duppercap = 50
    params.str_wsc = 3.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 0.0
    params.mnd_wsc = 0.0
    params.chr_wsc = 0.0

        caster:addStatusEffect(xi.effect.ATTACK_BOOST, 25, 10)

    return xi.spells.blue.usePhysicalSpell(caster, target, spell, params)

end

return spellObject
