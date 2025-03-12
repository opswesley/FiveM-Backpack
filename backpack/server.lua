local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

-- URL do webhook
local webhookURL = ""

local function sendWebhookMessage(webhook, embed)
    PerformHttpRequest(webhook, function(err, text, headers) end, "POST", json.encode({embeds = {embed}}), {["Content-Type"] = "application/json"})
end

RegisterCommand("backpack", function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id and vRP.hasGroup(user_id, "Admin") then
        local target_id = tonumber(args[1])
        local additional_weight = tonumber(args[2])

        if target_id and additional_weight then
            local user_source = vRP.getUserSource(target_id)
            if user_source then
                local admin_identity = vRP.userIdentity(user_id)
                local target_identity = vRP.userIdentity(target_id)
            
                local admin_name = admin_identity.name .. " " .. admin_identity.name2
                local target_name = target_identity.name .. " " .. target_identity.name2
                vRP.setWeight(target_id, additional_weight)
                local total_weight = vRP.getWeight(target_id)
                TriggerClientEvent("Notify", user_source, "sucesso", "Capacidade da mochila aumentada para "..additional_weight.." kg.")

                local embed = {
                    title = "🧳 Modificação de Capacidade de Backpack",
                    description = "Um administrador ajustou a capacidade de inventário de um jogador.",
                    color = 3447003,
                    fields = {
                        {
                            name = "👤 Staff",
                            value = string.format("**ID:** %d\n**Nome:** %s", user_id, admin_name),
                            inline = true
                        },
                        {
                            name = "🎒 Jogador",
                            value = string.format("**ID:** %d\n**Nome:** %s", target_id, target_name),
                            inline = true
                        },
                        {
                            name = "📊 Detalhes da Modificação",
                            value = string.format("**Quantidade Adicionada:** %d kg\n**Capacidade Total:** %d kg", additional_weight, total_weight),
                            inline = false
                        },
                        {
                            name = "📅 Data e Hora",
                            value = os.date("**Data:** %d/%m/%Y\n**Hora:** %H:%M:%S"),
                            inline = false
                        }
                    }
                }
                sendWebhookMessage(webhookURL, embed)
            else
                TriggerClientEvent("Notify", source, "erro", "ID do jogador inválido ou não está online.")
            end
        else
            TriggerClientEvent("Notify", source, "erro", "Uso incorreto do comando. Use: /backpack ID Valor")
        end
    else
        TriggerClientEvent("Notify", source, "erro", "Você não tem permissão para usar este comando.")
    end
end)
