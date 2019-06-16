#Barrel Dirt Check
execute as @e[type=armor_stand,tag=sf.barrel] at @s if block ~ ~ ~ composter[level=1] run function skyfactory:barrel/adddirt
#Barrel Removal
#execute as @e[type=armor_stand,tag=sf.barrel] at @s if block ~ ~ ~ air run function skyfactory:barrel/destroy
