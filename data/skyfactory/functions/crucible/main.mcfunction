#Villager Spawn
execute if entity @a[distance=..5,gamemode=!spectator,tag=sf.readyToCrucible] unless entity @e[tag=sf.crucible.vil,distance=..0.5,sort=nearest,limit=1] unless entity @s[tag=sf.melting] run summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"sf.noCllsn",NoAI:1b,Tags:["sf.crucible.vil","sf.stopRay"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],VillagerData:{level:1,profession:"minecraft:armorer",type:"minecraft:desert"},Offers:{}}
execute unless entity @s[tag=sf.full] unless entity @a[distance=..5,gamemode=!spectator,tag=sf.readyToCrucible] if entity @e[tag=sf.crucible.vil,distance=..0.5,sort=nearest,limit=1] run tp @e[tag=sf.crucible.vil,distance=..0.5,sort=nearest,limit=1] ~ ~-256 ~

#Villager Clicked
execute if entity @e[tag=sf.crucible.vil,tag=sf.clicked,distance=..0.5,sort=nearest,limit=1] run tag @s add sf.clicked
execute as @e[tag=sf.crucible.vil,tag=sf.clicked,distance=..0.5,sort=nearest,limit=1] run tag @s remove sf.clicked

# Copy Item when clicked
execute if entity @s[tag=sf.clicked] run data modify entity @s ArmorItems[2] set from entity @e[tag=sf.crucible.vil,sort=nearest,limit=1] ArmorItems[2]

# Collect Lava
execute if score @s[tag=sf.melting] sf.data matches 0 run tag @s add sf.has_lava
execute if score @s[tag=sf.melting] sf.data matches 0 run tag @s remove sf.melting

execute if entity @s[tag=sf.has_lava,tag=sf.clicked,nbt={ArmorItems:[{},{},{id:"minecraft:bucket"},{}]}] run clear @p[tag=sf.clicker] bucket 1
execute if entity @s[tag=sf.has_lava,tag=sf.clicked,nbt={ArmorItems:[{},{},{id:"minecraft:bucket"},{}]}] run give @p[tag=sf.clicker] lava_bucket
execute if entity @s[tag=sf.has_lava,tag=sf.clicked,nbt={ArmorItems:[{},{},{id:"minecraft:bucket"},{}]}] run playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~
execute if entity @s[tag=sf.has_lava,tag=sf.clicked,nbt={ArmorItems:[{},{},{id:"minecraft:bucket"},{}]}] run replaceitem entity @s armor.head poppy{CustomModelData:437}
execute if entity @s[tag=sf.has_lava,tag=sf.clicked,nbt={ArmorItems:[{},{},{id:"minecraft:bucket"},{}]}] run tag @s remove sf.clicked
#Add to Model
execute if entity @s[tag=sf.clicked,tag=sf.full] unless entity @s[nbt={ArmorItems:[{},{},{id:"minecraft:cobblestone"},{}]}] run tag @s remove sf.clicked
execute unless entity @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if entity @s[tag=sf.clicked,tag=sf.full] run scoreboard players remove @s sf.data 1
execute unless entity @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if entity @s[tag=sf.clicked,tag=sf.full] run function skyfactory:crucible/return_item
execute unless entity @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if entity @s[tag=sf.clicked,tag=sf.full] run function skyfactory:crucible/add_model
execute unless entity @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if entity @s[tag=sf.clicked,tag=sf.full] run playsound minecraft:block.stone.break block @a
execute unless entity @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if entity @s[tag=sf.clicked,tag=sf.full] if score @s sf.data matches ..0 run tp @e[tag=sf.crucible.vil,distance=..0.5,sort=nearest,limit=1] ~ ~-256 ~
execute if entity @s[tag=sf.clicked,tag=sf.full] if score @s sf.data matches ..0 run tag @s add sf.melting

# Start melting

#Set New Model
execute if entity @s[tag=sf.clicked,tag=!sf.full,tag=!sf.melting] run function skyfactory:crucible/set_new_model
execute if entity @s[tag=sf.clicked,tag=!sf.full,tag=!sf.melting] unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:437}}]}] run function skyfactory:crucible/return_item
execute if entity @s[tag=sf.clicked,tag=!sf.full,tag=!sf.melting] unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:437}}]}] run scoreboard players set @s sf.data 3
execute if entity @s[tag=sf.clicked,tag=!sf.full,tag=!sf.melting] unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:437}}]}] run tag @s add sf.full

#Remove sf.full
execute if entity @s[tag=sf.clicked,tag=sf.full] if score @s sf.data matches ..0 run tag @s add sf.melting
execute if entity @s[tag=sf.clicked,tag=sf.full] if score @s sf.data matches ..0 run tag @s remove sf.full
execute if score @s sf.data matches ..0 run scoreboard players reset @s sf.data
tag @s remove sf.clicked

#Remove sf.has_cobblestone
execute if entity @s[tag=sf.has_cobblestone,nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:437}}]}] run tag @s remove sf.has_cobblestone
execute if entity @s[tag=sf.has_cobblestone,nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:437}}]}] run tag @s remove sf.has_lava

#Crucible Remove
execute as @e[type=armor_stand,tag=sf.crucible] at @s if block ~ ~ ~ air run function skyfactory:crucible/destroy

#Heat Source Timer
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if block ~ ~-1 ~ #skyfactory:torches run function skyfactory:crucible/heatsource/torch
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if block ~ ~-1 ~ fire run function skyfactory:crucible/heatsource/fire
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if block ~ ~-1 ~ lava run function skyfactory:crucible/heatsource/lava
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if block ~ ~-1 ~ magma_block run function skyfactory:crucible/heatsource/magma
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:441}}]}] if block ~ ~-1 ~ bedrock run function skyfactory:crucible/heatsource/bedrock
#Subtract from Timer
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:443}}]}] if score timer_20 du_data matches 17 run scoreboard players remove @s sf.data 1
execute as @s[nbt={ArmorItems:[{id:"minecraft:poppy",Count:1b,tag:{CustomModelData:443}}]}] if score @s sf.data matches ..0 run replaceitem entity @s armor.head minecraft:poppy{CustomModelData:442} 1
