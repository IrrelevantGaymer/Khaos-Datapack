# we could write out all player names using the player_head loot table and nbt data
# in one message, there is an issue though with converting a string to a list of characters
# as well as not being able to add a ClickEvent to specific names, unless we separate

# type out a list of characters as a string
# tellraw @s {"storage":"khaos:players", "nbt":"HauntList", "interpret":true}

tag @r[tag=!avoid_processed, tag=!processed, tag=!death] add in_process

# create some way to have khaos:roles/jester/haunt kill the player in question
tellraw @s {"selector":"@p[tag=in_process]","color":"red","clickEvent":{"action":"run_command","value":"function khaos:roles/jester/haunt"},"hoverEvent":{"action":"show_text","contents":["Ensue Chaos"]}}

tag @p[tag=in_process] add processed
tag @p[tag=in_process] remove in_process
