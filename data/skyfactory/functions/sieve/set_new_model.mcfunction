execute if entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{id:"minecraft:dirt"},{}]}] run tag @s add sf.has_dirt
execute if entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{id:"minecraft:sand"},{}]}] run tag @s add sf.has_sand
execute if entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{id:"minecraft:gravel"},{}]}] run tag @s add sf.has_gravel
execute if entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{id:"minecraft:end_stone"},{}]}] run tag @s add sf.has_end_stone
execute if entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{id:"minecraft:netherrack"},{}]}] run tag @s add sf.has_netherrack

execute if entity @s[tag=sf.has_dust] run replaceitem entity @s armor.head poppy{CustomModelData:412}
execute if entity @s[tag=sf.has_sand] run replaceitem entity @s armor.head poppy{CustomModelData:415}
execute if entity @s[tag=sf.has_gravel] run replaceitem entity @s armor.head poppy{CustomModelData:418}
execute if entity @s[tag=sf.has_dirt] run replaceitem entity @s armor.head poppy{CustomModelData:421}
execute if entity @s[tag=sf.has_end_stone] run replaceitem entity @s armor.head poppy{CustomModelData:424}
execute if entity @s[tag=sf.has_netherrack] run replaceitem entity @s armor.head poppy{CustomModelData:427}
