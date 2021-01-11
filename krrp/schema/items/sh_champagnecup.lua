
ITEM.name = "Champagne Cup"
ITEM.model = Model("models/foodnhouseholditems/champglass.mdl")
ITEM.desc = "A cup of champagne."
ITEM.width = 1
ITEM.height = 1
ITEM.noBusiness = true


ITEM.functions.Drink = {
	onRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(40)
		client:SetHealth(math.Clamp(client:Health() + 6, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end,
}
