execute if entity @s[gamemode=creative] at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:small_flowers run setblock ~ ~ ~ minecraft:air
execute if entity @s[gamemode=survival] at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:small_flowers run setblock ~ ~ ~ minecraft:air destroy

advancement revoke @s only brbm:small_flowers/break_at_interaction
