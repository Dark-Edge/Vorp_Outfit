--[[-----------------------------------outfit as item----------------------------------------
RegisterNetEvent('vorpcharacter:CheckPlayerSex')
AddEventHandler('vorpcharacter:CheckPlayerSex', function(source, sex)
    if IsPedMale(PlayerPedId()) then
        sex = "m"
		print(sex) --debug
    else
        sex = "f"
		print(sex) --debug
    end
   TriggerServerEvent('vorpcharacter:UpdatePlayerSex',source, sex)
end)
--]]

RegisterNetEvent('vorpcharacter_outfit:Updatecomps')
AddEventHandler('vorpcharacter_outfit:Updatecomps', function()
   ExecuteCommand("rc")
end)


-------------------------------------outfit as item----------------------------------------




--[[local VorpInv = exports.vorp_inventory:vorp_inventoryApi()

function AddTenue(item)
    TriggerServerEvent("addTenue", item)
end

-- Exemple d'utilisation
--AddTenue("Tenue1")
--]]