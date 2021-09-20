
-- Disable Ped & Vehicle Idle Cam

Citizen.CreateThread(function()
    while true do
        InvalidateIdleCam()
        InvalidateVehicleIdleCam()
        Wait(1000) --The idle camera activates after 30 second so we don't need to call this per frame
    end
end)