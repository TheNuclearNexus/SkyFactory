scoreboard players set watertimer sf.data 0
function skyfactory:check_weather
scoreboard players set temp0 sf.data 1
execute if score weather sf.data matches 1 run function skyfactory:barrel/dirtcheck
say watercheck
