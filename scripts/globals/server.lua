-----------------------------------
require('scripts/events/handler')
require('scripts/globals/mog_tablets')
-----------------------------------
xi = xi or {}
xi.server = xi.server or {}

xi.server.onServerStart = function()
    xi.events.handler.checkSeasonalEvents()
end

xi.server.onJSTMidnight = function()
    xi.events.handler.checkSeasonalEvents()
end

xi.server.onTimeServerTick = function()
--[[
            if GetServerVariable('[MOGTABLET]Event') == 0 and
               GetServerVariable('[MOGTABLET]Timer') <= os.time() then -- 1 hour - 86400 is 24 hours
               SetServerVariable('[MOGTABLET]Event', 1)
               xi.mogTablet.disperseTabletsAnnouncement()
               xi.mogTablet.startEvent()
            end
]]--

end

-- Message for use with SmallPacket0x04B
xi.server.getServerMessage = function(language)
    local serverMessage = ''

    if language == xi.language.ENGLISH then
        serverMessage = xi.settings.main.SERVER_MESSAGE

        if xi.settings.main.ENABLE_TRUST_ALTER_EGO_EXTRAVAGANZA_ANNOUNCE == 1 then
            serverMessage = serverMessage .. xi.settings.main.TRUST_ALTER_EGO_EXTRAVAGANZA_MESSAGE
        end

        if xi.settings.main.ENABLE_TRUST_ALTER_EGO_EXPO_ANNOUNCE == 1 then
            serverMessage = serverMessage .. xi.settings.main.TRUST_ALTER_EGO_EXPO_MESSAGE
        end

        if xi.settings.main.SPARKS_RATE > 1 then
            serverMessage = serverMessage .. xi.settings.main.SPARKS_CAMPAIGN_MESSAGE
        end

        if xi.settings.main.CAPACITY_RATE > 1 then
            serverMessage = serverMessage .. xi.settings.main.CAPACITY_CAMPAIGN_MESSAGE
        end

        if xi.settings.main.EXP_RATE > 1 then
            serverMessage = serverMessage .. xi.settings.main.EXPERIENCE_CAMPAIGN_MESSAGE
        end
        

    end

    return serverMessage
end

xi.server.setExplorerMoogles = function(moogleId)
    if xi.settings.main.EXPLORER_MOOGLE_LV ~= 0 then
        local npc = GetNPCByID(moogleId)
        if npc == nil then
            printf('SetExplorerMoogles: Error trying to load undefined npc (%d)', moogleId)
        else
            npc:setStatus(0)
        end
    end
end

return xi.server
