local ESX = exports.es_extended:getSharedObject()
local ox_inventory = exports.ox_inventory

ESX.RegisterUsableItem("kitarma",function (source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local weapon = ox_inventory:GetCurrentWeapon(source)

    if weapon then
        xPlayer.removeInventoryItem("kitarma", 1)
        TriggerClientEvent("SF_Vario:RiparaArma", source)
        Citizen.Wait(5000)
        ox_inventory:SetDurability(source, weapon.slot, 100)
        xPlayer.showNotification("Hai riparato l'arma nello slot: "..weapon.slot)
    else
        xPlayer.showNotification("Non hai preso nessun'arma in mano di recente")
    end
end)