# called by main:tick

scoreboard players set @a khaos.start_game 0

# execute if score bool_roles khaos.var matches 1 run function start_game_if_bool_roles
# function start_game_if_bool_roles
scoreboard players enable @a khaos.reset
scoreboard players set GameState khaos.var 1

# execute if score bool_roles khaos.var matches 1 run function start_game_unless_bool_roles
# function start_game_unless_bool_roles
scoreboard players enable @s khaos.start_game
tellraw @s {"text":"Roles have not been given out yet.  Use the /trigger give_role command to hand out roles.", "color":"red"}
