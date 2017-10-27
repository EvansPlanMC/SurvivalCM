scoreboard players set @e[tag=CCGo] RecipeID 0
scoreboard players tag @e[tag=CCGo] remove CCGo
scoreboard players tag @e[tag=CC2] add CCHasHead {ArmorItems:[{},{},{},{id:"minecraft:iron_block"}]}
replaceitem entity @e[tag=CC2] slot.armor.head minecraft:iron_block 1 0 {display:{Lore:["CC"]}}
execute @e[tag=CC2] ~ ~ ~ execute @s[tag=!CCHasHead] ~ ~ ~ scoreboard players tag @e[r=0,c=1,type=chest_minecart,tag=CC] add CCGo
scoreboard players tag @e[tag=CC2] remove CCHasHead