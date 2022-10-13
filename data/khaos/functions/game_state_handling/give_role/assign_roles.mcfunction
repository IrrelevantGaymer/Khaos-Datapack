# called by khaos:game_state_handling/give_role/finish_give_role

scoreboard players set gr_init khaos.loop 0

execute as @a[tag=!khaos.role_assign, scores={khaos.roles_id=0100}] run function khaos:roles/town/vanilla/assign
execute as @a[tag=!khaos.role_assign, scores={khaos.roles_id=0101}] run function khaos:roles/town/healer/assign
execute as @a[tag=!khaos.role_assign, scores={khaos.roles_id=0200}] run function khaos:roles/mafia/mafioso/assign
execute as @a[tag=!khaos.role_assign, scores={khaos.roles_id=1000}] run function khaos:roles/neutral/jester/assign
