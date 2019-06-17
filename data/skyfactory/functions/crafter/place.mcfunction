setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"sf.crafter\"}"} replace
execute as @s align xyz positioned ~.5 ~.5 ~.5 run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["sf.crafter","du_crafter"],ArmorItems:[{},{},{},{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:432}}]}
