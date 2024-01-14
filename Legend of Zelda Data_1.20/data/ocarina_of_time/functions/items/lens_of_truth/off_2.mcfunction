#Hidden Wall Locations

kill @e[type=item,nbt={Item:{tag:{HoldLens:1b}}}]
clear @s minecraft:carved_pumpkin{HoldLens:1b}
clear @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Lens of Truth"}'},Unbreakable:1b,Damage:24,HideFlags:63,LensOfTruth:1b,LensOfTruth2:1b}
give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Lens of Truth"}'},Unbreakable:1b,Damage:23,HideFlags:63,LensOfTruth:1b,LensOfTruth1:1b}
tag @s remove HoldLens
scoreboard players set @a UseItem 0
execute as @s run say 4