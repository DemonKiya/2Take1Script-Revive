local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = {}
L1_1 = {}
L2_1 = "Remembered"
L3_1 = "Profanity Filter Bypass"
L4_1 = "Modded Health"
L5_1 = "Modded Armor"
L6_1 = "Vehicle Godmode"
L7_1 = "Modded Off The Radar"
L8_1 = "Modded Script Event"
L9_1 = "Max Speed Bypass"
L10_1 = "Player Godmode"
L11_1 = "Bad Net Event"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L1_1[10] = L11_1
L2_1 = print
L3_1 = "Preparing modderflags..."
L2_1(L3_1)
L2_1 = 1
L3_1 = #L1_1
L4_1 = 1
for L5_1 = L2_1, L3_1, L4_1 do
  L6_1 = 1
  while true do
    L7_1 = player
    L7_1 = L7_1.get_modder_flag_text
    L8_1 = L6_1
    L7_1 = L7_1(L8_1)
    L7_1 = #L7_1
    if not (L7_1 > 0) then
      break
    end
    L7_1 = player
    L7_1 = L7_1.get_modder_flag_text
    L8_1 = L6_1
    L7_1 = L7_1(L8_1)
    L8_1 = L1_1[L5_1]
    if L7_1 == L8_1 then
      goto lbl_47
    end
    L6_1 = L6_1 * 2
  end
  L7_1 = player
  L7_1 = L7_1.add_modder_flag
  L8_1 = L1_1[L5_1]
  L7_1(L8_1)
  ::lbl_47::
  L7_1 = L1_1[L5_1]
  L0_1[L7_1] = L6_1
end
return L0_1
