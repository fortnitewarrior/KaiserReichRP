
ITEM.name = "Wine"
ITEM.model = Model("models/foodnhouseholditems/wine_red1.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.desc = "A glass bottle of wine."
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
