# called by khaos:game_state_handling/give_role/loop_give_role

tag @s add khaos.role_init
scoreboard players set @s khaos.roles_id 0101

team join khaos.town @s

scoreboard players add GoodRoles khaos.var 1
