-----------------------------------
--  Triple Attack
--  Description: Delivers a threefold attack on a single target.
-----------------------------------
---@type TMobSkill
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    local numhits = 3
    local accmod = 1
    local dmgmod = 1
    local info = xi.mobskills.mobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, xi.mobskills.magicalTpBonus.NO_EFFECT,1,2,3,0)
    local dmg = xi.mobskills.mobFinalAdjustments(info.dmg, mob, skill, target, xi.attackType.PHYSICAL, xi.damageType.BLUNT, info.hitslanded)
    target:takeDamage(dmg, mob, xi.attackType.PHYSICAL, xi.damageType.BLUNT)
    return dmg
end
-- xi.mobskills.mobPhysicalMove = function(mob, target, skill, numHits, accMod, dmgMod, tpEffect, mtp000, mtp150, mtp300, offcratiomod)
 
return mobskillObject
