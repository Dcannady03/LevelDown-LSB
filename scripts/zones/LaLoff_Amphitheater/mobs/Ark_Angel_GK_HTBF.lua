-----------------------------------
-- Area: LaLoff Amphitheater
--  Mob: Ark Angel GK
-----------------------------------
mixins = { require('scripts/mixins/job_special') }
-----------------------------------
local entity = {}

-- TODO: Allegedly has a 12 hp/sec regen.  Determine if true, and add to onMobInitialize if so.
-- TODO: Create listener for SCing with other AAs during DM

local function spawnArkAngelPet(mob, target)
    local battlefield = mob:getBattlefield()
    if battlefield then
        local battlefieldId   = battlefield:getID()
        local battlefieldArea = battlefield:getArea()
        local content         = xi.battlefield.contents[battlefieldId]
        local selectedPet     = battlefieldId == xi.battlefield.id.DIVINE_MIGHT and 4 or 2

        mob:setAutoAttackEnabled(false)
        mob:setMobMod(xi.mobMod.NO_MOVE, 1)
        mob:injectActionPacket(mob:getID(), 11, 438, 0, 0x18, 101, 732, 55)

        local pet = SpawnMob(content.groups[selectedPet]['mobIds'][battlefieldArea][1])
        if pet then
            battlefield:insertEntity(pet:getTargID(), false, true)

            pet:addListener('DEATH', 'AAGK_PET_DEATH', function(petArg)
                local petBattlefield = petArg:getBattlefield()

                petBattlefield:setLocalVar('petRespawnGK', os.time() + 30)
            end)

            pet:updateEnmity(target)
        end

        mob:setAutoAttackEnabled(true)
        mob:setMobMod(xi.mobMod.NO_MOVE, 0)
    end
end

entity.onMobSpawn = function(mob)
        mob:addMod(xi.mod.STR, 50) 
        mob:addMod(xi.mod.VIT, 50) 
        mob:addMod(xi.mod.INT, 50) 
        mob:addMod(xi.mod.MND, 50) 
        mob:addMod(xi.mod.CHR, 50) 
        mob:addMod(xi.mod.AGI, 50) 
        mob:addMod(xi.mod.DEX, 50) 
        mob:addMod(xi.mod.DEF, 50) 
        mob:addMod(xi.mod.RATT, 150) 
        mob:addMod(xi.mod.ACC, 475) 
        mob:addMod(xi.mod.ATT, 275) 
        mob:addMod(xi.mod.MATT, 50)
        mob:addMod(xi.mod.MACC, 50) 
        mob:addMod(xi.mod.MEVA, 100) 
        mob:addMod(xi.mod.MDEF, 100)
        mob:setMod(xi.mod.EVA, 50)
        mob:setMod(xi.mod.EARTH_SDT, 50)
        mob:setMod(xi.mod.DARK_SDT, 50)
        mob:setMod(xi.mod.LIGHT_SDT, 50)
        mob:setMod(xi.mod.ICE_SDT, 50)
        mob:setMod(xi.mod.FIRE_SDT, 50)
        mob:setMod(xi.mod.WATER_SDT, 50)
        mob:setMod(xi.mod.THUNDER_SDT, 50)
        mob:setMod(xi.mod.WIND_SDT, 50)
        mob:setMod(xi.mod.SILENCERES, 50) 
        mob:setMod(xi.mod.STUNRES, 10) 
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
            -- "Meikyo Shisui is used very frequently."
            {
                id       = xi.jsa.MEIKYO_SHISUI,
                hpp      = math.random(90, 95),
                cooldown = 90,

                begCode = function(mobArg)
                    mobArg:setLocalVar('order', 0)
                end,
            },
        },
    })
end

entity.onMobEngage = function(mob, target)
    spawnArkAngelPet(mob, target)
end

entity.onMobFight = function(mob, target)
    if mob:hasStatusEffect(xi.effect.MEIKYO_SHISUI) then
        if mob:getLocalVar('order') == 0 then
            mob:useMobAbility(946) -- Tachi - Yukikaze
            mob:setLocalVar('order', 1)
            mob:setTP(2000)
        elseif mob:getLocalVar('order') == 1 then
            mob:useMobAbility(947) -- Tachi - Gekko
            mob:setLocalVar('order', 2)
            mob:setTP(1000)
        elseif mob:getLocalVar('order') == 2 then
            mob:useMobAbility(948) -- Tachi - Kasha
            mob:setLocalVar('order', 3)
            mob:setTP(0)
        end
    end

    local respawnTime = mob:getBattlefield():getLocalVar('petRespawnGK')
    if
        respawnTime ~= 0 and
        respawnTime <= os.time()
    then
        local battlefield = mob:getBattlefield()
        battlefield:setLocalVar('petRespawnGK', 0)
        spawnArkAngelPet(mob, target)
    end
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
