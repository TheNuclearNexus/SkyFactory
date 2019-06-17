scoreboard players set in_0 du_data 40
function du:math/random
scoreboard players operation temp0 sf.data = out_0 du_data
scoreboard players operation temp0 sf.data -= 20 sf.data
execute store result entity @s Motion[0] double 0.01 run scoreboard players get temp0 sf.data

scoreboard players set in_0 du_data 20
function du:math/random
scoreboard players operation temp0 sf.data = out_0 du_data
execute store result entity @s Motion[1] double 0.01 run scoreboard players get temp0 sf.data

scoreboard players set in_0 du_data 40
function du:math/random
scoreboard players operation temp0 sf.data = out_0 du_data
scoreboard players operation temp0 sf.data -= 20 sf.data
execute store result entity @s Motion[2] double 0.01 run scoreboard players get temp0 sf.data
