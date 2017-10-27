scoreboard players add @e[tag=ECCI_BB_Item] ECCI_BB_Timer 1
entitydata @e[score_ECCI_BB_Timer_min=1,score_ECCI_BB_Timer=20] {CustomName:"3...",CustomNameVisible:1}
entitydata @e[score_ECCI_BB_Timer_min=21,score_ECCI_BB_Timer=40] {CustomName:"2..."}
entitydata @e[score_ECCI_BB_Timer_min=41,score_ECCI_BB_Timer=60] {CustomName:"1..."}
execute @e[score_ECCI_BB_Timer_min=61] ~ ~ ~ summon leash_knot ~ ~ ~ {Invulnerable:1b,Tags:["ECCI_BB_Create"]}
execute @e[tag=ECCI_BB_Create] ~ ~ ~ summon armor_stand ~ ~-1.5 ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{id:"dragon_egg",Count:1b}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{ench:[{lvl:5,id:32}]}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{ench:[{lvl:5,id:32}]}}],DisabledSlots:2039583,Pose:{LeftArm:[0f,270f,90f],RightArm:[0f,90f,270f]},Tags:["ECCI_BB"]}
kill @e[score_ECCI_BB_Timer_min=61]
kill @e[tag=ECCI_BB_Create]