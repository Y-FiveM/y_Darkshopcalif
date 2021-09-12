ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('darkshop', 'main', RageUI.CreateMenu("Shop Illégal", "~r~Armes disponible")) 
RMenu:Get('darkshop', 'main'):SetRectangleBanner(0, 0, 0, 0)
RMenu.Add('darkshop', 'armes blanches', RageUI.CreateSubMenu(RMenu:Get('darkshop', 'main'), "Armes Blanches", "Vente ~r~d'armes blanches"))
RMenu.Add('darkshop', 'armes légère', RageUI.CreateSubMenu(RMenu:Get('darkshop', 'main'), "Armes légère", "Vente ~r~d'armes légère"))

Citizen.CreateThread(function()
    while true do
         RageUI.IsVisible(RMenu:Get('darkshop', 'main'), true, true, true, function()
          
      RageUI.Button("Armes Blanches", "~r~J'ai que sa de dispo~w~", {RightLabel = "~r~→→"},true, function()
      end, RMenu:Get('darkshop', 'armes blanches'))

      RageUI.Button("Armes Légère", "~r~J'ai que sa de dispo~w~", {RightLabel = "~r~→→"},true, function()
      end, RMenu:Get('darkshop', 'armes légère'))

      
    end, function()
    end)
 


        RageUI.IsVisible(RMenu:Get('darkshop', 'armes blanches'), true, true, true, function()
            
            RageUI.Button("~r~Couteau", "Fait vite !", {RightLabel = "~r~ 1200$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('::{korioz#0110}::player:BuyCouteau')
                end 
            end) 
 

            RageUI.Button("~r~Pied De Biche", "Fait vite !", {RightLabel = "~r~ 1500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('::{korioz#0110}::player:BuyBiche')
                end 
            end) 

            RageUI.Button("~r~Machete", "Fait vite !", {RightLabel = "~r~ 2200$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('::{korioz#0110}::player:BuyMachete')
                end 
            end) 
        end, function()
        end)

            --Citizen.Wait(0)
        --end
    --end)


    RageUI.IsVisible(RMenu:Get('darkshop', 'armes légère'), true, true, true, function()
            
        RageUI.Button("~r~Pétoire", "Fait vite !", {RightLabel = "~r~ 6500$"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                TriggerServerEvent('::{korioz#0110}::player:BuyPetoire')
            end 
        end) 


        RageUI.Button("~r~Pistolet classique", "Fait vite !", {RightLabel = "~r~ 8500$"}, true, function(Hovered, Active, Selected)
            if (Selected) then
                TriggerServerEvent('::{korioz#0110}::player:BuyGun')
            end 
        end) 
    end, function()
    end)

        Citizen.Wait(0)
    end
end)




    local position = {
        {x = -1387.95, y = -420.98, z = 36.62, } 
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 2.0 then

                   RageUI.Text({
                        message = "Appuyer sur [~r~E~w~] pour lui parler",
                        time_display = 1
                    })

                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('darkshop', 'main'), not RageUI.Visible(RMenu:Get('darkshop', 'main')))
                    end
                end
            end
        end
    end)
    Citizen.CreateThread(function()
        local hash = GetHashKey("a_m_y_soucent_02")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)    
        end
        ped = CreatePed("PED_TYPE_CIVFEMALE", "a_m_y_soucent_02", -1387.95, -420.98, 35.62, 346.16, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
    end)