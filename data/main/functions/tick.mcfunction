execute as @a[tag=!khaos.trigger] run function khaos:tag_trigger

# detect triggers
execute as @a[scores={khaos.start_game = 1..}] run function khaos:game_state_handling/start_game
execute as @a[scores={khaos.give_role = 1..}] run function khaos:game_state_handling/give_role
execute as @a[scores={khaos.reset = 1..}] run function khaos:game_state_handling/reset

# region GameState : Playing

# death handling
execute if score GameState khaos.var matches 1 as @a[scores={khaos.death = 1..}, tag=!khaos.death] run tag @s add khaos.death
execute if score GameState khaos.var matches 1 as @a[team=khaos.town, tag=khaos.death, gamemode=survival] run function khaos:game_state_handling/death/town_death
execute if score GameState khaos.var matches 1 as @a[team=khaos.mafia, tag=khaos.death, gamemode=survival] run function khaos:game_state_handling/death/mafia_death
execute if score GameState khaos.var matches 1 as @a[tag=khaos.avoid_processed, tag=khaos.death, tag=khaos.jester, tag=!khaos.haunted] run function khaos:roles/jester/init_haunt

# endregion GameState : Playing



# region loops

# give_role loop handling
execute if score gr_init khaos.loop matches 1 if score gr_count khaos.loop matches 1.. run function khaos:game_state_handling/give_role/loop_give_role
execute if score gr_init khaos.loop matches 1 if score gr_count khaos.loop matches 0 run function khaos:game_state_handling/give_role/finish_give_role

# jester death message loop handling
execute if score dm_init khaos.loop matches 1 if score dm_count khaos.loop matches 1.. run function khaos:roles/neutral/jester/loop_death_message
execute if score dm_init khaos.loop matches 1 if score dm_count khaos.loop matches 0 run function khaos:roles/neutral/jester/finish_death_message

# jester haunt list loop handling
execute if score hl_init khaos.loop matches 1 if score hl_count khaos.loop matches 1.. run function khaos:roles/neutral/jester/loop_haunt_list
execute if score hl_init khaos.loop matches 1 if score hl_count khaos.loop matches 0 run function khaos:roles/neutral/jester/finish_haunt_list

#tick for timer to give healer their healing crystals
scoreboard players add HealerGiveCrystal khaos.var 1
execute if score HealerGiveCrystal khaos.var % 24000 khaos.const as @a[tag=khaos.healer] run function khaos:roles/town/healer/tick_give_healing_item

# endregion loops
