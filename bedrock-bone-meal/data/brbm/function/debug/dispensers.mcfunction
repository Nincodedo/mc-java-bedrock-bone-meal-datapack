execute store result score Dispensers brbm_debug run execute if entity @e[tag=bone_meal_dispenser]

# Dispenser highlighter
execute as @e[tag=bone_meal_dispenser,tag=!brbm_debug_dispenser] at @s align xyz run summon minecraft:block_display ~ ~ ~ {Glowing:true,block_state:{Name:"minecraft:light_gray_stained_glass"},Tags:["brbm_debug_block","brbm_debug_obj"]}
execute as @e[tag=bone_meal_dispenser,tag=!brbm_debug_dispenser] run tag @s add brbm_debug_dispenser
execute as @e[tag=brbm_debug_block,tag=!brbm_debug_block_done] run data modify entity @s transformation.scale set value [0.98f,0.98f,0.98f]
execute as @e[tag=brbm_debug_block,tag=!brbm_debug_block_done] at @s run tp ~0.01 ~0.01 ~0.01

# Bone meal item display
execute as @e[tag=brbm_debug_block,tag=!brbm_debug_block_done] at @s if entity @e[tag=face_south,sort=nearest,limit=1,distance=..1] run summon minecraft:item_display ~0.5 ~0.5 ~1 {width:1.0f,item_display:"gui",item:{id:"minecraft:bone_meal",count:1},Tags:["brbm_debug_dispenser_bone_meal_item","brbm_debug_dispenser_bone_meal_south","brbm_debug_obj"]}
execute as @e[tag=brbm_debug_dispenser_bone_meal_item,tag=!brbm_debug_dispenser_bone_meal_item_done] run data modify entity @s transformation.scale set value [0.25f,0.25f,0.25f]
execute as @e[tag=brbm_debug_dispenser_bone_meal_south,tag=!brbm_debug_dispenser_bone_meal_item_done] at @s run tp ~-.37 ~.37 ~

# Bone meal item score count display
execute as @e[tag=brbm_debug_block] at @s run function brbm:debug/dispensers_get_item_count
execute as @e[tag=brbm_debug_dispenser_bone_meal_count] at @s if score @e[tag=brbm_debug_block,sort=nearest,limit=1] brbm_debug_dispenser_bm_count matches ..9 run data modify entity @s text set value '[{"score":{"name":"@e[tag=brbm_debug_block,sort=nearest,limit=1]","objective":"brbm_debug_dispenser_bm_count"}},{"text":"  "}]'
execute as @e[tag=brbm_debug_dispenser_bone_meal_count] at @s if score @e[tag=brbm_debug_block,sort=nearest,limit=1] brbm_debug_dispenser_bm_count matches 10..99 run data modify entity @s text set value '[{"score":{"name":"@e[tag=brbm_debug_block,sort=nearest,limit=1]","objective":"brbm_debug_dispenser_bm_count"}},{"text":" "}]'
execute as @e[tag=brbm_debug_dispenser_bone_meal_count] at @s if score @e[tag=brbm_debug_block,sort=nearest,limit=1] brbm_debug_dispenser_bm_count matches 100.. run data modify entity @s text set value '[{"score":{"name":"@e[tag=brbm_debug_block,sort=nearest,limit=1]","objective":"brbm_debug_dispenser_bm_count"}}]'

execute as @e[tag=brbm_debug_block,tag=!brbm_debug_block_done] at @s if entity @e[tag=face_south,sort=nearest,limit=1,distance=..2] run summon minecraft:text_display ~0.5 ~0.5 ~1 {alignment:"left",text:'{"score":{"name":"@e[tag=brbm_debug_block,sort=nearest,limit=1]","objective":"brbm_debug_dispenser_bm_count"}}',Tags:["brbm_debug_dispenser_bone_meal_count","brbm_debug_obj"]}
execute as @e[tag=brbm_debug_dispenser_bone_meal_count,tag=!brbm_debug_dispenser_bone_meal_count_done] at @s run tp ~-.05 ~.21 ~

execute as @e[tag=brbm_debug_block,tag=!brbm_debug_block_done] run tag @s add brbm_debug_block_done
execute as @e[tag=brbm_debug_dispenser_bone_meal_item,tag=!brbm_debug_dispenser_bone_meal_item_done] run tag @s add brbm_debug_dispenser_bone_meal_item_done
execute as @e[tag=brbm_debug_dispenser_bone_meal_count,tag=!brbm_debug_dispenser_bone_meal_count_done] run tag @s add brbm_debug_dispenser_bone_meal_count_done
