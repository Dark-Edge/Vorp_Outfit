vorpInventory = exports.vorp_inventory:vorp_inventoryApi()
local Core = exports.vorp_core:GetCore()

--[[-----------------------------------------outfit as items------------------------------------------
local PlayerSex = nil

RegisterNetEvent('vorpcharacter:UpdatePlayerSex')
AddEventHandler('vorpcharacter:UpdatePlayerSex', function(sex)
    PlayerSex = sex
	print(sex) --debug
	print(PlayerSex) --debug
end)
-------------------------------------------outfit as items------------------------------------------]]



--[[-----------------------------------------outfit as items------------------------------------------
RegisterNetEvent('Outfit:UpdatePlayercomps')
AddEventHandler('Outfit:UpdatePlayercomps', function(source, arguments)
		local Character = Core.getUser(source).getUsedCharacter 
		PlayerSex = Character.gender
		local item = arguments
			Wait(1000)
			print(PlayerSex) --debug
		--TriggerEvent("vorpclothingstore:AddOutfitItem");
			TableTenue2 = json.encode(arguments.comps)
			TableTenue2 = TableTenue2:gsub('}', ',"description":"'.. arguments.Result ..'","sex":"'.. PlayerSex ..'"}')
			vorpInventory.addItem(source, 'Outfit', 1, TableTenue2)
end)
-------------------------------------------outfit as items------------------------------------------]]	

--[[-----------------------------------------outfit as items------------------------------------------
RegisterNetEvent('Outfit:UpdatePlayercomps2')
AddEventHandler('Outfit:UpdatePlayercomps2', function(_source, arguments)
		local Character = Core.getUser(_source).getUsedCharacter 
		PlayerSex = Character.gender
		local item = arguments
			Wait(1000)
			--print(PlayerSex) --debug
			--print(sex)
			TableTenue2 = item.Outfit.comps
			TableTenue2 = TableTenue2:gsub('}', ',"description":"'.. item.Outfit.title ..'","sex":"'.. PlayerSex ..'"}')
			vorpInventory.addItem(_source, 'Outfit', 1, TableTenue2)
end) --]]

exports.vorp_inventory:registerUsableItem('Outfit', function(data)
	local Character = Core.getUser(data.source).getUsedCharacter
	local source = data.source
	local metadata = {}
	TriggerEvent("vorpcharacter:setPlayerCompChange", Character.skin, data.item.metadata)
	--print(source)
	--print(Character.identifier)
	--print(data.item.metadata)
	--print(Character.skin)
	--Character.updateComps(json.encode(data.item.metadata))	
	--[[
	MySQL.update('UPDATE characters SET compPlayer = "?" WHERE identifier = ?  AND charidentifier = ?', {data.item.metadata, Character.identifier, Character.charIdentifier},
		function(affectedRows)
		print(affectedRows)
		TriggerClientEvent('vorpcharacter_outfit:Updatecomps', source)
	end)
	TriggerClientEvent('vorpcharacter_outfit:Updatecomps', source) --]]
	
end)

-------------------------------------outfit as item----------------------------------------