local L0_1, L1_1, L2_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = "0X"
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = ""
    while L7_2 > 0 do
      L9_2 = math
      L9_2 = L9_2.fmod
      L10_2 = L7_2
      L11_2 = 16
      L9_2 = L9_2(L10_2, L11_2)
      L9_2 = L9_2 + 1
      L10_2 = math
      L10_2 = L10_2.floor
      L11_2 = L7_2 / 16
      L10_2 = L10_2(L11_2)
      L7_2 = L10_2
      L10_2 = string
      L10_2 = L10_2.sub
      L11_2 = "0123456789ABCDEF"
      L12_2 = L9_2
      L13_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2, L13_2)
      L11_2 = L8_2
      L10_2 = L10_2 .. L11_2
      L8_2 = L10_2
    end
    L9_2 = string
    L9_2 = L9_2.len
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if 0 == L9_2 then
      L8_2 = "00"
    else
      L9_2 = string
      L9_2 = L9_2.len
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if 1 == L9_2 then
        L9_2 = "0"
        L10_2 = L8_2
        L9_2 = L9_2 .. L10_2
        L8_2 = L9_2
      end
    end
    L9_2 = L1_2
    L10_2 = L8_2
    L9_2 = L9_2 .. L10_2
    L1_2 = L9_2
  end
  return L1_2
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = entity
  L2_2 = L2_2.is_an_entity
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = network
    L2_2 = L2_2.has_control_of_entity
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = network
      L2_2 = L2_2.request_control_of_entity
      L3_2 = A0_2
      L2_2(L3_2)
      if not A1_2 then
        A1_2 = 50
      end
      L2_2 = utils
      L2_2 = L2_2.time_ms
      L2_2 = L2_2()
      L2_2 = L2_2 + A1_2
      while true do
        L3_2 = entity
        L3_2 = L3_2.is_an_entity
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          break
        end
        L3_2 = network
        L3_2 = L3_2.has_control_of_entity
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        if L3_2 then
          break
        end
        L3_2 = system
        L3_2 = L3_2.wait
        L4_2 = 0
        L3_2(L4_2)
        L3_2 = network
        L3_2 = L3_2.request_control_of_entity
        L4_2 = A0_2
        L3_2(L4_2)
        L3_2 = utils
        L3_2 = L3_2.time_ms
        L3_2 = L3_2()
        if L2_2 < L3_2 then
          L3_2 = false
          return L3_2
        end
      end
    end
    L2_2 = network
    L2_2 = L2_2.has_control_of_entity
    L3_2 = A0_2
    return L2_2(L3_2)
  end
  L2_2 = false
  return L2_2
