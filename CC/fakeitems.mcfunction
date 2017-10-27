clear @a stained_glass_pane 7 100 {display:{Lore:["CC"]}}
clear @a iron_block 0 100 {display:{Lore:["CC"]}}
scoreboard players tag @e[type=Item] add CCFakeItem {Item:{tag:{display:{Lore:["CC"]}}}}
kill @e[tag=CCFakeItem]