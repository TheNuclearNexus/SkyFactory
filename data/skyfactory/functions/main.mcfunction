#Barrel Water Check & Add
execute if score timer_20 du_data matches 20 as @e[type=armor_stand,tag=sf.barrel] at @s run function skyfactory:barrel/watercheck

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
