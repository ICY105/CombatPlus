function du:player/inv/get_hands

execute store result score in_0 du_data run data get block -29999999 0 1601 Items[0].tag.Damage
scoreboard players add in_0 du_data 1
execute store result block -29999999 0 1601 Items[0].tag.Damage int 1 run scoreboard players get in_0 du_data

function du:player/inv/restore_hands
