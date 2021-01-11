
ITEM.name = "Cheese"
ITEM.model = Model("models/foodnhouseholditems/cheesewheel1a.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.desc = "Yellow tasty cheese."
ITEM.category = "Consumables"
ITEM.flag = "d"
ITEM.price = 5

ITEM.functions.Eat = {
	onRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(45)
		client:SetHealth(math.Clamp(client:Health() + 20, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
}
