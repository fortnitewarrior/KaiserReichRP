
FACTION.name = "Deutsches Heer"
FACTION.desc = "The German imperial army."
FACTION.color = Color(122, 7, 7)
FACTION.weapons = {"tfa_pistolet_ruby", "tfa_verdun_1886"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.pay = 30
FACTION.health = 100
FACTION.armor = 100

function FACTION:onSpawn(client)

    client:SetHealth(self.health)
    client:SetArmor(self.armor)
end

FACTION.models = {
	{"models/hts/ernie/pm0v3/player/kaiser/co/kaiser_01.mdl", 0, "01111"},
	{"models/hts/ernie/pm0v3/player/kaiser/co/kaiser_02.mdl", 0, "01111"},
	{"models/hts/ernie/pm0v3/player/kaiser/co/kaiser_03.mdl", 0, "01111"},
	{"models/hts/ernie/pm0v3/player/kaiser/co/kaiser_04.mdl", 0, "01111"},
	{"models/hts/ernie/pm0v3/player/kaiser/co/kaiser_05.mdl", 0, "01111"},
	{"models/hts/ernie/pm0v3/player/kaiser/co/kaiser_06.mdl", 0, "01111"},
}




FACTION_ARMY = FACTION.index
