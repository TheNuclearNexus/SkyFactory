# Check if the player can use the sieve
tag @s remove sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sand"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:dirt"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:gravel"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherrack"}}] run tag @s add sf.readyToSieve
execute if entity @s[nbt={SelectedItem:{id:"minecraft:endstone"}}] run tag @s add sf.readyToSieve
