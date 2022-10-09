tellraw @a [{"selector":"@s"},{"text":" died"}]

scoreboard players remove GoodRoles khaos.var 1

execute if score GoodRoles khaos.var matches 0 if score EvilRoles khaos.var 0 run khaos:game_state_handling/win_condition/drawn_condition
execute if score GoodRoles khaos.var matches 0 if score EvilRoles khaos.var 1.. run khaos:game_state_handling/win_condition/mafia_win_condition
# comment replace mafia_win_condition with an evil_win_condition_check
