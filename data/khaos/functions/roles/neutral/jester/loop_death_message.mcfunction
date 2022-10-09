# called by main:tick

scoreboard players remove dm_count khaos.var 1
data modify storage dm_array Message set from storage dm_array Temp[0]
data remove storage dm_array Temp[0]
