execute as @e[tag=bone_meal_dispenser,tag=dispenser_powered] at @s if predicate brbm:is/block/dispenser_not_triggered run tag @s add dispenser_unpowered_soon
execute as @e[tag=bone_meal_dispenser,tag=!dispenser_powered] at @s if predicate brbm:is/block/dispenser_triggered_with_bone_meal run function brbm:dispenser/run
tag @e[tag=dispenser_unpowered_soon] remove dispenser_powered
tag @e[tag=dispenser_unpowered_soon] remove dispenser_unpowered_soon

execute if entity @a[tag=brbm_debug] run function brbm:debug/dispensers
execute unless entity @a[tag=brbm_debug] run kill @e[tag=brbm_debug_obj]
execute if entity @e[tag=bone_meal_dispenser] run schedule function brbm:dispenser/check_run 2t
