execute on attacker if entity @s[gamemode=creative] run scoreboard players set @e[type=interaction,tag=mailbox_interaction,limit=1,sort=nearest] mailbox.hit 2
execute on attacker if entity @s[gamemode=creative] run tag @e[type=item_display,tag=mailbox_display,limit=1,sort=nearest] add no_drop
scoreboard players add @s mailbox.hit 1
execute if score @s mailbox.hit matches 3.. as @e[type=item_display,tag=mailbox_display,limit=1,sort=nearest] at @s run function mailboxes:break
execute if score @s mailbox.hit matches 3.. if score @s mailbox.itemcount matches 1.. run tag @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] add empty_fully
execute if score @s mailbox.hit matches 3.. if score @s mailbox.itemcount matches 1.. as @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] at @s run function mailboxes:empty
execute if score @s mailbox.hit matches 3.. unless score @s mailbox.itemcount matches 1.. run kill @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest]
execute if score @s mailbox.hit matches 3.. run kill @s

playsound minecraft:entity.armor_stand.hit block @a ~ ~ ~ 1 1

data remove entity @s attack