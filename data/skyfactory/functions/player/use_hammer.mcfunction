execute if score @s sf.m.cob matches 1.. run data merge entity @e[type=item,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:cobblestone",Age:0}}] {Item:{id:"minecraft:gravel"}}
execute if score @s sf.m.gra matches 1.. run data merge entity @e[type=item,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gravel",Age:0}}] {Item:{id:"minecraft:sand"}}
execute if score @s sf.m.sand matches 1.. run data merge entity @e[type=item,distance=..5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:sand",Age:0}}] {Item:{id:"minecraft:poppy"}}
