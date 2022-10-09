# called by main:tick

tellraw @a [{"selector":"@s"},{"text":" died"}]

gamemode spectator @s

scoreboard players remove GoodRoles khaos.var 1

execute if score GoodRoles khaos.var matches 0 if score EvilRoles khaos.var matches 0 run function khaos:game_state_handling/win_condition/drawn_condition
execute if score GoodRoles khaos.var matches 0 if score EvilRoles khaos.var matches 1.. run function khaos:game_state_handling/win_condition/mafia_win_condition
# in future replace mafia_win_condition with an evil_win_condition_check
