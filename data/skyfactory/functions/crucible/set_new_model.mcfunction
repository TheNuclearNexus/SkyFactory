tag @s remove sf.has_cobblestone

execute if entity @e[tag=sf.crucible.vil,distance=..0.5,sort=nearest,limit=1,nbt={ArmorItems:[{},{},{id:"minecraft:cobblestone"},{}]}] run tag @s add sf.has_cobblestone

execute if entity @s[tag=sf.has_dust] run replaceitem entity @s armor.head poppy{CustomModelData:438}
say set new model
