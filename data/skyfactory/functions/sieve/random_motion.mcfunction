scoreboard players set in_0 du_data 100
function du:math/random
scoreboard players operation temp0 sf.data = out_0 du_data
execute store result entity @s Motion[0] double 0.01 run scoreboard players get temp0 sf.data

scoreboard players set in_0 du_data 100
function du:math/random
scoreboard players operation temp0 sf.data = out_0 du_data
execute store result entity @s Motion[1] double 0.01 run scoreboard players get temp0 sf.data

scoreboard players set in_0 du_data 100
function du:math/random
scoreboard players operation temp0 sf.data = out_0 du_data
execute store result entity @s Motion[2] double 0.01 run scoreboard players get temp0 sf.data
