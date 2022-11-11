-- Written by https://github.com/dsvipeer 
-- No support will be providen as it is standalone and it is working, just don't mess around in the client.lua.
-- Credits to https://github.com/HalCroves and it's resource https://github.com/HalCroves/mythic_progbar .

RegisterCommand("ret4", function(source, args) --You can change the command to whatever you like.
	local pl = GetEntityCoords(GetPlayerPed(-1))
	local player = GetPlayerPed(-1) 
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 1200,
        label = "Equipando sua T4!", --You can change this text to whatever you like too.
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
            model = "prop_paper_bag_small",
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

RegisterCommand("reimb", function(source, args) --You can change the command to whatever you like.
	local pl = GetEntityCoords(GetPlayerPed(-1))
	local player = GetPlayerPed(-1) 
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 1200,
        label = "Equipando sua IMBEL!", --You can change this text to whatever you like too.
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
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)	 	        
        print("Giving rifle")
		GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), 1000, false)
		GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))
end)

RegisterCommand("t4", function(source, args)
	local player = GetPlayerPed(-1) 
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 1200,
        label = "Guardando sua T4!",
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
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)	 
RemoveWeaponFromPed(player, "WEAPON_CARBINERIFLE")
end)

RegisterCommand("imbel", function(source, args)
	local player = GetPlayerPed(-1) 
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 1200,
        label = "Guardando sua IMBEL!",
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
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            -- Do Something If Event Wasn't Cancelled
        end
    end)	 	 
RemoveWeaponFromPed(player, "WEAPON_CARBINERIFLE_MK2")
end)