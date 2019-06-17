scoreboard players set temp0 sf.data 0
execute store result score temp1 sf.data run execute if blocks ~ ~1 ~ ~ 255 ~ -29999998 ~ 1600 all
execute if score temp1 sf.data > temp0 sf.data run function skyfactory:barrel/addwater
say skycheck
