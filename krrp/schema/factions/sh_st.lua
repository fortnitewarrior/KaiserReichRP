
FACTION.name = "Sturmtruppler"
FACTION.desc = "The German imperial army's elites."
FACTION.color = Color(122, 7, 7)
FACTION.weapons = {"tfa_nam_c96", "tfa_ww1_mp18"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.pay = 50
FACTION.health = 100
FACTION.armor = 150

function FACTION:onSpawn(client)

    client:SetHealth(self.health)
    client:SetArmor(self.armor)
end

FACTION.models = {
	"models/policn.mdl",

}




FACTION_ST = FACTION.index
