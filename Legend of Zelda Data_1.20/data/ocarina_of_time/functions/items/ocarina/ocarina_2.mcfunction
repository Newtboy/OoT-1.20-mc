#Start
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run stopsound @s record music_disc.11

#Shadow
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run function ocarina_of_time:items/ocarina/teleports/shadow

scoreboard objectives add Ocarina minecraft.custom:minecraft.jump_distance