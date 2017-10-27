tp @e[tag=Test] ~ ~1 ~
execute @e[tag=Test] ~ ~ ~ detect ~ ~ ~ minecraft:diamond_block -1 kill @s
say 1
function survivalcm:test if @e[tag=Test]
tp @a ~ ~1 ~