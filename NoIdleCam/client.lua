
-- Disable Ped & Vehicle Idle Cam

local idle = 1

RegisterCommand('idlecamoff', function() -- help2 31, 167, 9 
    TriggerEvent('chat:addMessage', {
        color = {227,8,0},
        multiline = true,
        args = {'[COMMANDS]', 'Idle Cam Is Now Off'}
    })
    idle = 1
end)

RegisterCommand('idlecamon', function() -- help2 31, 167, 9 
    TriggerEvent('chat:addMessage', {
        color = {31,167,9},
        multiline = true,
        args = {'[COMMANDS]', 'Idle Cam Is Now On'}
    })
    idle = 0
end)

Citizen.CreateThread(function()
    while true do
    if idle > 0 then
        InvalidateIdleCam()
        InvalidateVehicleIdleCam()
        Citizen.Wait(10000)
    else
        Citizen.Wait(3300)
    end
end
end)
