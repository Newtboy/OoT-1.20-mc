#Hidden Wall Locations
execute if entity @s[tag=HoldLens] if entity @s[tag=InShadowTemple] run function ocarina_of_time:moving_things/shadow_temple/walls/summon_fake_walls

item replace entity @a weapon.mainhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Lens of Truth"}'},Unbreakable:1b,Damage:23,HideFlags:63,LensOfTruth:1b,LensOfTruth1:1b}
tag @s remove HoldLens
clear @s minecraft:carved_pumpkin{HoldLens:1b}
kill @e[type=item,nbt={Item:{tag:{HoldLens:1b}}}]
scoreboard players set @a UseItem 0
execute as @s run say 3