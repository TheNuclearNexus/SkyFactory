scoreboard players add @s sf.watertimer 1
execute if score @s sf.watertimer matches 20.. run function skyfactory:barrel/watercheck
execute if block ~ ~ ~ cauldron[level=0] run function skyfactory:barrel/watertaken
execute unless block ~ ~ ~ cauldron[level=3] as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:431}}]}] run setblock ~ ~ ~ cauldron[level=3] replace
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:431}}]}] at @s if block ~ ~1 ~ #skyfactory:sand run setblock ~ ~1 ~ clay
