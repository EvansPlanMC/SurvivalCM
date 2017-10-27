execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~ ~ minecraft:bedrock -1 setblock ~ ~ ~ air
tp @e[tag=ECCI_BB] ~ ~ ~ ~2 ~

execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~1 ~ minecraft:piston -1 playsound minecraft:entity.endermen.teleport block @a[r=20] ~ ~ ~ 0.2 2
execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~-1 ~ minecraft:piston -1 playsound minecraft:entity.endermen.teleport block @a[r=20] ~ ~ ~ 0.2 2

execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~1 ~ minecraft:piston 0 tp @s ~ ~-1 ~
execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~-1 ~ minecraft:piston 0 tp @s ~ ~-2 ~

execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~1 ~ minecraft:piston 1 tp @s ~ ~2 ~
execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~-1 ~ minecraft:piston 1 tp @s ~ ~1 ~

execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~-1 ~ minecraft:piston 2 tp @s ~ ~ ~-1
execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~1 ~ minecraft:piston 2 tp @s ~ ~ ~-1

execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~-1 ~ minecraft:piston 3 tp @s ~ ~ ~1
execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~1 ~ minecraft:piston 3 tp @s ~ ~ ~1

execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~-1 ~ minecraft:piston 4 tp @s ~-1 ~ ~
execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~1 ~ minecraft:piston 4 tp @s ~-1 ~ ~

execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~-1 ~ minecraft:piston 5 tp @s ~1 ~ ~
execute @e[tag=ECCI_BB] ~ ~ ~ detect ~ ~1 ~ minecraft:piston 5 tp @s ~1 ~ ~

execute @a[tag=EC_Remover] ~ ~ ~ scoreboard players tag @e[tag=ECCI_BB,r=2] add ECCI_BB_Delete
execute @e[tag=ECCI_BB_Delete] ~ ~ ~ summon Item ~ ~ ~ {Motion:[0.0,0.5,0.0],Tags:["ECCI_NP"],Item:{id:"minecraft:command_block",Count:1b,tag:{ECCI:"BB",display:{Lore:["Drop To Place"],Name:"Bedrock Breaker"}},Damage:0s}}
kill @e[tag=ECCI_BB_Delete]