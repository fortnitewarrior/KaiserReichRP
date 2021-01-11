
ITEM.name = "Pie"
ITEM.model = Model("models/foodnhouseholditems/pie.mdl")
ITEM.desc = "A pie. Yummy..."
ITEM.width = 1
ITEM.height = 1
ITEM.category = "Consumables"
ITEM.flag = "d"
ITEM.price = 10

ITEM.functions.Eat = {
	onRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(25)
		client:SetHealth(math.Clamp(client:Health() + 20, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
}
