# called by khaos:game_state_handling/give_role/finish_give_role

tag @a remove khaos.role

scoreboard players operation gr_count khaos.loop = Players khaos.var
scoreboard players set GoodRoles khaos.var 0
scoreboard players set EvilRoles khaos.var 0
scoreboard players set MafiaRoles khaos.var 0
