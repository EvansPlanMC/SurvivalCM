function survivalcm:portablebeacons/recipes if @e[tag=CCGo]

scoreboard players tag @a remove PB_Switch_Haste
scoreboard players tag @a remove PB_Switch_Resistance
scoreboard players tag @a remove PB_Switch_JumpBoost
scoreboard players tag @a remove PB_Switch_Strength
scoreboard players tag @a remove PB_Switch_Speed

scoreboard players tag @a[tag=SneakTick] add PB_Switch_Haste {SelectedItem:{tag:{display:{Lore:["Effect: Speed"]}}}}
scoreboard players tag @a[tag=SneakTick] add PB_Switch_Resistance {SelectedItem:{tag:{display:{Lore:["Effect: Haste"]}}}}
scoreboard players tag @a[tag=SneakTick] add PB_Switch_JumpBoost {SelectedItem:{tag:{display:{Lore:["Effect: Resistance"]}}}}
scoreboard players tag @a[tag=SneakTick] add PB_Switch_Strength {SelectedItem:{tag:{display:{Lore:["Effect: Jump Boost"]}}}}
scoreboard players tag @a[tag=SneakTick] add PB_Switch_Speed {SelectedItem:{tag:{display:{Lore:["Effect: Strength"]}}}}

clear @a[tag=PB_Switch_Haste] repeating_command_block 0 1 {display:{Lore:["Effect: Speed"]}}
clear @a[tag=PB_Switch_Resistance] repeating_command_block 0 1 {display:{Lore:["Effect: Haste"]}}
clear @a[tag=PB_Switch_JumpBoost] repeating_command_block 0 1 {display:{Lore:["Effect: Resistance"]}}
clear @a[tag=PB_Switch_Strength] repeating_command_block 0 1 {display:{Lore:["Effect: Jump Boost"]}}
clear @a[tag=PB_Switch_Speed] repeating_command_block 0 1 {display:{Lore:["Effect: Strength"]}}

give @a[tag=PB_Switch_Haste] repeating_command_block 1 0 {display:{Name:"Portable Beacon",Lore:["Effect: Haste","Tap shift while holding to change effect."]}}
give @a[tag=PB_Switch_Resistance] repeating_command_block 1 0 {display:{Name:"Portable Beacon",Lore:["Effect: Resistance","Tap shift while holding to change effect."]}}
give @a[tag=PB_Switch_JumpBoost] repeating_command_block 1 0 {display:{Name:"Portable Beacon",Lore:["Effect: Jump Boost","Tap shift while holding to change effect."]}}
give @a[tag=PB_Switch_Strength] repeating_command_block 1 0 {display:{Name:"Portable Beacon",Lore:["Effect: Strength","Tap shift while holding to change effect."]}}
give @a[tag=PB_Switch_Speed] repeating_command_block 1 0 {display:{Name:"Portable Beacon",Lore:["Effect: Speed","Tap shift while holding to change effect."]}}

title @a[tag=PB_Switch_Haste] actionbar {"text":"Switched Effect To: Haste"}
title @a[tag=PB_Switch_Resistance] actionbar {"text":"Switched Effect To: Resistance"}
title @a[tag=PB_Switch_JumpBoost] actionbar {"text":"Switched Effect To: Jump Boost"}
title @a[tag=PB_Switch_Strength] actionbar {"text":"Switched Effect To: Strength"}
title @a[tag=PB_Switch_Speed] actionbar {"text":"Switched Effect To: Speed"}

scoreboard players tag @a remove PB_Haste
scoreboard players tag @a remove PB_Resistance
scoreboard players tag @a remove PB_JumpBoost
scoreboard players tag @a remove PB_Strength
scoreboard players tag @a remove PB_Speed

scoreboard players tag @a add PB_Speed {Inventory:[{tag:{display:{Lore:["Effect: Speed"]}}}]}
scoreboard players tag @a add PB_Haste {Inventory:[{tag:{display:{Lore:["Effect: Haste"]}}}]}
scoreboard players tag @a add PB_JumpBoost {Inventory:[{tag:{display:{Lore:["Effect: Jump Boost"]}}}]}
scoreboard players tag @a add PB_Strength {Inventory:[{tag:{display:{Lore:["Effect: Strength"]}}}]}
scoreboard players tag @a add PB_Resistance {Inventory:[{tag:{display:{Lore:["Effect: Resistance"]}}}]}

execute @a[tag=PB_Speed] ~ ~ ~ effect @a[r=10] minecraft:speed 2 1 true
execute @a[tag=PB_Haste] ~ ~ ~ effect @a[r=10] minecraft:haste 2 1 true
execute @a[tag=PB_JumpBoost] ~ ~ ~ effect @a[r=10] minecraft:jump_boost 2 1 true
execute @a[tag=PB_Strength] ~ ~ ~ effect @a[r=10] minecraft:strength 2 1 true
execute @a[tag=PB_Resistance] ~ ~ ~ effect @a[r=10] minecraft:resistance 2 1 true