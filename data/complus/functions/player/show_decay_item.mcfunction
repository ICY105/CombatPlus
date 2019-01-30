
#recharge
execute if score timer_100 du_data matches 0 run function complus:player/recharge_decay_item
execute if score timer_100 du_data matches 50 run function complus:player/recharge_decay_item

#bar
title @s times 0 5 0
execute store result score in_0 du_data run data get entity @s SelectedItem.tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount
execute store result score in_1 du_data run data get entity @s SelectedItem.tag.complus_decay.base

scoreboard players set temp_0 du_data 15
scoreboard players operation temp_0 du_data /= in_1 du_data

scoreboard players operation in_0 du_data *= temp_0 du_data

execute if score in_0 du_data matches 15.. run title @s title {"text":"\uef1f"}
execute if score in_0 du_data matches 14 run title @s title {"text":"\uef1e"}
execute if score in_0 du_data matches 13 run title @s title {"text":"\uef1d"}
execute if score in_0 du_data matches 12 run title @s title {"text":"\uef1c"}
execute if score in_0 du_data matches 11 run title @s title {"text":"\uef1b"}
execute if score in_0 du_data matches 10 run title @s title {"text":"\uef1a"}
execute if score in_0 du_data matches 9 run title @s title {"text":"\uef19"}
execute if score in_0 du_data matches 8 run title @s title {"text":"\uef18"}
execute if score in_0 du_data matches 7 run title @s title {"text":"\uef17"}
execute if score in_0 du_data matches 6 run title @s title {"text":"\uef16"}
execute if score in_0 du_data matches 5 run title @s title {"text":"\uef15"}
execute if score in_0 du_data matches 4 run title @s title {"text":"\uef14"}
execute if score in_0 du_data matches 3 run title @s title {"text":"\uef13"}
execute if score in_0 du_data matches 2 run title @s title {"text":"\uef12"}
execute if score in_0 du_data matches 1 run title @s title {"text":"\uef11"}
execute if score in_0 du_data matches ..0 run title @s title {"text":"\uef10"}
