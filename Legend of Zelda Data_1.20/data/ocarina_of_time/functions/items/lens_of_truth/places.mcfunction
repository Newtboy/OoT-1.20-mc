execute if entity @s run function ocarina_of_time:moving_things/shadow_temple/walls/kill_fake_walls

item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Lens of Truth"}'},Unbreakable:1b,Damage:24,HideFlags:63,LensOfTruth:1b,LensOfTruth2:1b}
item replace entity @s armor.head with minecraft:carved_pumpkin{HoldLens:1b,display:{Name:'{"text":"Lens of Truth"}'}} 1
tag @s add HoldLens
execute as @s run say 1