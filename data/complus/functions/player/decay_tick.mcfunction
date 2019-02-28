
#recharge
execute if score timer_100 du_data matches 0 run function complus:player/decay_recharge
execute if score timer_100 du_data matches 50 run function complus:player/decay_recharge

#bar
execute store result score in_0 du_data run data get entity @s SelectedItem.tag.complus_decay.base 1
execute store result score in_1 du_data run data get entity @s SelectedItem.tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount 100

scoreboard players remove in_0 du_data 1

scoreboard players operation in_1 du_data /= in_0 du_data
scoreboard players set temp_0 du_data 100
scoreboard players operation temp_0 du_data -= in_1 du_data

title @s times 0 5 0
execute if score in_1 du_data matches 100.. run title @s title {"text":"\uef1f"}
execute if score in_1 du_data matches 92..99 run title @s title {"text":"\uef1e"}
execute if score in_1 du_data matches 83..91 run title @s title {"text":"\uef1d"}
execute if score in_1 du_data matches 78..84 run title @s title {"text":"\uef1c"}
execute if score in_1 du_data matches 71..77 run title @s title {"text":"\uef1b"}
execute if score in_1 du_data matches 64..70 run title @s title {"text":"\uef1a"}
execute if score in_1 du_data matches 57..63 run title @s title {"text":"\uef19"}
execute if score in_1 du_data matches 50..56 run title @s title {"text":"\uef18"}
execute if score in_1 du_data matches 43..49 run title @s title {"text":"\uef17"}
execute if score in_1 du_data matches 36..42 run title @s title {"text":"\uef16"}
execute if score in_1 du_data matches 29..35 run title @s title {"text":"\uef15"}
execute if score in_1 du_data matches 22..28 run title @s title {"text":"\uef14"}
execute if score in_1 du_data matches 15..21 run title @s title {"text":"\uef13"}
execute if score in_1 du_data matches 8..14 run title @s title {"text":"\uef12"}
execute if score in_1 du_data matches 1..7 run title @s title {"text":"\uef11"}
execute if score in_1 du_data matches ..0 run title @s title {"text":"\uef10"}
