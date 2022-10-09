# called by main:tick ??? khaos:roles/neutral/jester/check_death

tag @s add khaos.avoid_processed

#in the event of implementing multiple jesters, will have to come up with a new system of player tracking to avoid conflicts

execute as @a[tag=!avoid_processed, tag=!death] run scoreboard players add hl_count khaos.loop 1
scoreboard players set hl_init khaos.loop 1

title @a times 20 80 20
title @a subtitle {"text":"by Successfully Dying as Jester", "color":"green"}
title @a title {"text":"You have Won", "color":"green"}

tellraw @s {"text":"Who would you like to Haunt?"}
