execute if entity @s[tag=sf.has_dirt] run function skyfactory:sieve/dirt_drops
execute if entity @s[tag=sf.has_sand] run function skyfactory:sieve/sand_drops
execute if entity @s[tag=sf.has_dust] run function skyfactory:sieve/dust_drops
execute if entity @s[tag=sf.has_gravel] run function skyfactory:sieve/gravel_drops
execute if entity @s[tag=sf.has_end_stone] run function skyfactory:sieve/end_stone_drops
execute if entity @s[tag=sf.has_netherrack] run function skyfactory:sieve/netherrack_drops

execute as @e[tag=sf.droppedItem,sort=nearest,limit=1] at @s run function skyfactory:sieve/random_motion
