#Barrel
execute if score in_1 du_data matches 0 if score in_4 du_data matches 0 if block ~ ~ ~ chest{Items:[{Slot:2b, id:"minecraft:oak_planks"},{Slot:4b, id:"minecraft:oak_planks"},{Slot:11b, id:"minecraft:oak_planks"},{Slot:13b, id:"minecraft:oak_planks"},{Slot:20b, id:"minecraft:oak_planks"},{Slot:21b, id:"minecraft:oak_slab"},{Slot:22b, id:"minecraft:oak_planks"}]} run replaceitem block ~ ~ ~ container.16 ghast_spawn_egg{display:{Name:"{\"translate\":\"sf.barrel\",\"italic\":false}"},CustomModelData:404,EntityTag:{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["sf.placeBarrel","sf.block"]}}

#String Mesh
execute if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:string"},{Slot:3b, id:"minecraft:string"},{Slot:4b, id:"minecraft:string"},{Slot:11b, id:"minecraft:string"},{Slot:12b, id:"minecraft:string"},{Slot:13b, id:"minecraft:string"},{Slot:20b, id:"minecraft:string"},{Slot:21b, id:"minecraft:string"},{Slot:22b, id:"minecraft:string"}]} run replaceitem block ~ ~ ~ container.16 poppy{display:{Name:"{\"translate\":\"sf.stringmesh\"}"},CustomModelData:434}}}
