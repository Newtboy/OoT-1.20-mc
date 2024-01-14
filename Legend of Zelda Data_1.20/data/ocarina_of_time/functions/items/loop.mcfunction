#Items with scores
execute as @a[tag=HideDisplayScore] at @s if entity @s[nbt={SelectedItem:{tag:{CanDestroy:["minecraft:grass_block"]}}}] unless entity @s[tag=TimedRace] unless entity @s[tag=TimerRoom1] unless entity @s[tag=TimerRoom2] unless entity @s[tag=TimerRoom3] unless entity @s[tag=HorseArchery] unless entity @s[tag=Drowning] unless entity @s[tag=Heat] unless entity @s[tag=RaceGame] unless entity @s[tag=HorseRanchGame] unless entity @s[tag=MalonMinigame] unless entity @s[tag=ShootingGame] unless entity @s[tag=RanchGame] unless entity @s[tag=DivingGame] unless entity @e[type=armor_stand,tag=GreenPainting1,tag=Minigame] run scoreboard objectives setdisplay sidebar
execute as @a[tag=HideDisplayScore] at @s unless entity @s[nbt={SelectedItem:{tag:{CanDestroy:["minecraft:grass_block"]}}}] unless entity @s[nbt={SelectedItem:{tag:{MainHandItem:1b}}}] unless entity @s[tag=TimedRace] unless entity @s[tag=TimerRoom1] unless entity @s[tag=TimerRoom2] unless entity @s[tag=TimerRoom3] unless entity @s[tag=HorseArchery] unless entity @s[tag=Drowning] unless entity @s[tag=Heat] unless entity @s[tag=RaceGame] unless entity @s[tag=HorseRanchGame] unless entity @s[tag=MalonMinigame] unless entity @s[tag=ShootingGame] unless entity @s[tag=RanchGame] unless entity @s[tag=DivingGame] unless entity @e[type=armor_stand,tag=GreenPainting1,tag=Minigame] run scoreboard objectives setdisplay sidebar

execute if entity @a[tag=HideDisplayScore] run tag @a remove HideDisplayScore

#Selected Items
execute as @a[nbt={SelectedItem:{tag:{MainHandItem:1b}}}] at @s run function ocarina_of_time:items/main_hand_items/loop

#Hookshot
execute as @a[scores={UseItem=1..}] at @s unless entity @a[tag=PlayingSong] if entity @s[nbt={FallDistance:0.0f,SelectedItem:{tag:{Hookshot:1b}}}] unless entity @s[tag=NoHookshot] unless entity @e[type=area_effect_cloud,tag=Hookshot] run say hi 
execute as @a[scores={UseItem=1..}] at @s unless entity @a[tag=PlayingSong] if entity @s[nbt={FallDistance:0.0f,Inventory:[{Slot:-106b,tag:{Hookshot:1b}}]}] unless entity @s[tag=NoHookshot] unless entity @e[type=area_effect_cloud,tag=Hookshot] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Hookshot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#Lens of Truth
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{LensOfTruth1:1b}}}] run say 11
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{LensOfTruth1:1b}}}] run function ocarina_of_time:items/lens_of_truth/on
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{LensOfTruth2:1b}}}] run say 12
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{LensOfTruth2:1b}}}] run function ocarina_of_time:items/lens_of_truth/off
execute as @a[tag=HoldLens] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run say 13
execute as @a[tag=HoldLens] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run function ocarina_of_time:items/lens_of_truth/off_2
execute as @a[tag=HoldLens] at @s if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run say 14
execute as @a[tag=HoldLens] at @s if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run function ocarina_of_time:items/lens_of_truth/magic
execute unless entity @a[tag=HoldLens] if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin"}]}] run say 15
execute unless entity @a[tag=HoldLens] if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin"}]}] run clear @a minecraft:carved_pumpkin{HoldLens:1b}


#Ocarinas
execute if entity @a[scores={UseItem=1..},tag=NoOcarina] if entity @a[nbt={SelectedItem:{tag:{OcarinaSaria:1b}}}] run tellraw @a {"text":"Cannot use ocarina here..."}
execute if entity @a[scores={UseItem=1..},tag=NoOcarina] if entity @a[nbt={SelectedItem:{tag:{OcarinaZelda:1b}}}] run tellraw @a {"text":"Cannot use ocarina here..."}
execute as @a[tag=NoOcarina,tag=PlayingSong] run function ocarina_of_time:items/ocarina/ocarina_3
execute as @a at @s if entity @s[tag=PlayingSong] run function ocarina_of_time:items/ocarina/ocarina_2
execute as @a at @s if entity @s[tag=PlayingSong] unless entity @s[nbt={FallDistance:0.0f}] run tellraw @s {"text":"Don't move or jump to use the ocarina."}
execute as @a at @s if entity @s[tag=PlayingSong] unless entity @s[nbt={FallDistance:0.0f}] run function ocarina_of_time:items/ocarina/ocarina_3
execute as @a at @s if entity @s[scores={Ocarina=1..}] run function ocarina_of_time:items/ocarina/ocarina_3
execute unless entity @a[tag=PlayingSong] run scoreboard objectives remove Ocarina

#Use Item Reset
execute as @a[scores={UseItem=1..}] run scoreboard players set @s UseItem 0
