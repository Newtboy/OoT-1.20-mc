execute if entity @s[tag=Lull] run clear @s minecraft:carrot_on_a_stick{Saria:1b}
execute if entity @s[tag=Lullaby] run give @a minecraft:carrot_on_a_stick{Zelda:1b}
execute if entity @s[tag=Lullaby] run effect give @a minecraft:slowness 100000 255 true

execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=!Lullaby] run tellraw @a {"text":"No songs learned yet."}

execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Shadows] facing entity @p feet rotated ~ 0 run summon minecraft:armor_stand ^1.3 ^-.1 ^ {Tags:["Ocarina","Shadows"],Invisible:1b,NoGravity:1,Rotation:[180f],ArmorItems:[{},{},{},{id:"music_disc_11",Count:1,tag:{OcarinaSong:1b,display:{Name:'{"text":"Nocturne of Shadows"}'}}}],Pose:{Head:[0f,180f,0f]}}

execute as @e[type=armor_stand,tag=Shadows,tag=Ocarina] at @a rotated ~ 0 run tp @s ^1.2 ^-.1 ^ facing entity @p