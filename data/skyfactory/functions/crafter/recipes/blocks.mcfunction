#Barrel
execute if score in_1 du_data matches 0 if score in_4 du_data matches 0 if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:oak_planks"},{Slot:4b, id:"minecraft:oak_planks"},{Slot:11b, id:"minecraft:oak_planks"},{Slot:13b, id:"minecraft:oak_planks"},{Slot:20b, id:"minecraft:oak_planks"},{Slot:21b, id:"minecraft:oak_slab"},{Slot:22b, id:"minecraft:oak_planks"}]} run replaceitem block ~ ~ ~ container.16 ghast_spawn_egg{display:{Name:"{\"translate\":\"sf.barrel\",\"italic\":false}"},CustomModelData:404,EntityTag:{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["sf.placeBarrel","sf.block"]}}}}
