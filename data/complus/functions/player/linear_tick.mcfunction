


#bar
execute store result score in_0 du_data run data get entity @s SelectedItem.tag.complus_linear.base 1
execute store result score in_1 du_data run data get entity @s SelectedItem.tag.complus_linear.speed 100
execute store result score in_2 du_data run data get entity @s SelectedItem.tag.complus_linear.kb 1

#speed
scoreboard players set temp_0 du_data 200000
scoreboard players operation temp_0 du_data /= in_1 du_data

execute if score @s complus_cooldown < temp_0 du_data run scoreboard players add @s complus_cooldown 100

#cooldown bar
scoreboard players set temp_2 du_data 100
scoreboard players operation temp_1 du_data = @s complus_cooldown
scoreboard players operation temp_1 du_data *= temp_2 du_data
scoreboard players operation temp_1 du_data /= temp_0 du_data

execute if score temp_1 du_data matches 100.. run scoreboard players set temp_1 du_data 100
execute if score temp_1 du_data matches ..0 run scoreboard players set temp_1 du_data -1

title @s times 0 5 0
execute if score temp_1 du_data matches 100.. run title @s title {"text":"\uef1f"}
execute if score temp_1 du_data matches 92..99 run title @s title {"text":"\uef1e"}
execute if score temp_1 du_data matches 83..91 run title @s title {"text":"\uef1d"}
execute if score temp_1 du_data matches 78..84 run title @s title {"text":"\uef1c"}
execute if score temp_1 du_data matches 71..77 run title @s title {"text":"\uef1b"}
execute if score temp_1 du_data matches 64..70 run title @s title {"text":"\uef1a"}
execute if score temp_1 du_data matches 57..63 run title @s title {"text":"\uef19"}
execute if score temp_1 du_data matches 50..56 run title @s title {"text":"\uef18"}
execute if score temp_1 du_data matches 43..49 run title @s title {"text":"\uef17"}
execute if score temp_1 du_data matches 36..42 run title @s title {"text":"\uef16"}
execute if score temp_1 du_data matches 29..35 run title @s title {"text":"\uef15"}
execute if score temp_1 du_data matches 22..28 run title @s title {"text":"\uef14"}
execute if score temp_1 du_data matches 15..21 run title @s title {"text":"\uef13"}
execute if score temp_1 du_data matches 8..14 run title @s title {"text":"\uef12"}
execute if score temp_1 du_data matches 1..7 run title @s title {"text":"\uef11"}
execute if score temp_1 du_data matches ..0 run title @s title {"text":"\uef10"}

#edit stats
function du:player/inv/get_equipment

execute if score in_2 du_data matches 1 if score temp_1 du_data matches 100.. run function complus:player/linear_kb_add
execute if score in_2 du_data matches 2 if score temp_1 du_data matches ..99 run function complus:player/linear_kb_remove

execute store result score in_3 du_data run data get block -29999999 0 1601 Items[0].tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount
scoreboard players operation in_0 du_data *= temp_1 du_data
scoreboard players remove in_0 du_data 100
execute if score in_3 du_data <= in_1 du_data store result block -29999999 0 1601 Items[0].tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount double 0.01 run scoreboard players get in_0 du_data

function du:player/inv/restore_equipment

#sound
stopsound @a[distance=0.1..16] player minecraft:item.armor.equip_generic
