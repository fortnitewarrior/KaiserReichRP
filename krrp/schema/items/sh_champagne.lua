
ITEM.name = "Champagne"
ITEM.model = Model("models/foodnhouseholditems/champagne2.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.desc = "A glass bottle of champagne."
ITEM.category = "Consumables"
ITEM.flag = "d"
ITEM.price = 7

ITEM.functions.Drink = {
	onRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
