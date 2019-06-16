particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players add @s sf.data 1
execute if score @s sf.data matches ..50 run tp @s ^ ^ ^0.1
execute if @e[tag=sf.stopRay,distance=..1,limit=1,sort=nearest] run data modify entity ArmorItems[2] set from entity @s ArmorItems[2]
execute if @e[tag=sf.stopRay,distance=..1,limit=1,sort=nearest] run tag @e[tag=sf.stopRay,distance=..1,limit=1,sort=nearest] add sf.clicked
execute if @e[tag=sf.stopRay,distance=..1,limit=1,sort=nearest] run kill @s
execute if score @s sf.data matches ..50 at @s run function skyfactory:player/move_ray 
execute if score @s sf.data matches 51.. run kill @s
