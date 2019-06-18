execute if entity @s[tag=sf.has_dirt] run loot spawn ~ ~1 ~ skyfactory:sieve/dirt
execute if entity @s[tag=sf.has_sand] run loot spawn ~ ~1 ~ skyfactory:sieve/dirt
execute if entity @s[tag=sf.has_dust] run loot spawn ~ ~1 ~ skyfactory:sieve/dirt
execute if entity @s[tag=sf.has_gravel] run loot spawn ~ ~1 ~ skyfactory:sieve/dirt
execute if entity @s[tag=sf.has_end_stone] run loot spawn ~ ~1 ~ skyfactory:sieve/dirt
execute if entity @s[tag=sf.has_netherrack] run loot spawn ~ ~1 ~ skyfactory:sieve/dirt

execute positioned ~ ~1 ~ as @e[type=item,sort=nearest,limit=1] at @s run function skyfactory:sieve/random_motion
