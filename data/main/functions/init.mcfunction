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
team add khaos.town
team modify khaos.town displayName {"text":"Town", "color":"green"}
team add khaos.mafia
team modify khaos.mafia displayName {"text":"Mafia", "color":"dark_red"}
# coven light_purple
# neutral gold
# neutral_evil gray

# keeps track of players, roles, and game state
scoreboard objectives add khaos.var dummy
scoreboard players set Players khaos.var 0
scoreboard players set GoodRoles khaos.var 0
scoreboard players set EvilRoles khaos.var 0
scoreboard players set NeutralRoles khaos.var 0
scoreboard players set MafiaRoles khaos.var 0
# 0: not playing, 1: playing
scoreboard players set GameState khaos.var 0

scoreboard players set bool_roles khaos.var 0

#ticking timers
scoreboard players set HealerGiveCrystal khaos.var 0

# constants
scoreboard objectives add khaos.const dummy
scoreboard players set 10 khaos.const 10
scoreboard players set 24000 khaos.const 24000

#resets tags and scoreboards
scoreboard players set @a khaos.death 0
tag @a remove khaos.trigger
