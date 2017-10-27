scoreboard players tag @e[tag=ECCI_EH_Item] remove ECCI_EH_Item
scoreboard players tag @e[type=Item,tag=!ECCI_NP] add ECCI_EH_Item {Item:{Count:1b,tag:{ECCI:"EH"}}}

function survivalcm:endercore/enderhopper/create if @e[tag=ECCI_EH_Item]
function survivalcm:endercore/enderhopper/function if @e[tag=ECCI_EH]