scoreboard players add @e[tag=ECCI_EH_Item] ECCI_EH_Timer 1
entitydata @e[score_ECCI_EH_Timer_min=1,score_ECCI_EH_Timer=20] {CustomName:"3...",CustomNameVisible:1}
entitydata @e[score_ECCI_EH_Timer_min=21,score_ECCI_EH_Timer=40] {CustomName:"2..."}
entitydata @e[score_ECCI_EH_Timer_min=41,score_ECCI_EH_Timer=60] {CustomName:"1..."}
execute @e[score_ECCI_EH_Timer_min=61] ~ ~ ~ summon leash_knot ~ ~ ~ {Invulnerable:1b,Tags:["ECCI_EH_Create"]}
execute @e[tag=ECCI_EH_Create] ~ ~ ~ summon armor_stand ~ ~-.5 ~ {Tags:["ECCI_EH"],NoGravity:1b,Invisible:1,Invulnerable:1,DisabledSlots:2039583}
execute @e[tag=ECCI_EH_Create] ~ ~ ~ setblock ~ ~ ~ hopper
kill @e[score_ECCI_EH_Timer_min=61]
kill @e[tag=ECCI_EH_Create]