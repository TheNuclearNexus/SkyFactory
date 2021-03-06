#Barrel
#execute if score in_1 du_data matches 0 if score in_4 du_data matches 0 if block ~ ~ ~ chest{Items:[{Slot:2b, id:"minecraft:oak_planks"},{Slot:4b, id:"minecraft:oak_planks"},{Slot:11b, id:"minecraft:oak_planks"},{Slot:13b, id:"minecraft:oak_planks"},{Slot:20b, id:"minecraft:oak_planks"},{Slot:21b, id:"minecraft:oak_slab"},{Slot:22b, id:"minecraft:oak_planks"}]} run replaceitem block ~ ~ ~ container.16 ghast_spawn_egg{display:{Name:"{\"translate\":\"sf.barrel\",\"italic\":false}"},CustomModelData:404,EntityTag:{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["sf.placeBarrel","sf.block"]}}

execute if score in_1 du_data matches 0 if score in_4 du_data matches 0 if block ~ ~ ~ chest{Items:[{Slot:2b,id:"minecraft:oak_planks"},{Slot:4b,id:"minecraft:oak_planks"},{Slot:11b,id:"minecraft:oak_planks"},{Slot:13b,id:"minecraft:oak_planks"},{Slot:20b,id:"minecraft:oak_planks"},{Slot:21b,id:"minecraft:oak_slab"},{Slot:22b,id:"minecraft:oak_planks"}]} run loot replace block ~ ~ ~ container.16 loot skyfactory:recipes/barrel

#String Mesh
execute if block ~ ~ ~ chest{Items:[{Slot:2b,id:"minecraft:string"},{Slot:3b,id:"minecraft:string"},{Slot:4b,id:"minecraft:string"},{Slot:11b,id:"minecraft:string"},{Slot:12b,id:"minecraft:string"},{Slot:13b,id:"minecraft:string"},{Slot:20b,id:"minecraft:string"},{Slot:21b,id:"minecraft:string"},{Slot:22b,id:"minecraft:string"}]} run loot replace block ~ ~ ~ container.16 loot skyfactory:recipes/stringmesh

#Porcelain Clay
execute if score in_0 du_data matches 0 if score in_1 du_data matches 0 if score in_2 du_data matches 0 if score in_3 du_data matches 0 if score in_6 du_data matches 0 if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ chest{Items:[{Slot:12b, id:"minecraft:clay_ball"},{Slot:13b, id:"minecraft:bone_meal"}]} run replaceitem block ~ ~ ~ container.16 chain_command_block{display:{Name:"{\"translate\":\"sf.clay\",\"color\":\"white\",\"italic\":false}"},CustomModelData:407}

#Sieve
execute if score in_7 du_data matches 0 if block ~ ~ ~ chest{Items:[{Slot:2b,id:"minecraft:oak_planks"},{Slot:3b,id:"minecraft:chain_command_block",tag:{CustomModelData:404}},{Slot:4b,id:"minecraft:oak_planks"},{Slot:11b,id:"minecraft:oak_planks"},{Slot:12b,id:"minecraft:chain_command_block",tag:{CustomModelData:404}},{Slot:13b,id:"minecraft:oak_planks"},{Slot:20b,id:"minecraft:stick"},{Slot:22b,id:"minecraft:stick"}]} run loot replace block ~ ~ ~ container.16 loot skyfactory:recipes/sieve
