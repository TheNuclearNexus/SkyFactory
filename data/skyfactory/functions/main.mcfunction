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

#Crafter Remove
execute as @e[type=armor_stand,tag=sf.crafter] at @s if block ~ ~ ~ air run function skyfactory:crafter/destroy

#Crafter GUI
execute as @e[type=armor_stand,tag=sf.crafter] at @s run replaceitem block ~ ~ ~ container.0 poppy{CustomModelData:433}
clear @a poppy{CustomModelData:433}
