replaceitem entity @p[tag=sf.clicker] weapon.mainhand air
summon item ~ ~ ~ {Tags:["sf.replacement"],Item:{id:"minecraft:cobblestone",Count:1b},PickupDelay:0}

data modify entity @e[tag=sf.replacement,sort=nearest,limit=1] Item set from entity @e[tag=sf.crucible.vil,distance=..0.5,sort=nearest,limit=1] ArmorItems[2]
execute store result score temp0 sf.data run data get entity @e[tag=sf.replacement,sort=nearest,limit=1] Item.Count

scoreboard players operation temp0 sf.data -= 1 sf.data
execute if score temp0 sf.data matches 0 run kill @e[tag=sf.replacement,sort=nearest,limit=1]
execute store result entity @e[tag=sf.replacement,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get temp0 sf.data

tp @e[tag=sf.replacement,sort=nearest,limit=1] @p[tag=sf.clicker]
stopsound @p[tag=sf.clicker] * minecraft:entity.item.pickup
tag @p[tag=sf.clicker] remove sf.clicker
say return_item
