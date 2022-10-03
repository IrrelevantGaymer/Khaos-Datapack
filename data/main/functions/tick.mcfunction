execute as @a[tag=!khaos.trigger] run function khaos:tag_trigger

# detect triggers
execute as @a[scores={khaos.start_game = 1..}] run function khaos:start_game
execute as @a[scores={khaos.give_role = 1..}] run function khaos:game_state_handling/give_role
execute as @a[scores={khaos.reset = 1..}] run function khaos:game_state_handling/reset

# region GameState : Playing

# death handling
execute if score GameState khaos.var matches 1 as @a[scores={khaos.death = 1..}, tag=!khaos.death] run tag @s add khaos.death
execute if score GameState khaos.var matches 1 as @a[tag=khaos.death, gamemode=survival] run gamemode spectator @s
execute if score GameState khaos.var matches 1 as @a[tag=khaos.avoid_processed, tag=khaos.death, tag=khaos.jester, tag=!khaos.haunted] run function khaos:roles/jester/init_haunt
# endregion GameState : Playing



# region loops

# give_role loop handling


# jester death message loop handling
execute if score dm_init khaos.loop matches 1 if score dm_count khaos.loop matches 1.. run function khaos:roles/jester/loop_death_message
execute if score dm_init khaos.loop matches 1 if score dm_count khaos.loop matches 0 run function khaos:roles/jester/finish_death_message

# jester haunt list loop handling
execute if score hl_init khaos.loop matches 1 if score hl_count khaos.loop matches 1.. run function khaos:roles/jester/loop_haunt_list
execute if score hl_init khaos.loop matches 1 if score hl_count khaos.loop mathces 0 run function khaos:roles/jester/finish_haunt_list

# endregion loops
