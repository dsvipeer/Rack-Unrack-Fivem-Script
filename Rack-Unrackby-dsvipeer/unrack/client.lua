RegisterCommand("pm4", function(source, args)
	local pl = GetEntityCoords(GetPlayerPed(-1))
	local player = GetPlayerPed(-1) 
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 1200,
        label = "Unracking your M4!",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "mini@repair",
            anim = "fixing_a_ped",
        },
        prop = {
            model = "w_ar_carbinerifle",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)	 	          
        print("Giving rifle")
        GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), 1000, false)
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))
		GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
end)

RegisterCommand("gm4", function(source, args)
	local player = GetPlayerPed(-1) 
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 1200,
        label = "Racking your M4!",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = false,
        },
        animation = {
            animDict = "mini@repair",
            anim = "fixing_a_ped",
        },
        prop = {
            model = "w_ar_carbinerifle",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)	 
RemoveWeaponFromPed(player, "WEAPON_CARBINERIFLE")
end)