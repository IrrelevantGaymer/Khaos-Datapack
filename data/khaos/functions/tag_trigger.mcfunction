# called by main:tick

scoreboard players set @s khaos.start_game 0
scoreboard players enable @s khaos.start_game
scoreboard players set @s khaos.give_role 0
scoreboard players enable @s khaos.give_role
scoreboard players set @s khaos.reset 0
scoreboard players enable @s khaos.reset

scoreboard players add Players khaos.var 1

tag @s add khaos.trigger
