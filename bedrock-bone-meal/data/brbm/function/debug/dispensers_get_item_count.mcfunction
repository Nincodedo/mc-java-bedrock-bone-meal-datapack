scoreboard players set @s brbm_debug_dispenser_bm_count 0
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0

execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0
execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:1b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0
execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:2b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0
execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:3b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0
execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:4b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0
execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:5b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0
execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:6b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0
execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:7b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp
scoreboard players set @s brbm_debug_dispenser_bm_count_temp 0
execute store result score @s brbm_debug_dispenser_bm_count_temp run data get block ~ ~ ~ Items[{Slot:8b,id:"minecraft:bone_meal"}].count
scoreboard players operation @s brbm_debug_dispenser_bm_count += @s brbm_debug_dispenser_bm_count_temp


