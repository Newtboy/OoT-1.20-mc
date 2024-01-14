scoreboard players add @p Hookshot 1
scoreboard objectives add HookshotJump minecraft.custom:minecraft.jump

#Setup
execute if entity @p[scores={Hookshot=1}] run data modify entity @p Rotation set from entity @p Rotation

#Particles
execute if entity @p[scores={Hookshot=2..100}] if block ~ ~1.6 ~ #ocarina_of_time:hookshot_1 run particle minecraft:crit ~ ~1.6 ~ 0 0 0 0 1 force

#Shoot
execute if entity @p[scores={Hookshot=0..100}] positioned ~ ~1.6 ~ if block ^ ^ ^1 #ocarina_of_time:hookshot_1 if block ^-.4 ^ ^.5 #ocarina_of_time:hookshot_1 if block ^.4 ^ ^.5 #ocarina_of_time:hookshot_1 positioned ~ ~-1.6 ~ run tp @p ^ ^ ^.5
execute if entity @p[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ if block ^ ^ ^1 #ocarina_of_time:hookshot_1 if block ^-.4 ^ ^.5 #ocarina_of_time:hookshot_1 if block ^.4 ^ ^.5 #ocarina_of_time:hookshot_1 run playsound block.sweet_berry_bush.pick_berries ambient @p ~ ~ ~ 10 2
execute if entity @p[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^ ^ ^1 #ocarina_of_time:hookshot_1 run playsound minecraft:block.anvil.land hostile @p ~ ~ ~ 1 1.5
execute if entity @p[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^-.4 ^ ^.5 #ocarina_of_time:hookshot_1 run playsound minecraft:block.anvil.land hostile @p ~ ~ ~ 1 1.5
execute if entity @p[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^.4 ^ ^.5 #ocarina_of_time:hookshot_1 run playsound minecraft:block.anvil.land hostile @p ~ ~ ~ 1 1.5
execute if entity @p[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^ ^ ^1 #ocarina_of_time:hookshot_1 run scoreboard players set @p Hookshot 1000
execute if entity @p[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^-.4 ^ ^.5 #ocarina_of_time:hookshot_1 run scoreboard players set @p Hookshot 1000
execute if entity @p[scores={Hookshot=2..100}] positioned ~ ~1.6 ~ unless block ^.4 ^ ^.5 #ocarina_of_time:hookshot_1 run scoreboard players set @p Hookshot 1000

#Grab
execute positioned ~ ~1.6 ~ if block ^ ^ ^1.5 #ocarina_of_time:hookshot_2 unless entity @p[scores={Hookshot=200..}] unless entity @e[type=zombie,tag=WallSkull,distance=..4] run scoreboard players set @p Hookshot 200
#Reel In
execute if entity @p[scores={Hookshot=200}] run tp @p ^ ^ ^1.7
execute as @a[scores={Hookshot=200}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Hookshot2"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @p[scores={Hookshot=200}] run gamemode spectator @p
execute if entity @p[scores={Hookshot=200}] run effect give @p minecraft:resistance 1 255 true
execute if entity @p[scores={Hookshot=200..}] as @e[type=area_effect_cloud,tag=Hookshot2] at @p run tp @p ^ ^ ^.6 facing entity @e[type=area_effect_cloud,tag=Hookshot,limit=1]
execute if entity @p[scores={Hookshot=200..}] as @e[type=area_effect_cloud,tag=Hookshot2] at @p run playsound block.sweet_berry_bush.pick_berries ambient @p ~ ~ ~ 10 1.5
execute if entity @p[scores={Hookshot=200..}] as @e[type=area_effect_cloud,tag=Hookshot2] at @p run tp @p @p

#Players Motion
effect give @p minecraft:slowness 100000 255 true
execute if entity @p[scores={Hookshot=2..100}] facing entity @p feet run tp @p ~ ~ ~ ~ ~
execute if entity @p[scores={Hookshot=1..100}] at @p[scores={HookshotJump=1..}] run scoreboard players set @p Hookshot 1000
execute if entity @p[scores={Hookshot=1..100}] unless entity @p[nbt={FallDistance:0.0f}] run scoreboard players set @p Hookshot 1000

#Finish
execute unless entity @e[type=area_effect_cloud,tag=Progress,tag=GotLongshot] if entity @p[scores={Hookshot=16}] run scoreboard players set @p Hookshot 1000
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=GotLongshot] if entity @p[scores={Hookshot=36}] run scoreboard players set @p Hookshot 1000
execute if entity @p[scores={Hookshot=200..}] if entity @p[distance=...6] run scoreboard players set @p Hookshot 1000

#Under
execute if entity @p[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @p[distance=...6] rotated ~ 0 if block ~ ~ ~ #ocarina_of_time:hookshot_3 if block ~ ~1 ~ #ocarina_of_time:hookshot_3 unless block ~ ~2 ~ #ocarina_of_time:hookshot_3 run tp @p ~ ~-1 ~
#Above
execute if entity @p[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @p[distance=...6] rotated ~ 0 if block ^ ^2.6 ^.6 #ocarina_of_time:hookshot_3 run tp @p ^ ^2.6 ^.5
#Bottom
execute if entity @p[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @p[distance=...6] rotated ~ 0 unless block ~ ~ ~ #ocarina_of_time:hookshot_3 run tp @p ^ ^.8 ^-1
#Wall
execute if entity @p[scores={Hookshot=200..}] if entity @e[type=area_effect_cloud,tag=Hookshot2] if entity @p[distance=...6] rotated ~ 0 unless block ^ ^1 ^.5 #ocarina_of_time:hookshot_3 unless block ^ ^1 ^.2 #ocarina_of_time:hookshot_3 run tp @p ^ ^.8 ^-1

#Mode Change
execute if entity @p[scores={Hookshot=1000..}] unless entity @p[tag=CreativeHook] run gamemode survival @p
execute if entity @p[scores={Hookshot=1000..}] if entity @p[tag=CreativeHook] run gamemode creative @p
execute if entity @p[scores={Hookshot=1000..}] if entity @p[tag=CreativeHook] run tag @p remove CreativeHook
execute if entity @p[scores={Hookshot=1000..}] run effect clear @p minecraft:slowness
execute if entity @p[scores={Hookshot=1000..}] run scoreboard objectives remove HookshotJump
execute if entity @p[scores={Hookshot=1000..}] run kill @e[type=area_effect_cloud,tag=Hookshot2]
execute if entity @p[scores={Hookshot=1000..}] run kill @p
execute if entity @p[scores={Hookshot=1000..}] run scoreboard players set @p Hookshot 0