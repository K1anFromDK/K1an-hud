vRP = exports.vrp:getObject()

lib.callback.register('GetPlayerStatus', function(source)
    local player = vRP.getUserId(source)
    hunger = vRP.getHunger(player)
    thirst = vRP.getThirst(player)
    return hunger, thirst
end)