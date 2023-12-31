execute if score @s mailbox.settings matches 0 if block ~ ~ ~ minecraft:piston_head run scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.hit 2
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences run scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.hit 2
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Acacia Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:acacia_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Bamboo Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bamboo_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Birch Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:birch_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Cherry Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:cherry_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Crimson Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:crimson_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Dark Oak Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dark_oak_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Jungle Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Mangrove Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:mangrove_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Oak Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Spruce Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences as @e[type=item_display,tag=mailbox_display,distance=..1,limit=1,sort=nearest,nbt={item:{tag:{display:{Name:'{"text":"Warped Mailbox"}'}}}}] run kill @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:warped_fence",Count:1b}}]
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~ ~ ~-1 piston[extended=true,facing=south] run setblock ~ ~ ~1 air
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~ ~ ~1 piston[extended=true,facing=north] run setblock ~ ~ ~-1 air
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~-1 ~ ~ piston[extended=true,facing=east] run setblock ~1 ~ ~ air
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~1 ~ ~ piston[extended=true,facing=west] run setblock ~-1 ~ ~ air
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~ ~-1 ~ piston[extended=true,facing=up] run setblock ~ ~1 ~ air
execute if score @s mailbox.settings matches 1 unless block ~ ~ ~ #minecraft:fences if block ~ ~1 ~ piston[extended=true,facing=down] run setblock ~ ~-1 ~ air
execute if score @s mailbox.settings matches 2 unless block ~ ~ ~ minecraft:end_rod run scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.hit 2
execute if score @s mailbox.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~ ~ ~-1 piston[extended=true,facing=south] run setblock ~ ~ ~1 air
execute if score @s mailbox.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~ ~ ~1 piston[extended=true,facing=north] run setblock ~ ~ ~-1 air
execute if score @s mailbox.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~-1 ~ ~ piston[extended=true,facing=east] run setblock ~1 ~ ~ air
execute if score @s mailbox.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~1 ~ ~ piston[extended=true,facing=west] run setblock ~-1 ~ ~ air
execute if score @s mailbox.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~ ~-1 ~ piston[extended=true,facing=up] run setblock ~ ~1 ~ air
execute if score @s mailbox.settings matches 2 unless block ~ ~ ~ minecraft:end_rod if block ~ ~1 ~ piston[extended=true,facing=down] run setblock ~ ~-1 ~ air
execute on attacker if entity @s[gamemode=creative] run scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.hit 2
execute on attacker if entity @s[gamemode=creative] run tag @e[type=item_display,tag=mailbox_display,limit=1,sort=nearest] add no_drop
scoreboard players add @s mailbox.hit 1
execute if score @s mailbox.hit matches 3.. as @e[type=item_display,tag=mailbox_display,limit=1,sort=nearest] at @s run function mailboxes:break
execute if score @s mailbox.hit matches 3.. if score @s mailbox.itemcount matches 1.. run tag @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] add empty_fully
execute if score @s mailbox.hit matches 3.. if score @s mailbox.itemcount matches 1.. as @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] at @s run function mailboxes:empty
execute if score @s mailbox.hit matches 3.. unless score @s mailbox.itemcount matches 1.. run kill @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest]
execute if score @s mailbox.hit matches 3.. if block ~ ~ ~-1 piston[extended=true,facing=south] run setblock ~ ~ ~ piston_head[facing=south]
execute if score @s mailbox.hit matches 3.. if block ~ ~ ~1 piston[extended=true,facing=north] run setblock ~ ~ ~ piston_head[facing=north]
execute if score @s mailbox.hit matches 3.. if block ~-1 ~ ~ piston[extended=true,facing=east] run setblock ~ ~ ~ piston_head[facing=east]
execute if score @s mailbox.hit matches 3.. if block ~1 ~ ~ piston[extended=true,facing=west] run setblock ~ ~ ~ piston_head[facing=west]
execute if score @s mailbox.hit matches 3.. if block ~ ~-1 ~ piston[extended=true,facing=up] run setblock ~ ~ ~ piston_head[facing=up]
execute if score @s mailbox.hit matches 3.. if block ~ ~1 ~ piston[extended=true,facing=down] run setblock ~ ~ ~ piston_head[facing=down]
execute if score @s mailbox.hit matches 3.. run kill @s

playsound minecraft:entity.armor_stand.hit block @a ~ ~ ~ 1 1

data remove entity @s attack