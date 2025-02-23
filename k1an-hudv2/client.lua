CreateThread(function()
    while true do
        Wait(1000)
        local hunger, thirst = lib.callback.await('GetPlayerStatus', source)
        if not hunger or not thirst then return end
        if not GetCurrentResourceName() == 'k1an-hudv2' then return print('Resource navn er blevet ændret. Vær sød at ændre det tilbage tak😼 ') end
        SendNUIMessage({
            type = 'show',
            gender = IsPedMale(PlayerPedId()),
            health = GetEntityHealth(PlayerPedId()),
            armor = GetPedArmour(PlayerPedId()),
            hunger = (100 - hunger),
            thirst = (100 -thirst)
        })
    end
end)