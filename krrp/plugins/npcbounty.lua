PLUGIN.name = "NPC Bounty"
PLUGIN.author = "Stan"
PLUGIN.desc = "Puts a bounty on NPCs for players to collect."

nut.config.add("NPCKillAmount", 5, "The amount of money recieved from killing an NPC", nil, {
	data = {min = 0, max = 1000},
	category = "NPC Bounty"
})

function PLUGIN:OnNPCKilled(victim, ent, weapon)
    if not ent then return end

    if ent:IsVehicle() and ent:GetDriver():IsPlayer() then ent = ent:GetDriver() end

    if IsValid(ent) and ent:IsPlayer() and nut.config.get("NPCKillAmount") > 0 then
        local char = ent:getChar()
        char:giveMoney(nut.config.get("NPCKillAmount"))
        char.player:notify("You have rrecieved "..nut.config.get("NPCKillAmount").." Goldmarks for killing an NPC" )
    end
end
