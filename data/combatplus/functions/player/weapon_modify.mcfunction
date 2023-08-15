
#attack damage
function du:player/inv/get_equipment

execute if score in_2 du_data matches 1 if score @s combatplus_cooldown matches 1500.. run function combatplus:player/weapon_add_kb
execute if score in_2 du_data matches 2 if score @s combatplus_cooldown matches ..1499 run function combatplus:player/weapon_remove_kb

scoreboard players operation in_0 du_data += in_3 du_data
scoreboard players operation in_0 du_data *= @s combatplus_cooldown

scoreboard players set temp_0 du_data 3
scoreboard players operation in_0 du_data /= temp_0 du_data
scoreboard players remove in_0 du_data 4999

scoreboard players set temp_0 du_data 500
scoreboard players operation in_3 du_data *= temp_0 du_data
scoreboard players operation in_0 du_data -= in_3 du_data

execute store result block -29999999 0 1601 Items[0].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount double 0.0002 run scoreboard players get in_0 du_data

function du:player/inv/restore_equipment

#sound
stopsound @a[distance=0.1..16] player minecraft:item.armor.equip_generic
