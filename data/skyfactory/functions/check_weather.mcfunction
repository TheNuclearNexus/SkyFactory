summon armor_stand ~ 0 ~ {Tags:["sf.check_weather"],NoGravity:1b,Invisible:1b,Marker:1b}
loot replace entity @e[tag=sf.check_weather,limit=1,sort=nearest] armor.head loot skyfactory:blocks/weather
execute if entity @e[tag=sf.check_weather,limit=1,sort=nearest,nbt={ArmorItems:[{},{},{},{id:"minecraft:water_bucket"}]}] run scoreboard players set weather sf.data 1
execute unless entity @e[tag=sf.check_weather,limit=1,sort=nearest,nbt={ArmorItems:[{},{},{},{id:"minecraft:water_bucket"}]}] run scoreboard players set weather sf.data 0
kill @e[tag=sf.check_weather,limit=1,sort=nearest]
