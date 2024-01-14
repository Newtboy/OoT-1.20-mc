#Diamond Room
fill 1565 58 910 1565 61 910 minecraft:red_nether_bricks
fill 1564 58 909 1564 61 909 minecraft:red_nether_bricks
fill 1563 58 908 1563 61 908 minecraft:red_nether_bricks
fill 1562 58 907 1562 61 907 minecraft:red_nether_bricks
fill 1560 58 905 1560 61 905 minecraft:red_nether_bricks
fill 1559 58 904 1559 61 904 minecraft:red_nether_bricks
fill 1558 58 903 1558 61 903 minecraft:red_nether_bricks
fill 1557 58 902 1557 61 902 minecraft:red_nether_bricks
fill 1555 58 892 1555 61 892 minecraft:red_nether_bricks
fill 1554 58 893 1554 61 893 minecraft:red_nether_bricks
fill 1553 58 894 1553 61 894 minecraft:red_nether_bricks
fill 1552 58 895 1552 61 895 minecraft:red_nether_bricks
fill 1550 58 897 1550 61 897 minecraft:red_nether_bricks
fill 1549 58 898 1549 61 898 minecraft:red_nether_bricks
fill 1548 58 899 1548 61 899 minecraft:red_nether_bricks
fill 1547 58 900 1547 61 900 minecraft:red_nether_bricks
fill 1552 58 907 1552 61 907 minecraft:red_nether_bricks
fill 1553 58 908 1553 61 908 minecraft:red_nether_bricks
fill 1554 58 909 1554 61 909 minecraft:red_nether_bricks
fill 1555 58 910 1555 61 910 minecraft:red_nether_bricks
fill 1555 58 912 1555 61 912 minecraft:red_nether_bricks
fill 1554 58 913 1554 61 913 minecraft:red_nether_bricks
fill 1553 58 914 1553 61 914 minecraft:red_nether_bricks
fill 1552 58 915 1552 61 915 minecraft:red_nether_bricks
fill 1542 58 915 1542 61 915 minecraft:red_nether_bricks
fill 1543 58 914 1543 61 914 minecraft:red_nether_bricks
fill 1544 58 913 1544 61 913 minecraft:red_nether_bricks
fill 1545 58 912 1545 61 912 minecraft:red_nether_bricks
fill 1537 58 902 1537 61 902 minecraft:red_nether_bricks
fill 1538 58 903 1538 61 903 minecraft:red_nether_bricks
fill 1539 58 904 1539 61 904 minecraft:red_nether_bricks
fill 1540 58 905 1540 61 905 minecraft:red_nether_bricks

kill @e[type=falling_block,tag=FakeShadowWall]
kill @e[type=armor_stand,tag=FakeShadowWall]
execute as @e[type=armor_stand,tag=FakeTorch] run data merge entity @s {ArmorItems:[{},{},{},{}]}

clone 1763 61 1021 1768 63 1026 1760 60 1012
clone 1763 61 1021 1768 63 1026 1769 60 1003
clone 1763 61 1021 1768 63 1026 1731 55 989
clone 1716 58 956 1717 61 957 1716 58 960
tag @e[type=area_effect_cloud,tag=MovingPlatforms] remove Hidden

data merge entity @e[type=armor_stand,tag=ScytheBladeTrap2,tag=Middle,limit=1] {ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:60}}]}
execute as @e[type=armor_stand,tag=ScytheBladeTrap2,tag=Blade] run data merge entity @s {ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:59}}]}
