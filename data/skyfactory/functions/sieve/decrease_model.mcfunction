execute store result score temp0 sf.data run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players operation temp0 sf.data -= 1 sf.data
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get temp0 sf.data
