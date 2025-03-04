
# get style
scoreboard players set #style combatplus.data 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{style:"linear"}}] run scoreboard players set #style combatplus.data 1
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{style:"decay"}}] run scoreboard players set #style combatplus.data 2
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{style:"combo"}}] run scoreboard players set #style combatplus.data 3
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{style:"range"}}] run scoreboard players set #style combatplus.data 4

execute if score #style combatplus.data matches 0 if entity @s[tag=combatplus.active_cooldown] run function combatplus:player/weapon_end
execute if score #style combatplus.data matches 0 run return 0

# tag
tag @s add combatplus.active_cooldown

# process slot change
execute store result score #slot combatplus.data run data get entity @s SelectedItemSlot
execute unless score @s combatplus.data = #slot combatplus.data run scoreboard players set @s combatplus.cooldown 0
scoreboard players operation @s combatplus.data = #slot combatplus.data

# get attack speed
attribute @s minecraft:attack_speed modifier remove combatplus:max_attack_speed
execute store result score #attack_speed combatplus.data run attribute @s minecraft:attack_speed get 75
attribute @s minecraft:attack_speed modifier add combatplus:max_attack_speed 1024 add_value

# get stats
execute if score #style combatplus.data matches 1 run scoreboard players operation #attack_speed combatplus.data *= #cons.9 combatplus.data
execute if score #style combatplus.data matches 1 run scoreboard players operation #attack_speed combatplus.data /= #cons.10 combatplus.data

execute if score #style combatplus.data matches 2 run scoreboard players operation #attack_speed combatplus.data /= #cons.2 combatplus.data

execute if score #style combatplus.data matches 4 run scoreboard players operation #attack_speed combatplus.data *= #cons.8 combatplus.data
execute if score #style combatplus.data matches 4 run scoreboard players operation #attack_speed combatplus.data /= #cons.10 combatplus.data

# cooldown
execute if score @s combatplus.cooldown.pause matches 1.. run scoreboard players remove @s combatplus.cooldown.pause 1

execute unless score @s combatplus.cooldown.pause matches 1.. if score #style combatplus.data matches 1..2 run scoreboard players operation @s combatplus.cooldown += #attack_speed combatplus.data
execute unless score @s combatplus.cooldown.pause matches 1.. if score #style combatplus.data matches 4 run scoreboard players operation @s combatplus.cooldown += #attack_speed combatplus.data
execute unless score @s combatplus.cooldown.pause matches 1.. if score #style combatplus.data matches 3 run scoreboard players operation @s combatplus.cooldown -= #attack_speed combatplus.data

execute if score @s combatplus.cooldown matches ..0 run scoreboard players set @s combatplus.cooldown 0
execute if score @s combatplus.cooldown matches 1500.. run scoreboard players set @s combatplus.cooldown 1500

# cooldown bar
title @s times 0t 2t 0t
execute if score @s combatplus.cooldown matches 1500.. run title @s title {"text":"\uef1f", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 1400..1499 run title @s title {"text":"\uef1e", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 1300..1399 run title @s title {"text":"\uef1d", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 1200..1299 run title @s title {"text":"\uef1c", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 1100..1199 run title @s title {"text":"\uef1b", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 1000..1099 run title @s title {"text":"\uef1a", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 900..999 run title @s title {"text":"\uef19", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 800..899 run title @s title {"text":"\uef18", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 700..799 run title @s title {"text":"\uef17", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 600..699 run title @s title {"text":"\uef16", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 500..599 run title @s title {"text":"\uef15", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 400..499 run title @s title {"text":"\uef14", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 300..399 run title @s title {"text":"\uef13", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 200..299 run title @s title {"text":"\uef12", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 100..199 run title @s title {"text":"\uef11", "font":"combatplus:cooldown", "shadow_color": 0}
execute if score @s combatplus.cooldown matches 0..99 run title @s title {"text":"\uef10", "font":"combatplus:cooldown", "shadow_color": 0}

# damage modification
attribute @s minecraft:attack_damage modifier remove combatplus:damage_modifer
attribute @s minecraft:entity_interaction_range modifier remove combatplus:range_modifier

scoreboard players set #cooldown combatplus.data 1500
scoreboard players operation #cooldown combatplus.data -= @s combatplus.cooldown

execute if score #cooldown combatplus.data matches 1496.. run scoreboard players set #cooldown combatplus.data 1495

data modify storage combatplus:temp obj set value {value: 0}
execute store result storage combatplus:temp obj.value double 0.000666666666667 run scoreboard players get #cooldown combatplus.data
execute if score #style combatplus.data matches 1..3 run function combatplus:player/apply_attack_damage_attribute with storage combatplus:temp obj
execute if score #style combatplus.data matches 4 run function combatplus:player/apply_range_attribute with storage combatplus:temp obj
