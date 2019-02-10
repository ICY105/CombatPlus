advancement revoke @s only complus:use_decay_item

execute store result score in_0 du_data run data get entity @s SelectedItem.tag.complus_decay.amount

function du:player/inv/get_hands

#edit damage
execute store result score in_1 du_data run data get block -29999999 0 1601 Items[0].tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount
scoreboard players operation in_1 du_data -= in_0 du_data
execute if score in_1 du_data matches -1.. store result block -29999999 0 1601 Items[0].tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount double 1 run scoreboard players get in_1 du_data

#edit durability
execute store result score in_1 du_data run data get block -29999999 0 1601 Items[0].tag.Damage
scoreboard players add in_1 du_data 1
execute if score in_1 du_data matches -1.. store result block -29999999 0 1601 Items[0].tag.Damage int 1 run scoreboard players get in_1 du_data

function du:player/inv/restore_hands