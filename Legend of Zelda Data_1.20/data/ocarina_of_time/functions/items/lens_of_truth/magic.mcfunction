scoreboard objectives add LensMagic dummy
scoreboard players add @a LensMagic 1
execute if entity @a[scores={LensMagic=300..}] run experience add @a 0 levels
execute if entity @a[scores={LensMagic=300..}] run scoreboard players set @s LensMagic 0
execute if entity @s[level=..0] run function ocarina_of_time:items/lens_of_truth/off_2
execute as @s run say 5