# called by advancement town_win_condition
# called by game_state_handling/death/mafia_death

scoreboard players set GameState khaos.var 0

title @a times 20 80 20
execute if score EvilRoles khaos.var matches 0 run title @a subtitle {"text":"by Elimating Bitches", "color":"green"}
execute unless score EvilRoles khaos.var matches 0 run title @a subtitle {"text":"by Defeating the Ender Dragon", "color":"green"}
title @a title {"text":"Town has Won", "color":"green"}
