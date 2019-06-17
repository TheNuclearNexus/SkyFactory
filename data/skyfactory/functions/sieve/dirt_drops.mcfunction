scoreboard players set in_0 du_data 100
function du:math/random
scoreboard players operation temp0 sf.data = out_0 du_data

execute if score temp0 sf.data matches 0..9 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:wheat_seeds",Count:1b}}
execute if score temp0 sf.data matches 10..19 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:melon_seeds",Count:1b}}
execute if score temp0 sf.data matches 20..29 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:pumpkin_seeds",Count:1b}}
execute if score temp0 sf.data matches 30..39 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:beetroot_seeds",Count:1b}}
execute if score temp0 sf.data matches 30..39 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:beetroot_seeds",Count:1b}}
execute if score temp0 sf.data matches 40..59 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:gray_dye",Count:1b}}
execute if score temp0 sf.data matches 60..64 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:oak_sapling",Count:1b}}
execute if score temp0 sf.data matches 65..69 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:birch_sapling",Count:1b}}
execute if score temp0 sf.data matches 70..74 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:spruce_sapling",Count:1b}}
execute if score temp0 sf.data matches 75..79 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:jungle_sapling",Count:1b}}
execute if score temp0 sf.data matches 80..84 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:acacia_sapling",Count:1b}}
execute if score temp0 sf.data matches 85..89 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:dark_oak_sapling",Count:1b}}
execute if score temp0 sf.data matches 90..94 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:carrot",Count:1b}}
execute if score temp0 sf.data matches 95..100 run summon item ~ ~.5 ~ {Tags:["sf.droppedItem"],Item:{id:"minecraft:potato",Count:1b}}
