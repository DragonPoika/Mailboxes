execute if block ~ ~ ~ furnace[facing=south] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=north] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[180.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=east] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[-90.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute if block ~ ~ ~ furnace[facing=west] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[90.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
data modify entity @e[type=item_display,tag=mailbox_display,distance=..0.5,limit=1,sort=nearest] CustomName set from block ~ ~ ~ Items[0].tag.display.Name
execute as @e[tag=mailbox_display,limit=1,sort=nearest] at @s run data modify entity @s item set from block ~ ~ ~ Items[0]
summon interaction ~ ~-0.5 ~ {Tags:["mailbox_interaction"],height:1.4,width:0.5}
summon marker ~ ~-0.5 ~ {Tags:["mailbox_storage"]}
scoreboard players set @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] mailbox.itemcount 0
scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.itemcount 0
scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.settings 1
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Acacia Mailbox"}'}}}]} run setblock ~ ~ ~ acacia_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Bamboo Mailbox"}'}}}]} run setblock ~ ~ ~ bamboo_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Birch Mailbox"}'}}}]} run setblock ~ ~ ~ birch_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Cherry Mailbox"}'}}}]} run setblock ~ ~ ~ cherry_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Crimson Mailbox"}'}}}]} run setblock ~ ~ ~ crimson_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Dark Oak Mailbox"}'}}}]} run setblock ~ ~ ~ dark_oak_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Jungle Mailbox"}'}}}]} run setblock ~ ~ ~ jungle_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Mangrove Mailbox"}'}}}]} run setblock ~ ~ ~ mangrove_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Oak Mailbox"}'}}}]} run setblock ~ ~ ~ oak_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Spruce Mailbox"}'}}}]} run setblock ~ ~ ~ spruce_fence
execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Warped Mailbox"}'}}}]} run setblock ~ ~ ~ warped_fence