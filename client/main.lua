ESX = exports["es_extended"]:getSharedObject()

-- ESX = nil

-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('hw_announce:showNotification')
AddEventHandler('hw_announce:showNotification', function(msg, system)
    if Config.notifySystem == 'esx' then
        ESX.ShowNotification(msg)
    elseif Config.notifySystem == 'mythic' then
        exports['mythic_notify']:SendAlert('inform', msg, 10000)
    elseif Config.notifySystem == 'okok' then
        exports['okokNotify']:Alert("Server Announcement", msg, 10000, 'info')
    elseif Config.notifySystem == 'chat' then
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0 },
            multiline = true,
            args = {"Server Announcement", msg}
        })
    end
end)