end
L0_1.request_ctrl = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = streaming
    L1_2 = L1_2.has_model_loaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = streaming
      L1_2 = L1_2.request_model
      L2_2 = A0_2
      L1_2(L2_2)
      L1_2 = utils
      L1_2 = L1_2.time_ms
      L1_2 = L1_2()
      L1_2 = L1_2 + 7500
      while true do
        L2_2 = streaming
        L2_2 = L2_2.has_model_loaded
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        if L2_2 then
          break
        end
        L2_2 = system
        L2_2 = L2_2.wait
        L3_2 = 0
        L2_2(L3_2)
        L2_2 = utils
        L2_2 = L2_2.time_ms
        L2_2 = L2_2()
        if L1_2 < L2_2 then
          L2_2 = false
          return L2_2
        end
      end
    end
  end
  L1_2 = streaming
  L1_2 = L1_2.has_model_loaded
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.request_model = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = player
  L2_2 = L2_2.is_player_valid
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = player
    L2_2 = L2_2.player_id
    L2_2 = L2_2()
    if A0_2 ~= L2_2 then
      L2_2 = player
      L2_2 = L2_2.get_player_scid
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if -1 ~= L2_2 then
        if A1_2 then
          L2_2 = player
          L2_2 = L2_2.is_player_friend
          L3_2 = A0_2
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L2_2 = false
            return L2_2
        end
        else
          L2_2 = true
          return L2_2
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1.valid_player = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = player
  L1_2 = L1_2.is_player_valid
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = player
    L1_2 = L1_2.player_id
    L1_2 = L1_2()
    if A0_2 ~= L1_2 then
      L1_2 = player
      L1_2 = L1_2.can_player_be_modder
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = player
        L1_2 = L1_2.is_player_modder
        L2_2 = A0_2
        L3_2 = -1
        L1_2 = L1_2(L2_2, L3_2)
        if not L1_2 then
          L1_2 = true
          return L1_2
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.valid_modder = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = vehicle
    L1_2 = L1_2.get_ped_in_vehicle_seat
    L2_2 = A0_2
    L3_2 = -1
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = player
    L2_2 = L2_2.get_player_ped
    L3_2 = player
    L3_2 = L3_2.player_id
    L3_2 = L3_2()
    L2_2 = L2_2(L3_2)
    if L1_2 == L2_2 then
      L1_2 = true
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.valid_vehicle = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 and A1_2 then
    L2_2 = io
    L2_2 = L2_2.output
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = io
    L2_2 = L2_2.write
    L3_2 = A1_2
    L4_2 = "\n"
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = io
    L2_2 = L2_2.close
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
L0_1.write = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = entity
  L2_2 = L2_2.set_entity_velocity
  L3_2 = A0_2
  L4_2 = v3
  L4_2 = L4_2()
  L2_2(L3_2, L4_2)
  L2_2 = entity
  L2_2 = L2_2.set_entity_coords_no_offset
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_coords = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" == L1_2 then
    L1_2 = ""
    L2_2 = nil
    L3_2 = nil
    L4_2 = pairs
    L5_2 = A0_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = type
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if "number" ~= L10_2 then
        L10_2 = "\""
        L11_2 = L8_2
        L12_2 = "\""
        L10_2 = L10_2 .. L11_2 .. L12_2
        L8_2 = L10_2
      end
      L10_2 = L1_2
      L11_2 = L0_1.print_table
      L12_2 = L9_2
      L13_2 = 3
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = " "
      L10_2 = L10_2 .. L11_2 .. L12_2
      L1_2 = L10_2
      L10_2 = string
      L10_2 = L10_2.len
      L11_2 = L1_2
      L10_2 = L10_2(L11_2)
      L11_2 = 200
      if L10_2 > L11_2 and not L2_2 then
        L10_2 = L1_2
        L11_2 = "\n"
        L10_2 = L10_2 .. L11_2
        L1_2 = L10_2
        L2_2 = true
      else
        L10_2 = string
        L10_2 = L10_2.len
        L11_2 = L1_2
        L10_2 = L10_2(L11_2)
        L11_2 = 400
        if L10_2 > L11_2 and not L3_2 then
          L10_2 = L1_2
          L11_2 = "\n"
          L10_2 = L10_2 .. L11_2
          L1_2 = L10_2
          L3_2 = true
        end
      end
    end
    return L1_2
  else
    L1_2 = tostring
    L2_2 = A0_2
    return L1_2(L2_2)
  end
