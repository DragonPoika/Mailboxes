execute align xyz positioned ~ ~ ~ if entity @e[type=interaction,tag=mailboxes.interaction,dx=0] run scoreboard players set #block mailboxes.settings 1
execute unless score #block mailboxes.settings matches 0 if block ~ ~ ~ blast_furnace[facing=south] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Tags:["mailboxes.display"],item_display:"head",item:{id:"minecraft:stick",count:1}}
execute unless score #block mailboxes.settings matches 0 if block ~ ~ ~ blast_furnace[facing=north] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[180.0f,0.0f],Tags:["mailboxes.display"],item_display:"head",item:{id:"minecraft:stick",count:1}}
execute unless score #block mailboxes.settings matches 0 if block ~ ~ ~ blast_furnace[facing=east] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[-90.0f,0.0f],Tags:["mailboxes.display"],item_display:"head",item:{id:"minecraft:stick",count:1}}
execute unless score #block mailboxes.settings matches 0 if block ~ ~ ~ blast_furnace[facing=west] run summon item_display ~ ~ ~ {CustomName:'{"text":"yes"}',Rotation:[90.0f,0.0f],Tags:["mailboxes.display"],item_display:"head",item:{id:"minecraft:stick",count:1}}
execute unless score #block mailboxes.settings matches 0 run data modify entity @n[type=item_display,tag=mailboxes.display,distance=..0.5] CustomName set from block ~ ~ ~ CustomName
execute as @n[tag=mailboxes.display] at @s unless score #block mailboxes.settings matches 0 run function mailboxes:set_block_model with block ~ ~ ~ components."minecraft:custom_data".mailboxes
execute unless score #block mailboxes.settings matches 0 run summon interaction ~ ~-0.5 ~ {Tags:["mailboxes.interaction"],height:1.4,width:0.5}
execute unless score #block mailboxes.settings matches 0 run summon marker ~ ~-0.5 ~ {Tags:["mailboxes.storage"]}
execute unless score #block mailboxes.settings matches 0 run scoreboard players set @n[type=marker,tag=mailboxes.storage] mailboxes.itemcount 0
execute unless score #block mailboxes.settings matches 0 run scoreboard players set @n[type=interaction,tag=mailboxes.interaction] mailboxes.itemcount 0
execute unless score #block mailboxes.settings matches 0 run scoreboard players set @n[type=interaction,tag=mailboxes.interaction] mailboxes.settings 1
execute unless score #block mailboxes.settings matches 0 run function mailboxes:set_block with block ~ ~ ~ components."minecraft:custom_data".mailboxes

execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Acacia Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:acacia_mailbox
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Bamboo Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:bamboo_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Birch Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:birch_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Cherry Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:cherry_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Crimson Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:crimson_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Dark Oak Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:dark_oak_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Jungle Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:jungle_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Mangrove Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:mangrove_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Oak Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:oak_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Spruce Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:spruce_box
execute if score #block mailboxes.settings matches 1 run execute if block ~ ~ ~ blast_furnace{Items:[{components:{"minecraft:custom_name":"Warped Mailbox"}}]} run loot spawn ~ ~ ~ loot mailboxes:warped_box
execute if score #block mailboxes.settings matches 1 run setblock ~ ~ ~ air
scoreboard players reset #block mailboxes.settings

advancement grant @s only mailboxes:placed_mailbox