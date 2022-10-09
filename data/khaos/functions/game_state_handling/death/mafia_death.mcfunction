tellraw @a [{"selector":"@s"},{"text":" died"}]

scoreboard players remove MafiaRoles khaos.var 1
scoreboard players remove EvilRoles khaos.var 1

#execute if score MafiaRoles
 khaos.var matches 0 run
execute if score EvilRoles khaos.var matches 0 run