end
L0_1.print_table = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A0_2 then
    return
  end
  if not A1_2 then
    A1_2 = 1
  end
  if A2_2 then
    A2_2 = 49
  end
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_mod_kit_type
  L4_2 = A0_2
  L5_2 = 0
  L3_2(L4_2, L5_2)
  if 1 == A1_2 then
    L3_2 = 0
    L4_2 = A2_2 or L4_2
    if not A2_2 then
      L4_2 = 47
    end
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = vehicle
      L7_2 = L7_2.get_num_vehicle_mods
      L8_2 = A0_2
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L7_2 = L7_2 - 1
      L8_2 = vehicle
      L8_2 = L8_2.set_vehicle_mod
      L9_2 = A0_2
      L10_2 = L6_2
      L11_2 = L7_2
      L12_2 = true
      L8_2(L9_2, L10_2, L11_2, L12_2)
      L8_2 = vehicle
      L8_2 = L8_2.toggle_vehicle_mod
      L9_2 = A0_2
      L10_2 = L7_2
      L11_2 = true
      L8_2(L9_2, L10_2, L11_2)
    end
    L3_2 = vehicle
    L3_2 = L3_2.set_vehicle_bulletproof_tires
    L4_2 = A0_2
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = vehicle
    L3_2 = L3_2.set_vehicle_window_tint
    L4_2 = A0_2
    L5_2 = 1
    L3_2(L4_2, L5_2)
    L3_2 = vehicle
    L3_2 = L3_2.set_vehicle_number_plate_index
    L4_2 = A0_2
    L5_2 = 1
    L3_2(L4_2, L5_2)
  elseif 2 == A1_2 then
    L3_2 = {}
    L4_2 = 11
    L5_2 = 12
    L6_2 = 13
    L7_2 = 15
    L8_2 = 16
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L3_2[5] = L8_2
    L4_2 = 1
    L5_2 = #L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = vehicle
      L8_2 = L8_2.get_num_vehicle_mods
      L9_2 = A0_2
      L10_2 = L3_2[L7_2]
      L8_2 = L8_2(L9_2, L10_2)
      L8_2 = L8_2 - 1
      L9_2 = vehicle
      L9_2 = L9_2.set_vehicle_mod
      L10_2 = A0_2
      L11_2 = L3_2[L7_2]
      L12_2 = L8_2
      L13_2 = true
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
    L4_2 = vehicle
    L4_2 = L4_2.toggle_vehicle_mod
    L5_2 = A0_2
    L6_2 = 18
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = vehicle
    L4_2 = L4_2.set_vehicle_bulletproof_tires
    L5_2 = A0_2
    L6_2 = true
    L4_2(L5_2, L6_2)
  elseif 3 == A1_2 then
    L3_2 = 0
    L4_2 = A2_2 or L4_2
    if not A2_2 then
      L4_2 = 47
    end
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = vehicle
      L7_2 = L7_2.get_num_vehicle_mods
      L8_2 = A0_2
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L7_2 = L7_2 - 1
      if L7_2 > 0 then
        L8_2 = math
        L8_2 = L8_2.random
        L9_2 = 0
        L10_2 = L7_2
        L8_2 = L8_2(L9_2, L10_2)
        L7_2 = L8_2
      end
      L8_2 = nil
      L9_2 = math
      L9_2 = L9_2.random
      L10_2 = 0
      L11_2 = 10
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 > 5 then
        L8_2 = true
      else
        L8_2 = false
      end
      L9_2 = vehicle
      L9_2 = L9_2.set_vehicle_mod
      L10_2 = A0_2
      L11_2 = L6_2
      L12_2 = L7_2
      L13_2 = L8_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = vehicle
      L9_2 = L9_2.toggle_vehicle_mod
      L10_2 = A0_2
      L11_2 = L7_2
      L12_2 = true
      L9_2(L10_2, L11_2, L12_2)
    end
    L3_2 = vehicle
    L3_2 = L3_2.set_vehicle_bulletproof_tires
    L4_2 = A0_2
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = vehicle
    L3_2 = L3_2.set_vehicle_window_tint
    L4_2 = A0_2
    L5_2 = math
    L5_2 = L5_2.random
    L6_2 = 0
    L7_2 = 3
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L3_2 = vehicle
    L3_2 = L3_2.set_vehicle_number_plate_index
    L4_2 = A0_2
    L5_2 = math
    L5_2 = L5_2.random
    L6_2 = 0
    L7_2 = 5
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L0_1.MaxVehicle = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    return
  end
  L1_2 = entity
  L1_2 = L1_2.get_entity_speed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vehicle
  L2_2 = L2_2.set_vehicle_fixed
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = vehicle
  L2_2 = L2_2.set_vehicle_deformation_fixed
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = vehicle
  L2_2 = L2_2.set_vehicle_engine_health
  L3_2 = A0_2
  L4_2 = 1000.0
  L2_2(L3_2, L4_2)
  L2_2 = vehicle
  L2_2 = L2_2.set_vehicle_undriveable
  L3_2 = A0_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = entity
  L2_2 = L2_2.is_entity_on_fire
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = fire
    L2_2 = L2_2.stop_entity_fire
    L3_2 = A0_2
    L2_2(L3_2)
  end
  L2_2 = vehicle
  L2_2 = L2_2.is_vehicle_engine_running
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = vehicle
    L2_2 = L2_2.set_vehicle_engine_on
    L3_2 = A0_2
    L4_2 = true
    L5_2 = true
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  if L1_2 > 75.0 then
    L2_2 = vehicle
    L2_2 = L2_2.set_vehicle_forward_speed
    L3_2 = A0_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.RepairVehicle = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_primary_color
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.primary = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_secondary_color
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.secondary = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_pearlecent_color
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.pearlcolor = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_wheel_color
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.wheelcolor = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_headlight_color
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.lights = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_neon_lights_color
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.neoncolor = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_window_tint
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.window = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_wheel_type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.wheeltype = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_number_plate_index
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.platetype = L2_2
  L2_2 = vehicle
  L2_2 = L2_2.get_vehicle_number_plate_text
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.platetext = L2_2
  L2_2 = {}
  L1_2.neon = L2_2
  L2_2 = 0
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = vehicle
    L6_2 = L6_2.is_vehicle_neon_light_enabled
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = L1_2.neon
      L7_2 = L1_2.neon
      L7_2 = #L7_2
      L7_2 = L7_2 + 1
      L6_2[L7_2] = true
    end
  end
  L2_2 = {}
  L1_2.mods = L2_2
  L2_2 = 0
  L3_2 = 49
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = vehicle
    L6_2 = L6_2.is_toggle_mod_on
    L7_2 = A0_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = L1_2.mods
      L6_2[L5_2] = L5_2
    else
      L6_2 = L1_2.mods
      L7_2 = vehicle
      L7_2 = L7_2.get_vehicle_mod
      L8_2 = A0_2
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2[L5_2] = L7_2
    end
  end
  return L1_2
