#Hookshot
execute if entity @a[tag=InKakarikoVillage] unless entity @s[tag=GotHookshot] if entity @a[nbt={Inventory:[{tag:{Hookshot:1b}}]}] run tellraw @a ["",{"text":"You found the ","color":"white"},{"text":"Hookshot","color":"red"},{"text":"! It's a spring-loaded chain that you can cast out to hook things. While holding, you can aim and right-click to fire. You can use it to drag distant items toward you, or you can use it to pull yourself toward something."}]
execute if entity @a[tag=InKakarikoVillage] unless entity @s[tag=GotHookshot] if entity @a[nbt={Inventory:[{tag:{Hookshot:1b}}]}] run tag @s add GotHookshot

#Longshot
execute if entity @a[tag=InWaterTemple] unless entity @s[tag=GotLongshot] if entity @a[nbt={Inventory:[{tag:{Longshot:1b}}]}] run tellraw @a ["",{"text":"You found the ","color":"white"},{"text":"Longshot","color":"red"},{"text":"! It's an upgraded Hookshot that extends ","color":"white"},{"text":"twice ","color":"red"},{"text":"as far!","color":"white"}]
execute if entity @a[tag=InWaterTemple] unless entity @s[tag=GotLongshot] if entity @a[nbt={Inventory:[{tag:{Longshot:1b}}]}] run clear @a minecraft:carrot_on_a_stick{Unbreakable:1b,Damage:11,HideFlags:63,Hookshot:1b}
execute if entity @a[tag=InWaterTemple] unless entity @s[tag=GotLongshot] if entity @a[nbt={Inventory:[{tag:{Longshot:1b}}]}] run kill @e[type=item,nbt={Item:{tag:{Hookshot:1b}}}]
execute if entity @a[tag=InWaterTemple] unless entity @s[tag=GotLongshot] if entity @a[nbt={Inventory:[{tag:{Longshot:1b}}]}] run tag @s add GotLongshot

#Lens of Truth
execute if entity @a[tag=InWell] unless entity @s[tag=LensHelp] if entity @a[nbt={Inventory:[{tag:{LensOfTruth:1b}}]}] run tellraw @a ["",{"text":"You found the ","color":"white"},{"text":"Lens of Truth","color":"red"},{"text":"! Secret things lurk everywhere! Be sure to try to use it outside of the well. Seeing the truth will cost magic power, so right click it to start and stop using it.\n"},{"text":"Navi: ","color":"gold"},{"text":"Hmm, what could this be? Looks like a lens... I wonder if it lets you see things better... Anyway, this place is dank and creepy. Let's get out of here!","color":"aqua"}]
execute if entity @a[tag=InWell] unless entity @s[tag=LensHelp] if entity @a[nbt={Inventory:[{tag:{LensOfTruth:1b}}]}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=23..}] run scoreboard players set @s lifetime 23
execute if entity @a[tag=InWell] unless entity @s[tag=LensHelp] if entity @a[nbt={Inventory:[{tag:{LensOfTruth:1b}}]}] run tag @s add LensHelp
execute as @s run say 6