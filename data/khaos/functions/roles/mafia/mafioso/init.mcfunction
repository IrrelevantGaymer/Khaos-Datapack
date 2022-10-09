# called by khaos:game_state_handling/give_role/loop_give_role

tag @s add khaos.role_init
scoreboard players set @s khaos.roles_id 0200

team join khaos.mafia @s

scoreboard players add MafiaRoles khaos.var 1
scoreboard players add EvilRoles khaos.var 1
