execute if entity @a[distance=..5,gamemode=!spectator,tag=sf.readyToSieve] unless entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1] run summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"sf.noCllsn",NoAI:1b,Tags:["sf.sieve.vil","sf.stopRay"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],VillagerData:{level:1,profession:"minecraft:armorer",type:"minecraft:desert"},Offers:{}}
execute unless entity @s[tag=sf.full] unless entity @a[distance=..5,gamemode=!spectator,tag=sf.readyToSieve] if entity @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1] run tp @e[tag=sf.sieve.vil,distance=..0.5,sort=nearest,limit=1] ~ ~-256 ~

execute if entity @e[tag=sf.sieve.vil,tag=sf.clicked,distance=..0.5,sort=nearest,limit=1] run tag @s add sf.clicked
execute as @e[tag=sf.sieve.vil,tag=sf.clicked,distance=..0.5,sort=nearest,limit=1] run tag @s remove sf.clicked

execute if entity @s[tag=sf.clicked,tag=!sf.full] run function skyfactory:sieve/return_item
tag @s remove sf.clicked
