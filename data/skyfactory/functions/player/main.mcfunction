# Check if the player can use the sieve
tag @s remove sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sand"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:dirt"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:gravel"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherrack"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:end_stone"}}] run tag @s add sf.readyToSieve

# Check if the player can use the sieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:cobblestone"}}] run tag @s add sf.readyToCrucible

# Cast Ray when click
execute if score @s sf.rClick matches 1.. run function skyfactory:player/create_ray
scoreboard players reset @s sf.rClick


# Run hammer functions
#execute if entity @s[nbt={Item:{tag:{sf.item:{"skyfactory:hammer"}}}}] run function skyfactory:player/use_hammer
#execute if score @s sf.m.cob matches 1.. run scoreboard players reset @s sf.m.cob
#execute if score @s sf.m.gra matches 1.. run scoreboard players reset @s sf.m.gra
#execute if score @s sf.m.sand matches 1.. run scoreboard players reset @s sf.m.sand

# Run silk worm
function skyfactory:silkworm/main

# Clear player of filler
clear @s poppy{CustomModelData:433}
