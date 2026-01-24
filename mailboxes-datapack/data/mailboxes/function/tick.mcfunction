execute as @e[type=interaction,tag=mailboxes.interaction] at @s if data entity @s attack run function mailboxes:hit
execute as @e[type=interaction,tag=mailboxes.interaction] at @s unless block ~ ~ ~ #minecraft:fences run function mailboxes:hit

execute as @e[type=interaction,tag=mailboxes.interaction] at @s unless entity @a[distance=..6] run scoreboard players reset @s mailboxes.hit

execute as @a[tag=!mailboxes.notifi] at @s at @e[type=marker,tag=mailboxes.storage,distance=..4,scores={mailboxes.itemcount=1..}] run playsound mailboxes:block.mailboxes.notification block @s ~ ~ ~ 1 1
execute as @a[tag=!mailboxes.notifi] at @s as @e[type=marker,tag=mailboxes.storage,distance=..4,scores={mailboxes.itemcount=1..}] at @s run tag @e[type=item_display,tag=mailboxes.display,limit=1,sort=nearest] add that_mailbox
execute as @a[tag=!mailboxes.notifi] at @s if entity @e[type=marker,tag=mailboxes.storage,distance=..4,scores={mailboxes.itemcount=1..}] run title @s actionbar ["",{"text":"New Mail in nearby ","color":"yellow"},{"selector":"@e[tag=that_mailbox,limit=1,sort=nearest]","color":"gold"}]
execute as @a[tag=!mailboxes.notifi] at @s if entity @e[type=marker,tag=mailboxes.storage,distance=..4,scores={mailboxes.itemcount=1..}] run advancement grant @s only mailboxes:get_mail
execute as @a[tag=!mailboxes.notifi] at @s if entity @e[type=marker,tag=mailboxes.storage,distance=..4,scores={mailboxes.itemcount=1..}] run tag @e[tag=that_mailbox] remove that_mailbox
execute as @a[tag=!mailboxes.notifi] at @s if entity @e[type=marker,tag=mailboxes.storage,distance=..4,scores={mailboxes.itemcount=1..}] run tag @s add mailboxes.notifi
execute as @a[tag=mailboxes.notifi] at @s unless entity @e[type=marker,tag=mailboxes.storage,distance=..4,scores={mailboxes.itemcount=1..}] run tag @s remove mailboxes.notifi