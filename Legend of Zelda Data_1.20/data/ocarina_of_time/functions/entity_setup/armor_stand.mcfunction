#Scythe Blade Trap
execute if entity @s[tag=ScytheBladeTrap] run function ocarina_of_time:enemies/blade_traps/scythe_blade_trap

#Silver Rupee
execute if entity @s[tag=SilverRupee] at @s run function ocarina_of_time:items/silver_rupees/silver_rupee

#Guillotine
execute if entity @s[tag=Guillotine] at @s run function ocarina_of_time:enemies/guillotine

#Spike Trap
execute if entity @s[tag=BladeTrap,tag=Type1] at @s run function ocarina_of_time:enemies/blade_traps/blade_trap_1
execute if entity @s[tag=BladeTrap,tag=Type2] at @s run function ocarina_of_time:enemies/blade_traps/blade_trap_2
execute if entity @s[tag=BladeTrap,tag=Type3] at @s run function ocarina_of_time:enemies/blade_traps/blade_trap_3