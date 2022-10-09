execute at @a[limit=1, sort=arbitrary] run summon armor_stand ~ -70 ~ {NoGravity:1b, Marker:1b, Invisible:1b, Tags:["khaos.faction_stand"]}

loot replace entity @e[type=minecraft:armor_stand, tag=khaos.faction_stand] weapon.mainhand loot khaos:faction

execute if data entity @e[type=armor_stand, limit=1] {HandItems:[{id:"minecraft:white_wool"}]} as @a[tag=!khaos.role, limit=1, sort=random] run function khaos:roles/town/vanilla/init
execute if data entity @e[type=armor_stand, limit=1] {HandItems:[{id:"minecraft:orange_wool"}]} as @a[tag=!khaos.role, limit=1, sort=random] run function khaos:roles/mafia/mafioso/init

execute as @e[type=minecraft:armor_stand, tag=khaos.faction_stand] at @s run tp ~ -255 ~

scoreboard players remove gr_count khaos.var 1
