# Desc: Creates required global scores
#
# Called by: minecraft:init

scoreboard objectives add khaos.death deathCount
scoreboard objectives add khaos.start_game trigger
scoreboard objectives add khaos.give_role trigger
scoreboard objectives add khaos.reset trigger

gamerule doImmediateRespawn true
gamerule showDeathMessages false
gamerule commandBlockOutput false
# comment helps with testing and debugging
# gamerule sendCommandFeedback false

# teams
team add khaos.town "Town"
team add khaos.mafia "Mafia"

# keeps track of players, roles, and game state
scoreboard objectives add khaos.var dummy
scoreboard players set Players khaos.var 0
scoreboard players set GoodRoles khaos.var 0
scoreboard players set EvilRoles khaos.var 0
scoreboard players set NeutralRoles khaos.var 0
# 0: not playing, 1: playing
scoreboard players set GameState khaos.var 0

scoreboard players set bool_roles khaos.var 0

#resets tags and scoreboards
scoreboard players set @a khaos.death 0
tag @a remove khaos.trigger
