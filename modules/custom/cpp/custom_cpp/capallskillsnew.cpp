#include "common/logging.h"
#include "common/sql.h"
#include "lua/lua_baseentity.h"
#include "lua/luautils.h"
#include "lua/lua_battlefield.h"
#include "utils/battleutils.h"
#include "map/utils/charutils.h"
#include "map/utils/moduleutils.h"
#include "packets/char_skills.h"
/************************************************************************
 *  Function: capAllSkills()
 *  Purpose : Cap all skills for a PC
 *  Example : player:capAllSkillsNew()
 *  Notes   :
 ************************************************************************/
class CapAllSkillsNew : public CPPModule
{
    void OnInit() override // Called just before the server is ready to run.
    {
            lua["CBaseEntity"]["capAllSkillsNew"] = [](CLuaBaseEntity* PLuaBaseEntity) -> void
            {
            CBaseEntity* PEntity = PLuaBaseEntity->GetBaseEntity();
            if (PEntity->objtype != TYPE_PC)
            {
                ShowWarning("Invalid entity type calling function (%s).", PEntity->getName());
                return;
            }

            auto* PChar = static_cast<CCharEntity*>(PEntity);

            for (uint8 i = 1; i < 46; ++i)
            {
                const char* Query = "INSERT INTO char_skills "
                                    "SET "
                                    "charid = %u,"
                                    "skillid = %u,"
                                    "value = %u,"
                                    "rank = %u "
                                    "ON DUPLICATE KEY UPDATE value = %u, rank = %u";

                _sql->Query(Query, PChar->id, i, 5000, PChar->RealSkills.rank[i], 5000, PChar->RealSkills.rank[i]);

                uint16 maxSkill               = 10 * battleutils::GetMaxSkill(static_cast<SKILLTYPE>(i), PChar->GetMJob(), PChar->GetMLevel());
                PChar->RealSkills.skill[i]    = maxSkill; // set to capped
                PChar->WorkingSkills.skill[i] = maxSkill / 10;
                PChar->WorkingSkills.skill[i] |= 0x8000; // set blue capped flag
            }
            charutils::CheckWeaponSkill(PChar, SKILL_NONE);
            PChar->pushPacket(new CCharSkillsPacket(PChar));
            };
    }
};
// You must call this to register your module with the program!
REGISTER_CPP_MODULE(CapAllSkillsNew);