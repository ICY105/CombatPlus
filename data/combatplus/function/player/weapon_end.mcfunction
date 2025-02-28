
attribute @s minecraft:attack_speed modifier remove combatplus:max_attack_speed
attribute @s minecraft:attack_damage modifier remove combatplus:damage_modifer
attribute @s minecraft:entity_interaction_range modifier remove combatplus:range_modifier

scoreboard players set @s combatplus.cooldown 0
tag @s remove combatplus.active_cooldown
