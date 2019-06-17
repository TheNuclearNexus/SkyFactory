function skyfactory:check_weather
scoreboard players set temp0 sf.data 1
execute if score weather sf.data = temp0 sf.data run function skyfactory:barrel/dirtcheck
