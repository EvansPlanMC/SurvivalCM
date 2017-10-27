function survivalcm:endercore/recipes if @e[tag=CCGo]
function survivalcm:endercore/sneak
function survivalcm:endercore/jump
function survivalcm:endercore/customblockremover
function survivalcm:endercore/bedrockbreaker/main
function survivalcm:endercore/enderhopper/main
function survivalcm:endercore/spawnerpicker


scoreboard players tag @a remove EC_Remover
scoreboard players tag @a[tag=SneakTick] add EC_Remover {SelectedItem:{tag:{ECCI:"Remover"}}}