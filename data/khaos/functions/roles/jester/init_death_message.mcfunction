data modify storage dm_array Temp set from storage dm_array Values
data modify storage dm_array Message set value ""

# function random_death_message
# summon invisible armor_stand
# loot replace entity armor_stand weapon.mainhand loot khaos:death_message
# convert item into int, store it in dm_count, then kill armor_stand

scoreboard players set init_loop_dm khaos.var 1
