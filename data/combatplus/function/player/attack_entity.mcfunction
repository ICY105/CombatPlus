
advancement revoke @s only combatplus:attack_entity

execute unless entity @s[tag=combatplus.cooldown_triggered] if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{}}] run function combatplus:player/weapon_cooldown
