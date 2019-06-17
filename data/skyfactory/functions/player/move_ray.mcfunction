execute if entity @e[tag=sf.stopRay,distance=..3,limit=1,sort=nearest] run data modify entity @e[tag=sf.stopRay,distance=..3,limit=1,sort=nearest] ArmorItems[2] set from entity @s ArmorItems[2]
execute if entity @e[tag=sf.stopRay,distance=..3,limit=1,sort=nearest] run tag @e[tag=sf.stopRay,distance=..3,limit=1,sort=nearest] add sf.clicked
execute if entity @e[tag=sf.stopRay,distance=..3,limit=1,sort=nearest] run tag @s add sf.hit

execute unless entity @s[tag=sf.hit] run scoreboard players add @s sf.data 1
execute unless entity @s[tag=sf.hit] if score @s sf.data matches ..50 run tp @s ^ ^ ^0.1
execute unless entity @s[tag=sf.hit] if score @s sf.data matches ..50 at @s run function skyfactory:player/move_ray
execute unless entity @s[tag=sf.hit] if score @s sf.data matches 51.. run kill @s
kill @s[tag=sf.hit]
