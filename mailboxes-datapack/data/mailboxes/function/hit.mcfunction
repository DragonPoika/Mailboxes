execute if score @s mailboxes.settings matches 0 if block ~ ~ ~ minecraft:piston_head run scoreboard players set @n[type=interaction,tag=mailbox_interaction] mailboxes.hit 2
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences run scoreboard players set @n[type=interaction,tag=mailbox_interaction] mailboxes.hit 2
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Acacia Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:acacia_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Bamboo Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:bamboo_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Birch Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:birch_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Cherry Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:cherry_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Crimson Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:crimson_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Dark Oak Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:dark_oak_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Jungle Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:jungle_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Mangrove Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:mangrove_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Oak Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:oak_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Spruce Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:spruce_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailbox_display,distance=..1,nbt={item:{components:{"minecraft:custom_name":{"text":"Warped Mailbox"}}}}] run kill @n[type=item,distance=..2,nbt={Item:{id:"minecraft:warped_fence",count:1}}]
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~ ~ ~-1 piston[extended=true,facing=south] run setblock ~ ~ ~1 air
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~ ~ ~1 piston[extended=true,facing=north] run setblock ~ ~ ~-1 air
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~-1 ~ ~ piston[extended=true,facing=east] run setblock ~1 ~ ~ air
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~1 ~ ~ piston[extended=true,facing=west] run setblock ~-1 ~ ~ air
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~ ~-1 ~ piston[extended=true,facing=up] run setblock ~ ~1 ~ air
execute if score @s mailboxes.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~ ~1 ~ piston[extended=true,facing=down] run setblock ~ ~-1 ~ air
execute if score @s mailboxes.settings matches 2 unless block ~ ~ ~ minecraft:end_rod run scoreboard players set @n[type=interaction,tag=mailbox_interaction] mailboxes.hit 2
execute if score @s mailboxes.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~ ~ ~-1 piston[extended=true,facing=south] run setblock ~ ~ ~1 air
execute if score @s mailboxes.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~ ~ ~1 piston[extended=true,facing=north] run setblock ~ ~ ~-1 air
execute if score @s mailboxes.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~-1 ~ ~ piston[extended=true,facing=east] run setblock ~1 ~ ~ air
execute if score @s mailboxes.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~1 ~ ~ piston[extended=true,facing=west] run setblock ~-1 ~ ~ air
execute if score @s mailboxes.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~ ~-1 ~ piston[extended=true,facing=up] run setblock ~ ~1 ~ air
execute if score @s mailboxes.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~ ~1 ~ piston[extended=true,facing=down] run setblock ~ ~-1 ~ air
execute on attacker if entity @s[gamemode=creative] run scoreboard players set @n[type=interaction,tag=mailbox_interaction] mailboxes.hit 2
execute on attacker if entity @s[gamemode=creative] run tag @n[type=item_display,tag=mailbox_display] add no_drop
scoreboard players add @s mailboxes.hit 1
execute if score @s mailboxes.hit matches 3.. as @n[type=item_display,tag=mailbox_display] at @s run function mailboxes:break
execute if score @s mailboxes.hit matches 3.. if score @s mailboxes.itemcount matches 1.. run tag @n[type=marker,tag=mailbox_storage] add empty_fully
execute if score @s mailboxes.hit matches 3.. if score @s mailboxes.itemcount matches 1.. as @n[type=marker,tag=mailbox_storage] at @s run function mailboxes:empty
execute if score @s mailboxes.hit matches 3.. unless score @s mailboxes.itemcount matches 1.. run kill @n[type=marker,tag=mailbox_storage]
execute if score @s mailboxes.hit matches 3.. if block ~ ~ ~-1 piston[extended=true,facing=south] run setblock ~ ~ ~ piston_head[facing=south]
execute if score @s mailboxes.hit matches 3.. if block ~ ~ ~1 piston[extended=true,facing=north] run setblock ~ ~ ~ piston_head[facing=north]
execute if score @s mailboxes.hit matches 3.. if block ~-1 ~ ~ piston[extended=true,facing=east] run setblock ~ ~ ~ piston_head[facing=east]
execute if score @s mailboxes.hit matches 3.. if block ~1 ~ ~ piston[extended=true,facing=west] run setblock ~ ~ ~ piston_head[facing=west]
execute if score @s mailboxes.hit matches 3.. if block ~ ~-1 ~ piston[extended=true,facing=up] run setblock ~ ~ ~ piston_head[facing=up]
execute if score @s mailboxes.hit matches 3.. if block ~ ~1 ~ piston[extended=true,facing=down] run setblock ~ ~ ~ piston_head[facing=down]
execute if score @s mailboxes.hit matches 3.. run kill @s

playsound minecraft:entity.armor_stand.hit block @a ~ ~ ~ 1 1

data remove entity @s attack