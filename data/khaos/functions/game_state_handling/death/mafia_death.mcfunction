# called by main:tick

tellraw @a[team=!khaos.mafia] [{"selector":"@s"},{"text":" died"}]
tellraw @a[team=khaos.mafia] [{"text":"Your fellow Mafioso, "},{"selector":"@s"},{"text":", died"}]

gamemode spectator @s

scoreboard players remove MafiaRoles khaos.var 1
scoreboard players remove EvilRoles khaos.var 1

#execute if score MafiaRoles khaos.var matches 0 run
execute if score EvilRoles khaos.var matches 0 run function khaos:game_state_handling/win_condition/town_win_condition
