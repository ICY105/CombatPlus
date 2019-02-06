advancement revoke @s only complus:attack_entity

execute if data entity @s[gamemode=!creative] SelectedItem.tag.complus_knife run function complus:player/use_coas
execute if data entity @s[gamemode=!creative] SelectedItem.tag.complus_spear run function complus:player/use_coas
