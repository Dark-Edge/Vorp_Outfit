vorpInventory = exports.vorp_inventory:vorp_inventoryApi()
local Core = exports.vorp_core:GetCore()


RegisterNetEvent('Outfit:UpdatePlayercomps')
AddEventHandler('Outfit:UpdatePlayercomps', function(_source, arguments, title)
		local Character = Core.getUser(_source).getUsedCharacter 
		PlayerSex = Character.gender
		--local item = arguments
			Wait(1000)
			TableTenue2 = arguments
			TableTenue2 = TableTenue2:gsub('}', ',"description":"'.. title ..'","sex":"'.. PlayerSex ..'"}')
			vorpInventory.addItem(_source, 'Outfit', 1, TableTenue2)
end)

exports.vorp_inventory:registerUsableItem('Outfit', function(data)
	local Character = Core.getUser(data.source).getUsedCharacter
	local source = data.source
	local _source = source
	local metadata = {}
	TriggerClientEvent('vorpcharacter_outfit:Updatecomps', _source, data.item.metadata)	
	TriggerClientEvent("vorpcharacter:updateCache", _source, false, data.item.metadata)
end)

