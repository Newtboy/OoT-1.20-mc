execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace] unless entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 25
execute unless entity @a[tag=NoTeleport] if entity @s[tag=TimedRace4] run scoreboard players set @s RaceTime 3975
execute unless entity @a[tag=NoTeleport] unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute unless entity @a[tag=NoTeleport] if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
execute unless entity @a[tag=NoTeleport] run tag @s add InKakarikoVillage
execute unless entity @a[tag=NoTeleport] run tp @s 1523 65 -759
playsound minecraft:music_disc.11 record @s ~ ~ ~ 1 1 1
