
-- Disable Ped & Vehicle Idle Cam

local idleCamEnabled = false

RegisterCommand("toggle_idlecam", function(source, args, raw)
    idleCamEnabled = not idleCamEnabled
end, false)

Citizen.CreateThread(function()
    while true do
        if not idleCamEnabled then
            InvalidateIdleCam()
            InvalidateVehicleIdleCam()
        end
        Wait(1000) --The idle camera activates after 30 second so we don't need to call this per frame
    end
end)
end)
