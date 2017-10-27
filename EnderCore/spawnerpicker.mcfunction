scoreboard players tag @a remove SpawnerPicker
scoreboard players tag @a[tag=SneakTick] add SpawnerPicker {SelectedItem:{tag:{display:{Lore:["Stand on a spawner and tap shift while holding to use."]}}}}

execute @a[tag=SpawnerPicker] ~ ~ ~ detect ~ ~-1 ~ mob_spawner -1 give @s minecraft:mob_spawner 1 0 {display:{Name:"Pig Spawner",Lore:["Use a mob egg to change the spawner type."]}}
execute @a[tag=SpawnerPicker] ~ ~ ~ detect ~ ~-1 ~ mob_spawner -1 setblock ~ ~-1 ~ air