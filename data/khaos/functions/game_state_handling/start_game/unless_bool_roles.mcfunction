# called by game_state_handling/start_game

scoreboard players enable @s khaos.start_game
tellraw @s {"text":"Roles have not been given out yet.  Use the /trigger give_role command to hand out roles.", "color":"red"}
