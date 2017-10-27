scoreboard players tag @e[tag=ECCI_BB_Item] remove ECCI_BB_Item
scoreboard players tag @e[type=Item,tag=!ECCI_NP] add ECCI_BB_Item {Item:{Count:1b,tag:{ECCI:"BB"}}}

function survivalcm:endercore/bedrockbreaker/create if @e[tag=ECCI_BB_Item]
function survivalcm:endercore/bedrockbreaker/function if @e[tag=ECCI_BB]