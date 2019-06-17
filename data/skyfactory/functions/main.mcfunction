#Sand to Clay
execute if block ~ ~1 ~ sand as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:431}}]}] run setblock ~ ~1 ~ clay

#Barrel Water Check & Add
execute if score timer_20 du_data matches 19 as @e[type=armor_stand,tag=sf.barrel] at @s run function skyfactory:barrel/watertimer

#Barrel Dirt Add
execute as @e[type=armor_stand,tag=sf.barrel] at @s if block ~ ~ ~ composter[level=1] run function skyfactory:barrel/adddirt

#Barrel Remove
execute as @e[type=armor_stand,tag=sf.barrel] at @s if block ~ ~ ~ air run function skyfactory:barrel/destroy

# Run Sieve main
execute as @e[tag=sf.sieve] at @s run function skyfactory:sieve/main

# Run Player main
execute as @a at @s run function skyfactory:player/main

# Run Block placing
execute as @e[tag=sf.block] at @s run function skyfactory:place
