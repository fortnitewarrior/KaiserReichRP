
ITEM.name = "Cola"
ITEM.model = Model("models/foodnhouseholditems/cola_swift1.mdl")
ITEM.desc = "A bottle of cola."
ITEM.category = "Consumables"
ITEM.width = 1 -- Width and height refer to how many grid spaces this item takes up.
ITEM.height = 1
ITEM.category = "Consumables"
ITEM.flag = "d"
ITEM.price = 4

ITEM.functions.Drink = {
	onRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(25)
		client:SetHealth(math.Clamp(client:Health() + 6, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end,
}
