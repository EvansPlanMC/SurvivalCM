execute @e[tag=ECCI_EH] ~ ~ ~ particle portal ~ ~.6 ~ 0.1 0 0.1 0 1
execute @e[tag=ECCI_EH] ~ ~ ~ execute @e[type=Item,r=4] ~ ~ ~ particle portal ~ ~ ~ 0.1 0.1 0.1 0 10
execute @e[tag=ECCI_EH] ~ ~ ~ teleport @e[type=Item,r=4] ~ ~1 ~
execute @e[tag=ECCI_EH] ~ ~ ~ blockdata ~ ~ ~ {TransferCooldown:0}

scoreboard players tag @e[tag=ECCI_EH] add ECCI_EH_Destroy
execute @e[tag=ECCI_EH] ~ ~ ~ detect ~ ~ ~ hopper -1 scoreboard players tag @s remove ECCI_EH_Destroy

scoreboard players tag @e[tag=ECCI_EH] remove ECCI_EH_Change
execute @e[tag=ECCI_EH] ~ ~ ~ detect ~ ~ ~ hopper 8 scoreboard players tag @s add ECCI_EH_Change
execute @e[tag=ECCI_EH_Change] ~ ~ ~ detect ~ ~ ~-1 redstone_torch * setblock ~ ~ ~ hopper 2
execute @e[tag=ECCI_EH_Change] ~ ~ ~ detect ~ ~ ~1 redstone_torch * setblock ~ ~ ~ hopper 3
execute @e[tag=ECCI_EH_Change] ~ ~ ~ detect ~-1 ~ ~ redstone_torch * setblock ~ ~ ~ hopper 4
execute @e[tag=ECCI_EH_Change] ~ ~ ~ detect ~1 ~ ~ redstone_torch * setblock ~ ~ ~ hopper 5

execute @e[tag=ECCI_EH_Destroy] ~ ~ ~ summon Item ~ ~ ~ {Item:{Count:3b,id:"minecraft:hopper"},Motion:[0.0,0.3,0.0]}
execute @e[tag=ECCI_EH_Destroy] ~ ~ ~ summon Item ~ ~ ~ {Item:{Count:5b,id:"minecraft:ender_pearl"},Motion:[0.0,0.3,0.0]}
kill @e[tag=ECCI_EH_Destroy]