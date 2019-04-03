--------------------
-------Config-------
--------------------

menukey = 51 -- This is the control ID to open the menu. Default is [E]. You can find all control IDs here : https://docs.fivem.net/game-references/controls/

speed1 = 10.0 -- This is the first speed in the menu. 10 MPH by default. All the other speeds are configurable.

speed2 = 25.0

speed3 = 40.0

speed4 = 75.0

speed5 = 100.0

speed6 = 150.0

speed7 = 175.0

speed8 = 200.0

speed9 = 250.0

speed10 = 300.0

--------------------
--------------------
--------------------

-----------------------------------------
--DO NOT TOUCH ANYTHING BELOW THIS LINE--
-----------------------------------------

resetspeed = 99999.9 -----Do *NOT* touch this. It is used to revert your max speed. [If you somehow achieve this speed you have my approval]

--NOTE: Each value needs to have a .[number] Do *NOT* leave a value [number]--

--This contains the main menu title and description!
_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Speed Limiter", "~b~Here you can select your vehicles maximum speed!")
_menuPool:Add(mainMenu)

--This is where it all begins. From here you can find all of the different menu options. 
function FirstItem(menu) 
            
    local click1 = NativeUI.CreateItem( speed1.." MPH", "Set maximum speed to ~y~"..speed1.." ~w~mph!") --Speed 1 
    local click2 = NativeUI.CreateItem( speed2.." MPH", "Set maximum speed to ~y~"..speed2.." ~w~mph!") --Speed 2
    local click3 = NativeUI.CreateItem( speed3.." MPH", "Set maximum speed to ~y~"..speed3.." ~w~mph!") --Speed 3
    local click4 = NativeUI.CreateItem( speed4.." MPH", "Set maximum speed to ~y~"..speed4.." ~w~mph!") --Speed 4
    local click5 = NativeUI.CreateItem( speed5.." MPH", "Set maximum speed to ~y~"..speed5.." ~w~mph!") --Speed 5
    local click6 = NativeUI.CreateItem( speed6.." MPH", "Set maximum speed to ~y~"..speed6.." ~w~mph!") --Speed 6
    local click7 = NativeUI.CreateItem( speed7.." MPH", "Set maximum speed to ~y~"..speed7.." ~w~mph!") --Speed 7
    local click8 = NativeUI.CreateItem( speed8.." MPH", "Set maximum speed to ~y~"..speed8.." ~w~mph!") --Speed 8
    local click9 = NativeUI.CreateItem( speed9.." MPH", "Set maximum speed to ~y~"..speed9.." ~w~mph!") --Speed 9
    local click10 = NativeUI.CreateItem( speed10.." MPH", "Set maximum speed to ~y~"..speed10.." ~w~mph!") --Speed 10
    local click11 = NativeUI.CreateItem( "~r~RESET MAXIMUM SPEED", "This will reset your maximum speed") --Speed Reset

    menu.OnItemSelect = function(sender, item, index)

        if IsPedInAnyVehicle(ped, false) then --Checks if you, yes you are in a vehicle.

            if item == click1 then -- If the item (speed1 in this case) is clicked do this ;
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed1/2.237 ) --Sets you speed to well, speed1. 
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~"..speed1.." ~w~mph!") --Notifies you idiots that you speed has been set :) Then this repeats for the other 9 speeds.

            elseif item == click2 then  
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed2/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed2 .. " ~w~mph!")

            elseif item == click3 then                
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed3/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed3 .. " ~w~mph!")

            elseif item == click4 then                
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed4/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed4 .. " ~w~mph!")

            elseif item == click5 then                
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed5/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed5 .. " ~w~mph!")

            elseif item == click6 then                
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed6/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed6 .. " ~w~mph!")

            elseif item == click7 then                
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed7/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed7 .. " ~w~mph!")

            elseif item == click8 then                
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed8/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed8 .. " ~w~mph!")

            elseif item == click9 then               
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed9/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed9 .. " ~w~mph!")

            elseif item == click10 then                
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), speed10/2.237 )
                notify("~g~SUCCESS ~w~: Maximum speed set to ~y~" .. speed10 .. " ~w~mph!")

            elseif item == click11 then
                SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), resetspeed )
                notify("~g~SUCCESS ~w~: Maximum speed has been ~r~reset!")
            
            end

        elseif item == click11 then
            SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), resetspeed )
            notify("~g~SUCCESS ~w~: Maximum speed has been ~r~reset!")

        else 
            notify("~r~ERROR ~w~: You need to be in a vehicle to set a maximum speed!") --No vehicle alert.
            SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), resetspeed ) -- Resets your max speed.
            Wait(1000) --Waits 1 second so you can read that notification.
            notify("~y~INFO ~w~: Maximum speed reset~w~!") -- Then you are notified that your speed has been reset.

        end

    end

    menu:AddItem(click1) -- Adds the items to the menu. 
    menu:AddItem(click2)
    menu:AddItem(click3)
    menu:AddItem(click4)
    menu:AddItem(click5)
    menu:AddItem(click6)
    menu:AddItem(click7)
    menu:AddItem(click8)
    menu:AddItem(click9)
    menu:AddItem(click10)
    menu:AddItem(click11)
    ped = GetPlayerPed(-1) -- Ped variable.
    
end

FirstItem(mainMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        if IsControlJustPressed(1, menukey) then -- If the key you specified in the config is pressed open then menu, if the menu is open close the menu.
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end)

function notify(text) -- This function is used to notify you. [Box with text that appears just above the minimap]
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

--------------------
--------END---------
--------------------