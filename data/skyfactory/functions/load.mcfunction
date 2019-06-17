# Data Objectives
scoreboard objectives add sf.data dummy
scoreboard objectives add sf.rClick minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add sf.m.cob minecraft.mined:minecraft.cobblestone
scoreboard objectives add sf.m.gra minecraft.mined:minecraft.gravel
scoreboard objectives add sf.m.sand minecraft.mined:minecraft.sand

scoreboard players set 1 sf.data 1
scoreboard players set 20 sf.data 20
scoreboard objectives add sf.watertimer dummy
scoreboard objectives add sf.useegg minecraft.used:minecraft.ghast_spawn_egg

# Teams
team add sf.noCllsn
execute unless score installed sf.data matches 1 run team modify sf.noCllsn collisionRule never

# Stuff to do on load
execute unless score installed sf.data matches 1 run tellraw @a [{"text":"[SkyFactory v1.0] Thank you for installing our datapack!","color":"gold"}]
execute if score installed sf.data matches 1 unless score version sf.data matches 1 run tellraw @a [{"text":"[SkyFactory v1.0]","color":"gold"},{"text":" Old version of the datapack detected, somthings may be broken!","color":"red"}]
scoreboard players set version sf.data 1
scoreboard players set installed sf.data 1
