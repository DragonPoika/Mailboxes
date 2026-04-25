execute unless block ~ ~ ~ #minecraft:fences run scoreboard players set @n[type=interaction,tag=mailboxes.interaction] mailboxes.hit 2
execute unless block ~ ~ ~ #minecraft:fences as @n[type=item_display,tag=mailboxes.display,distance=..1] run function mailboxes:kill_fence with entity @s item.components."minecraft:custom_data".mailboxes
execute unless block ~ ~ ~ #minecraft:fences if block ~ ~ ~-1 piston[extended=true,facing=south] run setblock ~ ~ ~1 air
execute unless block ~ ~ ~ #minecraft:fences if block ~ ~ ~1 piston[extended=true,facing=north] run setblock ~ ~ ~-1 air
execute unless block ~ ~ ~ #minecraft:fences if block ~-1 ~ ~ piston[extended=true,facing=east] run setblock ~1 ~ ~ air
execute unless block ~ ~ ~ #minecraft:fences if block ~1 ~ ~ piston[extended=true,facing=west] run setblock ~-1 ~ ~ air
execute unless block ~ ~ ~ #minecraft:fences if block ~ ~-1 ~ piston[extended=true,facing=up] run setblock ~ ~1 ~ air
execute unless block ~ ~ ~ #minecraft:fences if block ~ ~1 ~ piston[extended=true,facing=down] run setblock ~ ~-1 ~ air
execute unless block ~ ~ ~ #minecraft:fences if block ~ ~ ~-1 sticky_piston[extended=true,facing=south] run setblock ~ ~ ~1 air
execute unless block ~ ~ ~ #minecraft:fences if block ~ ~ ~1 sticky_piston[extended=true,facing=north] run setblock ~ ~ ~-1 air
execute unless block ~ ~ ~ #minecraft:fences if block ~-1 ~ ~ sticky_piston[extended=true,facing=east] run setblock ~1 ~ ~ air
execute unless block ~ ~ ~ #minecraft:fences if block ~1 ~ ~ sticky_piston[extended=true,facing=west] run setblock ~-1 ~ ~ air
execute unless block ~ ~ ~ #minecraft:fences if block ~ ~-1 ~ sticky_piston[extended=true,facing=up] run setblock ~ ~1 ~ air
execute unless block ~ ~ ~ #minecraft:fences if block ~ ~1 ~ sticky_piston[extended=true,facing=down] run setblock ~ ~-1 ~ air
execute on attacker if entity @s[gamemode=creative] run scoreboard players set @n[type=interaction,tag=mailboxes.interaction] mailboxes.hit 2
execute on attacker if entity @s[gamemode=creative] run tag @n[type=item_display,tag=mailboxes.display] add no_drop
scoreboard players add @s mailboxes.hit 1
say @s hit
execute if score @s mailboxes.hit matches 3.. as @n[type=item_display,tag=mailboxes.display] at @s run function mailboxes:break
execute if score @s mailboxes.hit matches 3.. if score @s mailboxes.itemcount matches 1.. run tag @n[type=marker,tag=mailboxes.storage] add empty_fully
execute if score @s mailboxes.hit matches 3.. if score @s mailboxes.itemcount matches 1.. as @n[type=marker,tag=mailboxes.storage] at @s run function mailboxes:empty
execute if score @s mailboxes.hit matches 3.. unless score @s mailboxes.itemcount matches 1.. run kill @n[type=marker,tag=mailboxes.storage]
execute if score @s mailboxes.hit matches 3.. if block ~ ~ ~-1 piston[extended=true,facing=south] run setblock ~ ~ ~ piston_head[facing=south]
execute if score @s mailboxes.hit matches 3.. if block ~ ~ ~1 piston[extended=true,facing=north] run setblock ~ ~ ~ piston_head[facing=north]
execute if score @s mailboxes.hit matches 3.. if block ~-1 ~ ~ piston[extended=true,facing=east] run setblock ~ ~ ~ piston_head[facing=east]
execute if score @s mailboxes.hit matches 3.. if block ~1 ~ ~ piston[extended=true,facing=west] run setblock ~ ~ ~ piston_head[facing=west]
execute if score @s mailboxes.hit matches 3.. if block ~ ~-1 ~ piston[extended=true,facing=up] run setblock ~ ~ ~ piston_head[facing=up]
execute if score @s mailboxes.hit matches 3.. if block ~ ~1 ~ piston[extended=true,facing=down] run setblock ~ ~ ~ piston_head[facing=down]
execute if score @s mailboxes.hit matches 3.. run kill @s

playsound minecraft:entity.armor_stand.hit block @a ~ ~ ~ 1 1
particle happy_villager ~ ~1.5 ~
data remove entity @s attack