end
L0_1.GetVehicleMods = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_mod_kit_type
  L4_2 = A0_2
  L5_2 = 0
  L3_2(L4_2, L5_2)
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_colors
  L4_2 = A0_2
  L5_2 = A1_2.primary
  L6_2 = A1_2.secondary
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_extra_colors
  L4_2 = A0_2
  L5_2 = A1_2.pearlcolor
  L6_2 = A1_2.wheelcolor
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_headlight_color
  L4_2 = A0_2
  L5_2 = A1_2.lights
  L3_2(L4_2, L5_2)
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_neon_lights_color
  L4_2 = A0_2
  L5_2 = A1_2.neoncolor
  L3_2(L4_2, L5_2)
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_window_tint
  L4_2 = A0_2
  L5_2 = A1_2.window
  L3_2(L4_2, L5_2)
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_wheel_type
  L4_2 = A0_2
  L5_2 = A1_2.wheeltype
  L3_2(L4_2, L5_2)
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_bulletproof_tires
  L4_2 = A0_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = vehicle
  L3_2 = L3_2.set_vehicle_number_plate_index
  L4_2 = A0_2
  L5_2 = A1_2.platetype
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = A1_2.neon
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = vehicle
    L7_2 = L7_2.set_vehicle_neon_light_enabled
    L8_2 = A0_2
    L9_2 = L6_2
    L10_2 = true
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = 0
  L4_2 = 49
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2.mods
    L7_2 = L7_2[L6_2]
    if L7_2 then
      L7_2 = vehicle
      L7_2 = L7_2.set_vehicle_mod
      L8_2 = A0_2
      L9_2 = L6_2
      L10_2 = A1_2.mods
      L10_2 = L10_2[L6_2]
      L11_2 = false
      L7_2(L8_2, L9_2, L10_2, L11_2)
      L7_2 = vehicle
      L7_2 = L7_2.toggle_vehicle_mod
      L8_2 = A0_2
      L9_2 = L6_2
      L10_2 = true
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1.SetVehicleMods = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = math
  L3_2 = L3_2.rad
  L4_2 = A1_2 - 180
  L4_2 = L4_2 * -1
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2
  L3_2 = A0_2.x
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = -A2_2
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  A0_2.x = L3_2
  L3_2 = A0_2.y
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = -A2_2
  L4_2 = L4_2 * L5_2
  L3_2 = L3_2 + L4_2
  A0_2.y = L3_2
  return A0_2
