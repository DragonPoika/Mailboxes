execute as @e[type=item,tag=drop_item] run data merge entity @s

execute as @e[type=interaction,tag=mailbox_interaction] at @s if data entity @s attack run function mailboxes:hit
execute as @e[type=interaction,tag=mailbox_interaction,scores={mailbox.settings=1}] at @s unless block ~ ~ ~ #minecraft:fences run function mailboxes:hit
execute as @e[type=interaction,tag=mailbox_interaction,scores={mailbox.settings=2}] at @s unless block ~ ~ ~ minecraft:end_rod run function mailboxes:hit
execute as @e[type=interaction,tag=mailbox_interaction,scores={mailbox.settings=0}] at @s if block ~ ~ ~ minecraft:piston_head run function mailboxes:hit

execute as @a[tag=mailbox.settings] at @s unless entity @e[type=interaction,tag=mailbox_interaction,distance=..2] run function mailboxes:close_settings
execute as @a[tag=mailbox.settings,scores={mailbox.settings=2000..}] at @s run function mailboxes:update_settings

execute as @a[tag=!mailbox.notifi] at @s at @e[type=marker,tag=mailbox_storage,distance=..4,scores={mailbox.itemcount=1..}] run playsound mailboxes:block.mailboxes.notification block @s ~ ~ ~ 1 1
execute as @a[tag=!mailbox.notifi] at @s as @e[type=marker,tag=mailbox_storage,distance=..4,scores={mailbox.itemcount=1..}] at @s run tag @e[type=item_display,tag=mailbox_display,limit=1,sort=nearest] add that_mailbox
execute as @a[tag=!mailbox.notifi] at @s if entity @e[type=marker,tag=mailbox_storage,distance=..4,scores={mailbox.itemcount=1..}] run title @s actionbar ["",{"text":"New Mail in nearby ","color":"yellow"},{"selector":"@e[tag=that_mailbox,limit=1,sort=nearest]","color":"gold"}]
execute as @a[tag=!mailbox.notifi] at @s if entity @e[type=marker,tag=mailbox_storage,distance=..4,scores={mailbox.itemcount=1..}] run tag @e[tag=that_mailbox] remove that_mailbox
execute as @a[tag=!mailbox.notifi] at @s if entity @e[type=marker,tag=mailbox_storage,distance=..4,scores={mailbox.itemcount=1..}] run tag @s add mailbox.notifi
execute as @a[tag=mailbox.notifi] at @s unless entity @e[type=marker,tag=mailbox_storage,distance=..4,scores={mailbox.itemcount=1..}] run tag @s remove mailbox.notifi