# called by main:tick

scoreboard players operation Temp khaos.var = Players khaos.var
scoreboard players operation Temp khaos.var *= 10 khaos.const
scoreboard players operation Min khaos.var = Temp khaos.var
scoreboard players operation Max khaos.var = Temp khaos.var

scoreboard players set Temp khaos.var 4
scoreboard players operation Min khaos.var /= Temp khaos.var
scoreboard players set Temp khaos.var 3
scoreboard players operation Max khaos.var /= Temp khaos.var

scoreboard players operation Temp khaos.var = EvilRoles khaos.var
scoreboard players operation Temp khaos.var *= 10 khaos.const

execute if score Temp khaos.var >= Min khaos.var if score Temp khaos.var <= Max khaos.var run function khaos:game_state_handling/give_role/assign_roles
execute unless score Temp khaos.var >= Min khaos.var run function khaos:game_state_handling/give_role/redo_loop
execute unless score Temp khaos.var <= Max khaos.var run function khaos:game_state_handling/give_role/redo_loop
# maybe also check if anyone has a role_id score of 0
