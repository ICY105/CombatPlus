
advancement revoke @s only combatplus:attack_entity

data modify storage combatplus:temp item set value {}
data modify storage combatplus:temp item set from entity @s SelectedItem
execute unless entity @s[tag=combatplus.cooldown_triggered] if data storage combatplus:temp item.tag.combatplus.style run function combatplus:player/weapon_cooldown
