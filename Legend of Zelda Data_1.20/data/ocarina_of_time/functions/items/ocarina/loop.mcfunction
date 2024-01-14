#Songs
execute if entity @a[scores={Use=1..}] at @a unless block ~ ~ ~ minecraft:water if entity @a[nbt={Tags:{Ocarina:1b, Saria:1b}}] run function ocarina_of_time:items/ocarina/ocarina_1
execute if entity @a[scores={UseItem=1..}] at @a unless block ~ ~ ~ minecraft:water if entity @a[nbt={SelectedItem:{tag:{Ocarina:1b, Zelda:1b}}}] run function ocarina_of_time:items/ocarina/ocarina_1
execute if entity @a[scores={UseItem=1..},nbt={Inventory:[{tag:{Ocarina:1b}}]}] at @a if block ~ ~ ~ minecraft:water run function ocarina_of_time:items/ocarina/rain

#Play Teleport Songs
execute if entity @s[tag=Songs,tag=TeleportSongTimer] run stopsound @a music
execute if entity @s[tag=Songs,tag=TeleportSongTimer] run scoreboard players set @e[type=area_effect_cloud,tag=Songs] time 0
execute if entity @s[tag=Songs,tag=TeleportSongTimer] run tag @s add TeleportSongTimer2
execute if entity @s[tag=Songs,tag=TeleportSongTimer2] run tag @s remove TeleportSongTimer
execute if entity @s[tag=Songs,tag=TeleportSongTimer2] run scoreboard players add @s time 1

#Shadow