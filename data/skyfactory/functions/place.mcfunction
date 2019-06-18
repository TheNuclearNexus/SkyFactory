execute if entity @s[tag=sf.placeSieve] run function skyfactory:sieve/place
execute if entity @s[tag=sf.placeBarrel] run function skyfactory:barrel/place
execute if entity @s[tag=sf.placeCrafter] run function skyfactory:crafter/place
execute if entity @e[tag=sf.placeSilkWorm] run function skyfactory:silkworm/place
playsound minecraft:block.stone.place block @a
kill @s
