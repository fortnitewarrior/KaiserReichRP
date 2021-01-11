
FACTION.name = "Feldgendarmerie"
FACTION.desc = "The police force of occupied Brussels."
FACTION.color = Color(50, 100, 150)
FACTION.weapons = {"tfa_pistolet_ruby"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.pay = 25
FACTION.health = 100
FACTION.armor = 100

function FACTION:onSpawn(client)

    client:SetHealth(self.health)
    client:SetArmor(self.armor)
end

FACTION.models = {
	"models/hts/ernie/pm0v3/player/asp/co/m38_asp_01.mdl",
	"models/hts/ernie/pm0v3/player/asp/co/m38_asp_02.mdl",
	"models/hts/ernie/pm0v3/player/asp/co/m38_asp_03.mdl",
	"models/hts/ernie/pm0v3/player/asp/co/m38_asp_04.mdl",
	"models/hts/ernie/pm0v3/player/asp/co/m38_asp_05.mdl",
	"models/hts/ernie/pm0v3/player/asp/co/m38_asp_06.mdl",
}


FACTION_POLICE = FACTION.index
