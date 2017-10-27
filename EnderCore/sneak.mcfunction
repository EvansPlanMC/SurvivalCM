scoreboard players tag @a remove Sneaking
scoreboard players tag @a[score_EC_SneakTime_min=1] add Sneaking
scoreboard players set @a EC_SneakTime 0

scoreboard players tag @a[tag=!Sneaking] remove SneakTickDone
scoreboard players tag @a[tag=SneakTick] add SneakTickDone
scoreboard players tag @a remove SneakTick
scoreboard players tag @a[tag=Sneaking] add SneakTick
scoreboard players tag @a[tag=SneakTickDone] remove SneakTick