end
L0_1.OffsetCoords = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = string
  L1_2 = L1_2.lower
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = nil
  L2_2 = 0
  L3_2 = 31
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = player
    L6_2 = L6_2.get_player_scid
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if -1 ~= L6_2 then
      L6_2 = string
      L6_2 = L6_2.lower
      L7_2 = player
      L7_2 = L7_2.get_player_name
      L8_2 = L5_2
      L7_2, L8_2 = L7_2(L8_2)
      L6_2 = L6_2(L7_2, L8_2)
      L1_2 = L6_2
      if L1_2 == A0_2 then
        return L5_2
      end
    end
  end
  L2_2 = -1
  return L2_2
end
L0_1.id_from_name = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = player
  L3_2 = L3_2.get_player_ped
  L4_2 = player
  L4_2 = L4_2.player_id
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = type
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = ped
    L7_2 = L7_2.get_vehicle_ped_is_using
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L6_2 = L7_2
    if 0 ~= L6_2 then
      L7_2 = ped
      L7_2 = L7_2.is_ped_in_any_vehicle
      L8_2 = L3_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = ped
        L7_2 = L7_2.clear_ped_tasks_immediately
        L8_2 = L3_2
        L7_2(L8_2)
        L7_2 = system
        L7_2 = L7_2.wait
        L8_2 = 10
        L7_2(L8_2)
      end
    end
  end
  L7_2 = ped
  L7_2 = L7_2.get_vehicle_ped_is_using
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L5_2 = L7_2
  if 0 ~= L5_2 then
    L7_2 = L0_1.request_ctrl
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = entity
    L7_2 = L7_2.set_entity_velocity
    L8_2 = L5_2
    L9_2 = v3
    L9_2, L10_2, L11_2 = L9_2()
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L3_2 = L5_2
  end
  L7_2 = type
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if "number" == L7_2 then
    L7_2 = entity
    L7_2 = L7_2.get_entity_coords
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L4_2 = L7_2
  else
    L4_2 = A0_2
  end
  if A1_2 then
    L7_2 = L4_2.z
    L7_2 = L7_2 + A1_2
    L4_2.z = L7_2
  end
  L7_2 = L0_1.set_coords
  L8_2 = L3_2
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  if A2_2 then
    L7_2 = entity
    L7_2 = L7_2.set_entity_heading
    L8_2 = L3_2
    L9_2 = A2_2
    L7_2(L8_2, L9_2)
  end
  if L6_2 then
    L7_2 = system
    L7_2 = L7_2.wait
    L8_2 = 1500
    L7_2(L8_2)
    L7_2 = ped
    L7_2 = L7_2.set_ped_into_vehicle
    L8_2 = player
    L8_2 = L8_2.get_player_ped
    L9_2 = player
    L9_2 = L9_2.player_id
    L9_2, L10_2, L11_2 = L9_2()
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = L6_2
    L10_2 = vehicle
    L10_2 = L10_2.get_free_seat
    L11_2 = L6_2
    L10_2, L11_2 = L10_2(L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1.tp = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = L0_1.request_ctrl
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = system
  L4_2 = L4_2.wait
  L5_2 = 0
  L4_2(L5_2)
  L4_2 = vehicle
  L4_2 = L4_2.set_vehicle_tire_smoke_color
  L5_2 = A0_2
  L6_2 = A1_2[1]
  L7_2 = A1_2[2]
  L8_2 = A1_2[3]
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = vehicle
  L4_2 = L4_2.set_vehicle_custom_primary_colour
  L5_2 = A0_2
  L6_2 = L1_1
  L7_2 = {}
  L8_2 = A1_2[1]
  L9_2 = A1_2[2]
  L10_2 = A1_2[3]
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = vehicle
  L4_2 = L4_2.set_vehicle_custom_secondary_colour
  L5_2 = A0_2
  L6_2 = L1_1
  L7_2 = {}
  L8_2 = A1_2[1]
  L9_2 = A1_2[2]
  L10_2 = A1_2[3]
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = vehicle
  L4_2 = L4_2.set_vehicle_custom_pearlescent_colour
  L5_2 = A0_2
  L6_2 = L1_1
  L7_2 = {}
  L8_2 = A1_2[1]
  L9_2 = A1_2[2]
  L10_2 = A1_2[3]
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = vehicle
  L4_2 = L4_2.set_vehicle_neon_lights_color
  L5_2 = A0_2
  L6_2 = L1_1
  L7_2 = {}
  L8_2 = A1_2[1]
  L9_2 = A1_2[2]
  L10_2 = A1_2[3]
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = vehicle
  L4_2 = L4_2.set_vehicle_custom_wheel_colour
  L5_2 = A0_2
  L6_2 = L1_1
  L7_2 = {}
  L8_2 = A1_2[1]
  L9_2 = A1_2[2]
  L10_2 = A1_2[3]
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if not A2_2 then
    A2_2 = 0
  end
  L4_2 = A1_2[1]
  L5_2 = 200
  if L4_2 > L5_2 then
    L4_2 = A1_2[1]
    L5_2 = 256
    if L4_2 < L5_2 then
      L4_2 = A1_2[2]
      L5_2 = 200
      if L4_2 > L5_2 then
        L4_2 = A1_2[2]
        L5_2 = 256
        if L4_2 < L5_2 then
          L4_2 = A1_2[3]
          L5_2 = 220
          if L4_2 > L5_2 then
            L4_2 = A1_2[3]
            L5_2 = 256
            if L4_2 < L5_2 then
              A2_2 = 0
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 0 then
    L4_2 = A1_2[1]
    if L4_2 < 30 then
      L4_2 = A1_2[2]
      if L4_2 >= 0 then
        L4_2 = A1_2[2]
        if L4_2 < 50 then
          L4_2 = A1_2[3]
          L5_2 = 220
          if L4_2 > L5_2 then
            L4_2 = A1_2[3]
            L5_2 = 256
            if L4_2 < L5_2 then
              A2_2 = 1
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 0 then
    L4_2 = A1_2[1]
    if L4_2 < 30 then
      L4_2 = A1_2[2]
      if L4_2 >= 50 then
        L4_2 = A1_2[2]
        if L4_2 < 110 then
          L4_2 = A1_2[3]
          L5_2 = 220
          if L4_2 > L5_2 then
            L4_2 = A1_2[3]
            L5_2 = 256
            if L4_2 < L5_2 then
              A2_2 = 2
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 0 then
    L4_2 = A1_2[1]
    if L4_2 < 30 then
      L4_2 = A1_2[2]
      if L4_2 >= 110 then
        L4_2 = A1_2[2]
        L5_2 = 256
        if L4_2 < L5_2 then
          L4_2 = A1_2[3]
          if L4_2 > 100 then
            L4_2 = A1_2[3]
            L5_2 = 220
            if L4_2 <= L5_2 then
              A2_2 = 3
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 30 then
    L4_2 = A1_2[1]
    if L4_2 < 120 then
      L4_2 = A1_2[2]
      if L4_2 >= 110 then
        L4_2 = A1_2[2]
        L5_2 = 256
        if L4_2 < L5_2 then
          L4_2 = A1_2[3]
          if L4_2 >= 0 then
            L4_2 = A1_2[3]
            if L4_2 <= 100 then
              A2_2 = 4
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 120 then
    L4_2 = A1_2[1]
    L5_2 = 256
    if L4_2 < L5_2 then
      L4_2 = A1_2[2]
      if L4_2 >= 110 then
        L4_2 = A1_2[2]
        L5_2 = 256
        if L4_2 < L5_2 then
          L4_2 = A1_2[3]
          if L4_2 >= 0 then
            L4_2 = A1_2[3]
            if L4_2 < 100 then
              A2_2 = 5
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 120 then
    L4_2 = A1_2[1]
    L5_2 = 256
    if L4_2 < L5_2 then
      L4_2 = A1_2[2]
      if L4_2 >= 110 then
        L4_2 = A1_2[2]
        L5_2 = 200
        if L4_2 < L5_2 then
          L4_2 = A1_2[3]
          if L4_2 >= 0 then
            L4_2 = A1_2[3]
            if L4_2 < 100 then
              A2_2 = 6
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 120 then
    L4_2 = A1_2[1]
    L5_2 = 256
    if L4_2 < L5_2 then
      L4_2 = A1_2[2]
      if L4_2 > 45 then
        L4_2 = A1_2[2]
        if L4_2 < 109 then
          L4_2 = A1_2[3]
          if L4_2 >= 0 then
            L4_2 = A1_2[3]
            if L4_2 < 100 then
              A2_2 = 7
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 120 then
    L4_2 = A1_2[1]
    L5_2 = 256
    if L4_2 < L5_2 then
      L4_2 = A1_2[2]
      if L4_2 >= 0 then
        L4_2 = A1_2[2]
        if L4_2 <= 45 then
          L4_2 = A1_2[3]
          if L4_2 >= 0 then
            L4_2 = A1_2[3]
            if L4_2 < 100 then
              A2_2 = 8
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 120 then
    L4_2 = A1_2[1]
    L5_2 = 256
    if L4_2 < L5_2 then
      L4_2 = A1_2[2]
      if L4_2 > 45 then
        L4_2 = A1_2[2]
        if L4_2 < 100 then
          L4_2 = A1_2[3]
          if L4_2 >= 50 then
            L4_2 = A1_2[3]
            L5_2 = 150
            if L4_2 < L5_2 then
              A2_2 = 9
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 120 then
    L4_2 = A1_2[1]
    L5_2 = 256
    if L4_2 < L5_2 then
      L4_2 = A1_2[2]
      if L4_2 >= 0 then
        L4_2 = A1_2[2]
        if L4_2 <= 45 then
          L4_2 = A1_2[3]
          L5_2 = 150
          if L4_2 >= L5_2 then
            L4_2 = A1_2[3]
            L5_2 = 256
            if L4_2 < L5_2 then
              A2_2 = 10
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 0 then
    L4_2 = A1_2[1]
    if L4_2 < 120 then
      L4_2 = A1_2[2]
      if L4_2 >= 0 then
        L4_2 = A1_2[2]
        if L4_2 <= 45 then
          L4_2 = A1_2[3]
          L5_2 = 150
          if L4_2 >= L5_2 then
            L4_2 = A1_2[3]
            L5_2 = 256
            if L4_2 < L5_2 then
              A2_2 = 11
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2[1]
  if L4_2 >= 0 then
    L4_2 = A1_2[1]
    if L4_2 < 30 then
      L4_2 = A1_2[2]
      if L4_2 >= 0 then
        L4_2 = A1_2[2]
        if L4_2 <= 45 then
          L4_2 = A1_2[3]
          L5_2 = 150
          if L4_2 >= L5_2 then
            L4_2 = A1_2[3]
            L5_2 = 256
            if L4_2 < L5_2 then
              A2_2 = 12
            end
          end
        end
      end
    end
  end
  if A3_2 then
    A2_2 = A3_2
  end
  L4_2 = vehicle
  L4_2 = L4_2.set_vehicle_headlight_color
  L5_2 = A0_2
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.color_veh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 or not A1_2 then
    return
  end
  L2_2 = math
  L2_2 = L2_2.random
  L3_2 = 0
  L4_2 = ped
  L4_2 = L4_2.get_number_of_ped_drawable_variations
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 0
  L5_2 = ped
  L5_2 = L5_2.get_number_of_ped_texture_variations
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = L2_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_2 = ped
  L4_2 = L4_2.set_ped_component_variation
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = math
  L9_2 = L9_2.random
  L10_2 = 0
  L11_2 = 3
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.random_outfit = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 or not A1_2 then
    return
  end
  if not A2_2 then
    A2_2 = false
  end
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 0
  L5_2 = ped
  L5_2 = L5_2.get_number_of_ped_drawable_variations
  L6_2 = A0_2
  L7_2 = A1_2
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = math
  L4_2 = L4_2.random
  L5_2 = 0
  L6_2 = ped
  L6_2 = L6_2.get_number_of_ped_texture_variations
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = L3_2
  L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = ped
  L5_2 = L5_2.set_ped_prop_index
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = A2_2
  return L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.random_property = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 then
    L2_2 = type
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      if not A1_2 then
        A1_2 = 50
      end
      L2_2 = 1
      L3_2 = #A0_2
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2[L5_2]
        L7_2 = player
        L7_2 = L7_2.get_player_ped
        L8_2 = player
        L8_2 = L8_2.player_id
        L8_2, L9_2, L10_2, L11_2 = L8_2()
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
        if L6_2 ~= L7_2 then
          L6_2 = A0_2[L5_2]
          L7_2 = ped
          L7_2 = L7_2.get_vehicle_ped_is_using
          L8_2 = player
          L8_2 = L8_2.get_player_ped
          L9_2 = player
          L9_2 = L9_2.player_id
          L9_2, L10_2, L11_2 = L9_2()
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
          L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
          if L6_2 ~= L7_2 then
            L6_2 = L0_1.request_ctrl
            L7_2 = A0_2[L5_2]
            L8_2 = A1_2
            L6_2(L7_2, L8_2)
            L6_2 = entity
            L6_2 = L6_2.detach_entity
            L7_2 = A0_2[L5_2]
            L6_2(L7_2)
            L6_2 = entity
            L6_2 = L6_2.set_entity_as_mission_entity
            L7_2 = A0_2[L5_2]
            L8_2 = true
            L9_2 = true
            L6_2(L7_2, L8_2, L9_2)
            L6_2 = entity
            L6_2 = L6_2.set_entity_as_no_longer_needed
            L7_2 = A0_2[L5_2]
            L6_2(L7_2)
            L6_2 = entity
            L6_2 = L6_2.set_entity_velocity
            L7_2 = A0_2[L5_2]
            L8_2 = v3
            L8_2, L9_2, L10_2, L11_2 = L8_2()
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
            L6_2 = entity
            L6_2 = L6_2.set_entity_coords_no_offset
            L7_2 = A0_2[L5_2]
            L8_2 = v3
            L9_2 = 8000
            L10_2 = 8000
            L11_2 = -1000
            L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
            L6_2 = entity
            L6_2 = L6_2.delete_entity
            L7_2 = A0_2[L5_2]
            L6_2(L7_2)
          end
        end
      end
  end
  else
    L2_2 = L0_1.request_ctrl
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = entity
    L2_2 = L2_2.detach_entity
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = entity
    L2_2 = L2_2.set_entity_as_mission_entity
    L3_2 = A0_2
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = entity
    L2_2 = L2_2.set_entity_as_no_longer_needed
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = entity
    L2_2 = L2_2.set_entity_velocity
    L3_2 = A0_2
    L4_2 = v3
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2()
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = entity
    L2_2 = L2_2.set_entity_coords_no_offset
    L3_2 = A0_2
    L4_2 = v3
    L5_2 = 8000
    L6_2 = 8000
    L7_2 = -1000
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = entity
    L2_2 = L2_2.delete_entity
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
L0_1.clear = L2_1
return L0_1
