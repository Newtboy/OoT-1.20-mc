effect clear @s slowness
kill @e[type=armor_stand,tagOcarina]
scoreboard objectives remove Ocarina

clear @s minecraft:music_disc_mall
clear @s minecraft:music_disc_mellohi
clear @s minecraft:music_disc_far
clear @s minecraft:music_disc_cat
clear @s minecraft:music_disc_wait
clear @s minecraft:music_disc_chirp
clear @s minecraft:music_disc_ward
clear @s minecraft:music_disc_11
clear @s minecraft:music_disc_stal
clear @s minecraft:music_disc_13
clear @s minecraft:music_disc_strad
clear @s minecraft:music_disc_blocks
clear @s minecraft:music_disc_pigstep
clear @s minecraft:barrier{Note:1b}
clear @s minecraft:shears{CorrectNote:1b}

execute if entity @s[tag=ZeldaOcarina] run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Ocarina of Time"}'},Unbreakable:1b,Damage:10,HideFlags:63,OcarinaZelda:1b}

tag @s remove PlayingSong