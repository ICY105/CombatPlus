
tag @s add combatplus.active_cooldown

# get attack speed
attribute @s minecraft:generic.attack_speed modifier remove dd087eab-976d-41a5-a84b-9fdee0fdf97f
execute store result score #attack_speed combatplus.data run attribute @s minecraft:generic.attack_speed get 75
attribute @s minecraft:generic.attack_speed modifier add dd087eab-976d-41a5-a84b-9fdee0fdf97f "generic.attack_speed" 1024 add

# get stats
execute store result score #knockback combatplus.data run data get storage combatplus:temp item.tag.combatplus.knockback

scoreboard players set #style combatplus.data 0
execute if data storage combatplus:temp item.tag.combatplus{style:"linear"} run scoreboard players set #style combatplus.data 1
execute if data storage combatplus:temp item.tag.combatplus{style:"decay"} run scoreboard players set #style combatplus.data 2
execute if data storage combatplus:temp item.tag.combatplus{style:"combo"} run scoreboard players set #style combatplus.data 3

execute if score #style combatplus.data matches 1 run scoreboard players operation #attack_speed combatplus.data *= #cons.9 combatplus.data
execute if score #style combatplus.data matches 1 run scoreboard players operation #attack_speed combatplus.data /= #cons.10 combatplus.data

execute if score #style combatplus.data matches 2 run scoreboard players operation #attack_speed combatplus.data /= #cons.2 combatplus.data

# cooldown
execute if score @s combatplus.cooldown.pause matches 1.. run scoreboard players remove @s combatplus.cooldown.pause 1

execute unless score @s combatplus.cooldown.pause matches 1.. if score #style combatplus.data matches 1..2 run scoreboard players operation @s combatplus.cooldown += #attack_speed combatplus.data
execute unless score @s combatplus.cooldown.pause matches 1.. if score #style combatplus.data matches 3 run scoreboard players operation @s combatplus.cooldown -= #attack_speed combatplus.data

execute if score @s combatplus.cooldown matches ..0 run scoreboard players set @s combatplus.cooldown 0
execute if score @s combatplus.cooldown matches 1500.. run scoreboard players set @s combatplus.cooldown 1500

# cooldown bar
title @s times 0t 2t 0t
execute if score @s combatplus.cooldown matches 1500.. run title @s title {"text":"\uef1f", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 1400..1499 run title @s title {"text":"\uef1e", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 1300..1399 run title @s title {"text":"\uef1d", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 1200..1299 run title @s title {"text":"\uef1c", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 1100..1199 run title @s title {"text":"\uef1b", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 1000..1099 run title @s title {"text":"\uef1a", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 900..999 run title @s title {"text":"\uef19", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 800..899 run title @s title {"text":"\uef18", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 700..799 run title @s title {"text":"\uef17", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 600..699 run title @s title {"text":"\uef16", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 500..599 run title @s title {"text":"\uef15", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 400..499 run title @s title {"text":"\uef14", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 300..399 run title @s title {"text":"\uef13", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 200..299 run title @s title {"text":"\uef12", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 100..199 run title @s title {"text":"\uef11", "font":"combatplus:cooldown"}
execute if score @s combatplus.cooldown matches 0..99 run title @s title {"text":"\uef10", "font":"combatplus:cooldown"}

# damage modification
attribute @s minecraft:generic.attack_damage modifier remove 898b7201-91d6-4d1e-9996-d3646f2b0d21
attribute @s minecraft:generic.attack_damage modifier remove 5fae72dd-d739-4d50-9fbf-5ac262cb9356

scoreboard players operation #remainder combatplus.data = @s combatplus.cooldown
scoreboard players operation #remainder combatplus.data %= #cons.150 combatplus.data

execute if score @s combatplus.cooldown matches 0..149 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.9 multiply_base
execute if score @s combatplus.cooldown matches 150..299 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.8 multiply_base
execute if score @s combatplus.cooldown matches 300..449 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.7 multiply_base
execute if score @s combatplus.cooldown matches 450..599 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.6 multiply_base
execute if score @s combatplus.cooldown matches 600..749 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.5 multiply_base
execute if score @s combatplus.cooldown matches 750..899 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.4 multiply_base
execute if score @s combatplus.cooldown matches 900..1049 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.3 multiply_base
execute if score @s combatplus.cooldown matches 1050..1199 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.2 multiply_base
execute if score @s combatplus.cooldown matches 1200..1349 run attribute @s minecraft:generic.attack_damage modifier add 898b7201-91d6-4d1e-9996-d3646f2b0d21 "generic.attack_damage" -0.1 multiply_base

execute if score #remainder combatplus.data matches 0..14 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.09 multiply_base
execute if score #remainder combatplus.data matches 15..29 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.08 multiply_base
execute if score #remainder combatplus.data matches 30..44 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.07 multiply_base
execute if score #remainder combatplus.data matches 45..59 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.06 multiply_base
execute if score #remainder combatplus.data matches 60..74 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.05 multiply_base
execute if score #remainder combatplus.data matches 75..89 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.04 multiply_base
execute if score #remainder combatplus.data matches 90..104 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.03 multiply_base
execute if score #remainder combatplus.data matches 105..119 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.02 multiply_base
execute if score #remainder combatplus.data matches 120..134 run attribute @s minecraft:generic.attack_damage modifier add 5fae72dd-d739-4d50-9fbf-5ac262cb9356 "generic.attack_damage" -0.01 multiply_base

