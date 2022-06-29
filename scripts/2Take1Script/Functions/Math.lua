local L0_1, L1_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = os
  L0_2 = L0_2.date
  L1_2 = "*t"
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.month
  if L1_2 < 10 then
    L1_2 = "0"
    L2_2 = L0_2.month
    L1_2 = L1_2 .. L2_2
    L0_2.month = L1_2
  end
  L1_2 = L0_2.day
  if L1_2 < 10 then
    L1_2 = "0"
    L2_2 = L0_2.day
    L1_2 = L1_2 .. L2_2
    L0_2.day = L1_2
  end
  L1_2 = L0_2.hour
  if L1_2 < 10 then
    L1_2 = "0"
    L2_2 = L0_2.hour
    L1_2 = L1_2 .. L2_2
    L0_2.hour = L1_2
  end
  L1_2 = L0_2.min
  if L1_2 < 10 then
    L1_2 = "0"
    L2_2 = L0_2.min
    L1_2 = L1_2 .. L2_2
    L0_2.min = L1_2
  end
  L1_2 = L0_2.sec
  if L1_2 < 10 then
    L1_2 = "0"
    L2_2 = L0_2.sec
    L1_2 = L1_2 .. L2_2
    L0_2.sec = L1_2
  end
  L1_2 = "["
  L2_2 = L0_2.year
  L3_2 = "-"
  L4_2 = L0_2.month
  L5_2 = "-"
  L6_2 = L0_2.day
  L7_2 = " "
  L8_2 = L0_2.hour
  L9_2 = ":"
  L10_2 = L0_2.min
  L11_2 = ":"
  L12_2 = L0_2.sec
  L13_2 = "]"
  L1_2 = L1_2 .. L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
  return L1_2
end
L0_1.TimePrefix = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  if not A3_2 then
    A3_2 = 255
  end
  L4_2 = A0_2 & 255
  L4_2 = L4_2 << 0
  L5_2 = A1_2 & 255
  L5_2 = L5_2 << 8
  L4_2 = L4_2 | L5_2
  L5_2 = A2_2 & 255
  L5_2 = L5_2 << 16
  L4_2 = L4_2 | L5_2
  L5_2 = A3_2 & 255
  L5_2 = L5_2 << 24
  L4_2 = L4_2 | L5_2
  return L4_2
end
L0_1.RGBAToInt = L1_1
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
L0_1.RGBToHex = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "%0X"
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.DecToHex = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "%02X"
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
L0_1.DecToHex2 = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = tonumber
  L2_2 = A0_2
  L3_2 = 16
  return L1_2(L2_2, L3_2)
end
L0_1.HexToDec = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.find
  L4_2 = "%."
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = tonumber
    L6_2 = L1_2
    L5_2 = L1_2.sub
    L7_2 = 1
    L8_2 = L2_2 - 1
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    return L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    return A0_2
  end
end
L0_1.ToInt = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 0
  end
  L3_2 = 10
  L2_2 = L3_2 ^ L2_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 * L2_2
  L4_2 = L4_2 + 0.5
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 / L2_2
  return L3_2
end
L0_1.Round = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A2_2 then
    A2_2 = 800
  end
  L3_2 = gameplay
  L3_2 = L3_2.get_ground_z
  L4_2 = v3
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  while not L3_2 do
    A2_2 = A2_2 - 5
    L5_2 = gameplay
    L5_2 = L5_2.get_ground_z
    L6_2 = v3
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L6_2
    L3_2 = L5_2
    L5_2 = -200
    if A2_2 < L5_2 then
      A2_2 = -200
      L3_2 = true
    end
  end
  return L4_2
end
L0_1.GetGroundZ = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A2_2 then
    L3_2 = v3
    L3_2 = L3_2()
    A2_2 = L3_2
  end
  L3_2 = ped
  L3_2 = L3_2.get_ped_bone_coords
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  while not L3_2 do
    L5_2 = system
    L5_2 = L5_2.wait
    L6_2 = 0
    L5_2(L6_2)
    L5_2 = ped
    L5_2 = L5_2.get_ped_bone_coords
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L6_2
    L3_2 = L5_2
  end
  return L4_2
end
L0_1.GetPedBoneCoords = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A3_2 then
    A3_2 = true
  end
  L4_2 = A0_2
  L5_2 = A0_2
  if A1_2 then
    L6_2 = "MP0_"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L4_2 = L6_2
    L6_2 = "MP1_"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L6_2
    L6_2 = gameplay
    L6_2 = L6_2.get_hash_key
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = gameplay
  L6_2 = L6_2.get_hash_key
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L4_2 = L6_2
  L6_2 = stats
  L6_2 = L6_2.stat_get_int
  L7_2 = L4_2
  L8_2 = -1
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if L6_2 ~= A2_2 then
    L8_2 = stats
    L8_2 = L8_2.stat_set_int
    L9_2 = L4_2
    L10_2 = A2_2
    L11_2 = A3_2
    L8_2(L9_2, L10_2, L11_2)
  end
  if A1_2 then
    L8_2 = stats
    L8_2 = L8_2.stat_get_int
    L9_2 = L5_2
    L10_2 = -1
    L8_2, L9_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= A2_2 then
      L10_2 = stats
      L10_2 = L10_2.stat_set_int
      L11_2 = L5_2
      L12_2 = A2_2
      L13_2 = A3_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
end
L0_1.SetIntStat = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A3_2 then
    A3_2 = true
  end
  L4_2 = A0_2
  L5_2 = A0_2
  if A1_2 then
    L6_2 = "MP0_"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L4_2 = L6_2
    L6_2 = "MP1_"
    L7_2 = A0_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L6_2
    L6_2 = gameplay
    L6_2 = L6_2.get_hash_key
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = gameplay
  L6_2 = L6_2.get_hash_key
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L4_2 = L6_2
  L6_2 = stats
  L6_2 = L6_2.stat_get_float
  L7_2 = L4_2
  L8_2 = -1
  L6_2, L7_2 = L6_2(L7_2, L8_2)
  if L6_2 ~= A2_2 then
    L8_2 = stats
    L8_2 = L8_2.stat_set_float
    L9_2 = L4_2
    L10_2 = A2_2
    L11_2 = A3_2
    L8_2(L9_2, L10_2, L11_2)
  end
  if A1_2 then
    L8_2 = stats
    L8_2 = L8_2.stat_get_float
    L9_2 = L5_2
    L10_2 = -1
    L8_2, L9_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= A2_2 then
      L10_2 = stats
      L10_2 = L10_2.stat_set_float
      L11_2 = L5_2
      L12_2 = A2_2
      L13_2 = A3_2
      L10_2(L11_2, L12_2, L13_2)
    end
  end
end
L0_1.SetFloatStat = L1_1
return L0_1
