# called by game_state_handling/start_game

scoreboard players enable @a khaos.reset
scoreboard players set GameState khaos.var 1

time set 0
weather clear

effect clear @a
effect give @a minecraft:instant_health 1 255 true
effect give @a minecraft:saturation 1 255 true

#initialize teams and team rules

title @a times 10 40 10
title @a title {"text":"The Game has Started", "color":"white"}
