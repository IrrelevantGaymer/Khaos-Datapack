# called by main:tick

give @p minecraft:amethyst_shard{display:{Name:'{"text":"Healing Crystal","color":"light_purple","italic":false}',Lore:['{"text":"Hit a player to protect them","color":"dark_purple"}','[{"text":"or press ","color":"dark_purple"},{"keybind":"key.swapOffhand","color":"dark_purple"},{"text":" to protect yourself","color":"dark_purple"}]']}} 1
tellraw @a[team=khaos.healer] [{"text":"You have been given a Healing Crystal. Use it wisely."}]
