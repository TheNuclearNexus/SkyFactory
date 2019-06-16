#Barrel Dirt Check
execute as @e[type=armor_stand,tag=sf.barrel] at @s if block ~ ~ ~ composter[level=1] run function skyfactory:barrel/adddirt

# Run Sieve main
execute as @e[tag=sf.sieve] at @s run function skyfactory:sieve/main

# Run Player main
execute as @a at @s run function skyfactory:player/main
