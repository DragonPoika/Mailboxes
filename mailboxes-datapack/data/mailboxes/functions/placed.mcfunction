execute if block ~ ~ ~ furnace[facing=south] run summon item_display ~ ~ ~ {Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=north] run summon item_display ~ ~ ~ {Rotation:[180.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=east] run summon item_display ~ ~ ~ {Rotation:[-90.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=west] run summon item_display ~ ~ ~ {Rotation:[90.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute as @e[tag=mailbox_display,limit=1,sort=nearest] at @s run data modify entity @s item set from block ~ ~ ~ Items[0]
summon interaction ~ ~-0.5 ~ {Tags:["mailbox_interaction"],height:1.4,width:0.5}
summon marker ~ ~-0.5 ~ {Tags:["mailbox_storage"]}
scoreboard players set @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] mailbox.itemcount 0
scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.itemcount 0
setblock ~ ~ ~ air