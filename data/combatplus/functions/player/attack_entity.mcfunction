
advancement revoke @s only combatplus:attack_entity

data modify storage combatplus:temp item set value {}
data modify storage combatplus:temp item set from entity @s SelectedItem
execute unless score @s combatplus.cooldown.pause matches 1 if data storage combatplus:temp item.tag.combatplus.style run function combatplus:player/weapon_cooldown
