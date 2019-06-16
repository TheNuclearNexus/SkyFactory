# Data Objectives
scoreboard objectives add sf.data dummy

# Stuff to do on load
execute unless score installed sf.data matches 1 run tellraw @a [{"text":"[SkyFactory v1.0] Thank you for installing our datapack!","color":"gold"}]
execute if score installed sf.data matches 1 unless score version sf.data matches 1 run tellraw @a [{"text":"[SkyFactory v1.0]","color":"gold"},{"text":" Old version of the datapack detected, somthings may be broken!","color":"red"}]
scoreboard players set version sf.data 1
scoreboard players set installed sf.data 1
