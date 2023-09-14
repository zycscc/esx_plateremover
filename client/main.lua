ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx_plateremover:useRemover')
AddEventHandler('esx_plateremover:useRemover', function()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if DoesEntityExist(vehicle) and GetPedInVehicleSeat(vehicle, -1) == playerPed then
        SetVehicleNumberPlateText(vehicle, "")
        ESX.ShowNotification("License plate removed!")
    else
        ESX.ShowNotification("You are not in a vehicle or you're not the driver.")
    end
end)
