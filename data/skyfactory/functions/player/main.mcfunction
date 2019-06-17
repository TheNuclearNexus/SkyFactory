# Check if the player can use the sieve
tag @s remove sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sand"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:dirt"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:gravel"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherrack"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:end_stone"}}] run tag @s add sf.readyToSieve


# Cast Ray when click
execute if score @s sf.rClick matches 1.. run function skyfactory:player/create_ray
scoreboard players reset @s sf.rClick
