-----------------------------------
-- Area: Jade Sepulcher
--   NM: Mamool ja unseen
-----------------------------------
mixins = { require('scripts/mixins/job_special') }
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
end

entity.onMobSpawn = function(mob)
    local battlefield = mob:getBattlefield()
        mob:addMod(xi.mod.STR, 100) 
        mob:addMod(xi.mod.VIT, 100) 
        mob:addMod(xi.mod.INT, 100) 
        mob:addMod(xi.mod.MND, 100) 
        mob:addMod(xi.mod.CHR, 100) 
        mob:addMod(xi.mod.AGI, 100) 
        mob:addMod(xi.mod.DEX, 100) 
        mob:addMod(xi.mod.DEF, 100) 
        mob:addMod(xi.mod.RATT, 250) 
        mob:addMod(xi.mod.ACC, 375) 
        mob:addMod(xi.mod.ATT, 275) 
        mob:addMod(xi.mod.MATT, 250)
        mob:addMod(xi.mod.MACC, 250) 
        mob:addMod(xi.mod.MEVA, 200) 
        mob:addMod(xi.mod.MDEF, 200)
        mob:setMod(xi.mod.EVA, 100)
        mob:setMod(xi.mod.EARTH_SDT, 100)
        mob:setMod(xi.mod.DARK_SDT, 100)
        mob:setMod(xi.mod.LIGHT_SDT, 100)
        mob:setMod(xi.mod.ICE_SDT, 100)
        mob:setMod(xi.mod.FIRE_SDT, 100)
        mob:setMod(xi.mod.WATER_SDT, 100)
        mob:setMod(xi.mod.THUNDER_SDT, 100)
        mob:setMod(xi.mod.WIND_SDT, 100)
        mob:setMod(xi.mod.SILENCERES, 100) 
        mob:setMod(xi.mod.STUNRES, 50) 
        mob:setMod(xi.mod.BINDRES, 50) 
        mob:setMod(xi.mod.GRAVITYRES, 50) 
        mob:setMod(xi.mod.SLEEPRES, 50) 
        mob:setMod(xi.mod.POISONRES, 50) 
        mob:setMod(xi.mod.PARALYZERES, 50) 
        mob:setMod(xi.mod.LULLABYRES, 0) 
        mob:setMod(xi.mod.FASTCAST, 50)
        mob:addStatusEffect(xi.effect.REGEN,  25, 3, 0)
        mob:addStatusEffect(xi.effect.REGAIN, 10, 3, 0)
    xi.mix.jobSpecial.config(mob, {
        specials =
        {
            { id = xi.jsa.BENEDICTION, hpp = math.random(20, 30) }, -- "Uses Benediction once."
            { id = xi.jsa.INVINCIBLE, hpp = math.random(90, 95), cooldown = 90 }, -- "Uses Invincible many times."
        },
    })
end

entity.onMobFight = function(mob)

end

entity.onMobDisengage = function(mob)

end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
