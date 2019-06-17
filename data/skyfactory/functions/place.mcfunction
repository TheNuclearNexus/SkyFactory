execute if entity @s[tag=sf.placeSieve] run function skyfactory:sieve/place
execute if entity @s[tag=sf.placeBarrel] run function skyfactory:barrel/place
playsound minecraft:block.stone.place block @a
kill @s
