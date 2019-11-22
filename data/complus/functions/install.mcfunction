
execute if score $du.ver load matches 2000200.. run tellraw @a [{"text":"[Loaded Combat+ v0.4.0]","color":"dark_green"}]
execute unless score $du.ver load matches 2000200.. run tellraw @a [{"text":"Combat+ requires Datapack Utilities version +2.0.2. You can download that [here].","color":"dark_red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]
execute unless score $du.ver load matches 2000200.. run schedule function complus:install 5s

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Combat+. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Mechanization/releases"}}]
