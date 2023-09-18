
summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]}]}}}}

execute if block ~ ~ ~ furnace[facing=south] run summon item_display ~ ~ ~ {Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=north] run summon item_display ~ ~ ~ {Rotation:[180.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=east] run summon item_display ~ ~ ~ {Rotation:[-90.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=west] run summon item_display ~ ~ ~ {Rotation:[90.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute as @e[tag=mailbox_display,limit=1,sort=nearest] at @s run data modify entity @s item set from block ~ ~ ~ Items[0]
setblock ~ ~ ~ oak_fence