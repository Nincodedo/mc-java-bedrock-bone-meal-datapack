scoreboard objectives add lookingatsmallflower dummy
scoreboard objectives add lookingatsugarcane dummy
scoreboard objectives add sugarcaneheight dummy
scoreboard objectives add rngmin dummy
scoreboard objectives add rngmax dummy
scoreboard objectives add dispslotpick dummy
scoreboard objectives add dispenser_slot0 dummy
scoreboard objectives add dispenser_slot1 dummy
scoreboard objectives add dispenser_slot2 dummy
scoreboard objectives add dispenser_slot3 dummy
scoreboard objectives add dispenser_slot4 dummy
scoreboard objectives add dispenser_slot5 dummy
scoreboard objectives add dispenser_slot6 dummy
scoreboard objectives add dispenser_slot7 dummy
scoreboard objectives add dispenser_slot8 dummy

execute if entity @e[tag=bone_meal_dispenser] run schedule function brbm:dispenser/check_run 2t
execute if entity @e[tag=bone_meal_dispenser] run schedule function brbm:dispenser/check_broken_dispenser 2.5s
