summon armor_stand ~ ~ ~ {Tags:["sf.ray"],NoGravity:1b,Marker:1b}
data modify entity @e[tag=sf.ray,limit=1] ArmorItems[2] set from entity @s SelectedItem
tp @e[tag=sf.ray,sort=nearest,limit=1] ~ ~1.61 ~ ~ ~
execute as @e[tag=sf.ray,sort=nearest,limit=1] at @s run function skyfactory:player/move_ray
tag @s add sf.clicker
