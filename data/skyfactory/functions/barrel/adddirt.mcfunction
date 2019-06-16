setblock ~ ~ ~ composter[level=0] replace
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:406}}]}] run tag @s add sf.next
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:406}}]},tag=sf.next] run replaceitem entity @s armor.head minecraft:poppy{CustomModelData:407} 1
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:405}}]}] run replaceitem entity @s armor.head minecraft:poppy{CustomModelData:406} 1
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:404}}]}] run replaceitem entity @s armor.head minecraft:poppy{CustomModelData:405} 1
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:407}}]},tag=!sf.next] run function skyfactory:barrel/givedirt
