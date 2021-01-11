
ITEM.name = "Bread"
ITEM.model = Model("models/foodnhouseholditems/bread-2.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.desc = "A bread."
ITEM.category = "Consumables"
ITEM.flag = "d"
ITEM.price = 3

ITEM.functions.Eat = {
	onRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(35)
		client:SetHealth(math.Clamp(client:Health() + 20, 0, client:GetMaxHealth()))
		client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)
	end,
}
