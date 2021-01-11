
ITEM.name = "Meat"
ITEM.model = Model("models/foodnhouseholditems/meat7.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.desc = "A piece of meat."
ITEM.category = "Consumables"
ITEM.flag = "d"
ITEM.price = 7

ITEM.functions.Eat = {
	onRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, client:GetMaxHealth()))

		return true
	end,
}
