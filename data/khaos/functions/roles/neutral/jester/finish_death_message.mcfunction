# called by main:tick

scoreboard players set dm_init khaos.loop 0

#output death message with
#title @s actionbar [{"text":"You win by obtaining the death message \"","color":"yellow"},{"selector":"@s","color":"yellow"},{"nbt":"Message","storage":"dm_array","color":"yellow"},{"text":"\"","color":"yellow"}]
#subtitle doesn't work because for some fucking reason the text doesn't wrap

#in the event of implementing multiple jesters with different death messages, create an array of strings in storage dm_array
#give each jester a score from 1 to num of jesters
#to retreive unique death message, create temporary array, loop through it using jester's score, and grab the message
