# called by main:tick

scoreboard players set @s khaos.give_role 0
scoreboard players enable @s khaos.give_role


#check if more than minimum number of players???
scoreboard players set gr_init khaos.var 1
scoreboard players operation gr_count khaos.loop = Players khaos.var
