# called by main:tick

scoreboard players set @a khaos.start_game 0

execute if score bool_roles khaos.var matches 1 run function khaos:game_state_handling/start_game/if_bool_roles

execute unless score bool_roles khaos.var matches 1 run function khaos:game_state_handling/start_game/unless_bool_roles
