# called by main:tick

scoreboard players set @a khaos.reset 0
scoreboard players enable @a khaos.start_game
scoreboard players set GameState khaos.var 0

scoreboard players set bool_roles khaos.var 0

scoreboard players set @a khaos.death 0
gamemode survival @a[gamemode=spectator]

tag @a[tag=khaos.trigger] remove khaos.trigger

advancement revoke @a only khaos:town_win_condition

tellraw @a {"text":"The Game has Reset"}
