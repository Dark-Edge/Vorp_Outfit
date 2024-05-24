
RegisterNetEvent('vorpcharacter_outfit:Updatecomps')
AddEventHandler('vorpcharacter_outfit:Updatecomps', function(data, source)
   ExecuteCommand("rc")
   Wait(2000)
   ExecuteCommand("Boots")
   Wait(100)
   ExecuteCommand("Boots")
end)
