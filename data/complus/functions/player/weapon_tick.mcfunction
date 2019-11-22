
#bar
execute store result score in_0 du_data run data get entity @s SelectedItem.tag.complus.base 10
execute store result score in_1 du_data run data get entity @s SelectedItem.tag.complus.speed 1
execute store result score in_2 du_data run data get entity @s SelectedItem.tag.complus.kb 1
execute store result score in_3 du_data run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:sharpness"}].lvl 10

#speed
scoreboard players operation @s complus_cooldown += in_1 du_data
execute if score @s complus_cooldown matches ..0 run scoreboard players set @s complus_cooldown 0
execute if score @s complus_cooldown matches 1500.. run scoreboard players set @s complus_cooldown 1500

#cooldown bar
title @s times 0 5 0
execute if score @s complus_cooldown matches 1500.. run title @s title {"text":"\uef1f"}
execute if score @s complus_cooldown matches 1400..1499 run title @s title {"text":"\uef1e"}
execute if score @s complus_cooldown matches 1300..1399 run title @s title {"text":"\uef1d"}
execute if score @s complus_cooldown matches 1200..1299 run title @s title {"text":"\uef1c"}
execute if score @s complus_cooldown matches 1100..1199 run title @s title {"text":"\uef1b"}
execute if score @s complus_cooldown matches 1000..1099 run title @s title {"text":"\uef1a"}
execute if score @s complus_cooldown matches 900..999 run title @s title {"text":"\uef19"}
execute if score @s complus_cooldown matches 800..899 run title @s title {"text":"\uef18"}
execute if score @s complus_cooldown matches 700..799 run title @s title {"text":"\uef17"}
execute if score @s complus_cooldown matches 600..699 run title @s title {"text":"\uef16"}
execute if score @s complus_cooldown matches 500..599 run title @s title {"text":"\uef15"}
execute if score @s complus_cooldown matches 400..499 run title @s title {"text":"\uef14"}
execute if score @s complus_cooldown matches 300..399 run title @s title {"text":"\uef13"}
execute if score @s complus_cooldown matches 200..299 run title @s title {"text":"\uef12"}
execute if score @s complus_cooldown matches 100..199 run title @s title {"text":"\uef11"}
execute if score @s complus_cooldown matches 0..99 run title @s title {"text":"\uef10"}

#attack damage
function du:player/inv/get_equipment

execute if score in_2 du_data matches 1 if score @s complus_cooldown matches 1500.. run function complus:player/weapon_add_kb
execute if score in_2 du_data matches 2 if score @s complus_cooldown matches ..1499 run function complus:player/weapon_remove_kb

scoreboard players operation in_0 du_data += in_3 du_data
scoreboard players operation in_0 du_data *= @s complus_cooldown

scoreboard players set temp_0 du_data 3
scoreboard players operation in_0 du_data /= temp_0 du_data
scoreboard players remove in_0 du_data 4999

scoreboard players set temp_0 du_data 500
scoreboard players operation in_3 du_data *= temp_0 du_data
scoreboard players operation in_0 du_data -= in_3 du_data

execute store result block -29999999 0 1601 Items[0].tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount double 0.0002 run scoreboard players get in_0 du_data

function du:player/inv/restore_equipment

#sound
stopsound @a[distance=0.1..16] player minecraft:item.armor.equip_generic
