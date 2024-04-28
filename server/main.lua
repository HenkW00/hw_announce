ESX = exports["es_extended"]:getSharedObject()

RegisterCommand(Config.Command, function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer and Config.groups[xPlayer.getGroup()] then
        local msg = table.concat(args, " ")
        TriggerClientEvent('hw_announce:showNotification', -1, msg)
        logToDiscord(xPlayer.getIdentifier(), xPlayer.getName(), msg)
    else
        xPlayer.showNotification('~r~You do not have permission to use this command.')
    end
end, false)

function logToDiscord(identifier, playerName, message)
    local embeds = {
        {
            ["title"] = "Announce Used",
            ["description"] = message,
            ["type"] = "rich",
            ["color"] = 16711680,
            ["fields"] = {
                {
                    ["name"] = "Player",
                    ["value"] = playerName,
                    ["inline"] = true
                },
                {
                    ["name"] = "Identifier",
                    ["value"] = identifier,
                    ["inline"] = true
                }
            }
        }
    }
    PerformHttpRequest(Config.discordWebhook, function(err, text, headers) end, 'POST', json.encode({embeds = embeds}), { ['Content-Type'] = 'application/json' })
end