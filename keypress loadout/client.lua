
function giveWeapon(weaponID, ammo)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponID), ammo, false, true)
end
    
    function notify(message)
    SetTextComponentFormat("STRING")
    AddTextComponentString(message)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, 311) then
            giveWeapon("weapon_combatpistol", 1000)
            giveWeapon("weapon_nightstick", 1000)
            giveWeapon("weapon_stungun", 1000)
            giveWeapon("weapon_carbinerifle", 1000)
            giveWeapon("weapon_flashlight", 1000)
            giveWeapon("weapon_pumpshotgun", 1000)
            giveWeapon("weapon_fireextinguisher", 1)
            giveWeapon("weapon_bzgas", 15)
            giveWeapon("weapon_jerrycan", 1)
            notify("Keypress triggered, loadout given")
        elseif
    end
    
end)