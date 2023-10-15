execute if entity @e[type=interaction,tag=mailbox_interaction,dx=0] run scoreboard players set #block mailbox.settings 1
execute unless score #block mailbox.settings matches 1 if block ~ ~ ~ furnace[facing=south] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute unless score #block mailbox.settings matches 1 if block ~ ~ ~ furnace[facing=north] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[180.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute unless score #block mailbox.settings matches 1 if block ~ ~ ~ furnace[facing=east] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[-90.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute unless score #block mailbox.settings matches 1 if block ~ ~ ~ furnace[facing=west] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[90.0f,0.0f],Tags:["mailbox_display"],item_display:"head",item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:69420}}}
execute unless score #block mailbox.settings matches 1 run data modify entity @e[type=item_display,tag=mailbox_display,distance=..0.5,limit=1,sort=nearest] CustomName set from block ~ ~ ~ Items[0].tag.display.Name
execute as @e[tag=mailbox_display,limit=1,sort=nearest] at @s unless score #block mailbox.settings matches 1 run data modify entity @s item set from block ~ ~ ~ Items[0]
execute unless score #block mailbox.settings matches 1 run summon interaction ~ ~-0.5 ~ {Tags:["mailbox_interaction"],height:1.4,width:0.5}
execute unless score #block mailbox.settings matches 1 run summon marker ~ ~-0.5 ~ {Tags:["mailbox_storage"]}
execute unless score #block mailbox.settings matches 1 run scoreboard players set @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] mailbox.itemcount 0
execute unless score #block mailbox.settings matches 1 run scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.itemcount 0
execute unless score #block mailbox.settings matches 1 run scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.settings 1
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Acacia Mailbox"}'}}}]} run setblock ~ ~ ~ acacia_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Bamboo Mailbox"}'}}}]} run setblock ~ ~ ~ bamboo_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Birch Mailbox"}'}}}]} run setblock ~ ~ ~ birch_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Cherry Mailbox"}'}}}]} run setblock ~ ~ ~ cherry_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Crimson Mailbox"}'}}}]} run setblock ~ ~ ~ crimson_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Dark Oak Mailbox"}'}}}]} run setblock ~ ~ ~ dark_oak_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Jungle Mailbox"}'}}}]} run setblock ~ ~ ~ jungle_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Mangrove Mailbox"}'}}}]} run setblock ~ ~ ~ mangrove_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Oak Mailbox"}'}}}]} run setblock ~ ~ ~ oak_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Spruce Mailbox"}'}}}]} run setblock ~ ~ ~ spruce_fence
execute unless score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Warped Mailbox"}'}}}]} run setblock ~ ~ ~ warped_fence

execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Acacia Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:acacia_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Bamboo Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:bamboo_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Birch Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:birch_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Cherry Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:cherry_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Crimson Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:crimson_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Dark Oak Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:dark_oak_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Jungle Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:jungle_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Mangrove Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:mangrove_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Oak Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:oak_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Spruce Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:spruce_box
execute if score #block mailbox.settings matches 1 run execute if block ~ ~ ~ furnace{Items:[{tag:{display:{Name:'{"text":"Warped Mailbox"}'}}}]} run loot spawn ~ ~ ~ loot mailboxes:warped_box
execute if score #block mailbox.settings matches 1 run setblock ~ ~ ~ air
scoreboard players reset #block mailbox.settings