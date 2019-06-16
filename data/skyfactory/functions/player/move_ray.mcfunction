particle happy_villager ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players add @s sf.data 1
execute if score @s sf.data matches ..50 run tp @s ^ ^ ^0.1
execute if score @s sf.data matches 51.. run kill @s
