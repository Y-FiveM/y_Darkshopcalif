ESX = nil

TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)



RegisterNetEvent('::{korioz#0110}::player:BuyCouteau')
AddEventHandler('::{korioz#0110}::player:BuyCouteau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 1200

    if xPlayer.getAccount('cash').money >= price then
		xPlayer.removeAccountMoney('cash', price)
        xPlayer.addWeapon('weapon_knife', 1)
        TriggerClientEvent('::{korioz#0110}::esx:showNotification', _source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('::{korioz#0110}::esx:showNotification', _source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('::{korioz#0110}::player:BuyMachete')
AddEventHandler('::{korioz#0110}::player:BuyMachete', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2000

    if xPlayer.getAccount('cash').money >= price then
		xPlayer.removeAccountMoney('cash', price)
        xPlayer.addWeapon('weapon_machete', 1)
        TriggerClientEvent('::{korioz#0110}::esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('::{korioz#0110}::esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('::{korioz#0110}::player:BuyBiche')
AddEventHandler('::{korioz#0110}::player:BuyBiche', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1250

    if xPlayer.getAccount('cash').money >= price then
		xPlayer.removeAccountMoney('cash', price)
        xPlayer.addWeapon('weapon_crowbar', 1)
        TriggerClientEvent('::{korioz#0110}::esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('::{korioz#0110}::esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('::{korioz#0110}::player:BuyPetoire')
AddEventHandler('::{korioz#0110}::player:BuyPetoire', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 6500

    if xPlayer.getAccount('cash').money >= price then
		xPlayer.removeAccountMoney('cash', price)
        xPlayer.addWeapon('weapon_snspistol', 40)
        TriggerClientEvent('::{korioz#0110}::esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('::{korioz#0110}::esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


RegisterNetEvent('::{korioz#0110}::player:BuyGun')
AddEventHandler('::{korioz#0110}::player:BuyGun', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 8500

    if xPlayer.getAccount('cash').money >= price then
		xPlayer.removeAccountMoney('cash', price)
        xPlayer.addWeapon('weapon_pistol', 40)
        TriggerClientEvent('::{korioz#0110}::esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('::{korioz#0110}::esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)