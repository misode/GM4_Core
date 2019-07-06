tag @a add gm4.announce
execute if entity @a[gamemode=creative] run tag @a[gamemode=!creative] remove gm4.announce
tellraw @a[tag=gm4.announce] {"text": "[GM4]: Checking for updates...", "color": "aqua"}

scoreboard objectives add gm4.updates dummy
scoreboard objectives add gm4.versions dummy
scoreboard objectives add gm4.modules dummy

scoreboard players reset * gm4.updates
scoreboard players reset * gm4.versions

function #gm4.1:load

execute if score update_happened gm4.updates matches 1.. run tellraw @a[tag=gm4.announce] {"text": "[GM4]: Updates completed.", "color": "aqua"}
execute unless score update_happened gm4.updates matches 1.. run tellraw @a[tag=gm4.announce] {"text": "[GM4]: No updates found.", "color": "aqua"}
