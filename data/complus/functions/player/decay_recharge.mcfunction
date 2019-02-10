
execute store result score in_0 du_data run data get entity @s SelectedItem.tag.complus_decay.amount
execute store result score in_1 du_data run data get entity @s SelectedItem.tag.complus_decay.base
scoreboard players remove in_1 du_data 1

#edit damage
function du:player/inv/get_hands

execute store result score in_2 du_data run data get block -29999999 0 1601 Items[0].tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount
scoreboard players operation in_2 du_data += in_0 du_data
execute if score in_2 du_data <= in_1 du_data store result block -29999999 0 1601 Items[0].tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount double 1 run scoreboard players get in_2 du_data

function du:player/inv/restore_hands