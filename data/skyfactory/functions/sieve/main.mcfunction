execute if entity @a[distance=..5,gamemode=!spectator,tag=sf.readyToSieve] unless entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1] run summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"sf.noCllsn",NoAI:1b,Tags:["sf.sieve.vil","sf.stopRay"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],VillagerData:{level:1,profession:"minecraft:armorer",type:"minecraft:desert"},Offers:{}}
execute unless entity @s[tag=sf.full] unless entity @a[distance=..5,gamemode=!spectator,tag=sf.readyToSieve] if entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1] run tp @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1] ~ ~-256 ~

execute if entity @e[tag=sf.sieve.vil,tag=sf.clicked,distance=..0.5,sort=nearest,limit=1] run tag @s add sf.clicked
execute as @e[tag=sf.sieve.vil,tag=sf.clicked,distance=..0.5,sort=nearest,limit=1] run tag @s remove sf.clicked

execute if entity @s[tag=sf.clicked,tag=sf.full] run scoreboard players remove @s sf.data 1
execute if entity @s[tag=sf.clicked,tag=sf.full] run function skyfactory:sieve/decrease_model
execute if entity @s[tag=sf.clicked,tag=sf.full] run playsound minecraft:block.sand.place block @a
execute if entity @s[tag=sf.clicked,tag=sf.full] if score @s sf.data matches ..0 run replaceitem entity @s armor.head poppy{CustomModelData:409}
execute if entity @s[tag=sf.clicked,tag=sf.full] if score @s sf.data matches ..0 run tp @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1] ~ ~-256 ~
execute if entity @s[tag=sf.clicked,tag=sf.full] if score @s sf.data matches ..0 run function skyfactory:sieve/pick_drop

execute if entity @s[tag=sf.clicked,tag=!sf.full] run function skyfactory:sieve/set_new_model
execute if entity @s[tag=sf.clicked,tag=!sf.full] unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:409}}]}] run function skyfactory:sieve/return_item
execute if entity @s[tag=sf.clicked,tag=!sf.full] unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:409}}]}] run scoreboard players set @s sf.data 3
execute if entity @s[tag=sf.clicked,tag=!sf.full] unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:409}}]}] run tag @s add sf.full

execute if entity @s[tag=sf.clicked,tag=sf.full] if score @s sf.data matches ..0 run tag @s remove sf.full
execute if score @s sf.data matches ..0 run scoreboard players reset @s sf.data
tag @s remove sf.clicked

execute if entity @s[tag=sf.has_dirt,nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:409}}]}] run tag @s remove sf.has_dirt

execute if block ~ ~ ~ #du:air run data merge entity @e[type=item,nbt={Age:0,Item:{id:"minecraft:chest"}},sort=nearest,limit=1,distance=..1] {Item:{id:"minecraft:ghast_spawn_egg",tag:{display:{Name:"{\"text\":\"Sieve\",\"italic\":false}"},CustomModelData:405,EntityTag:{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["sf.placeSieve","sf.block"]}}}}
