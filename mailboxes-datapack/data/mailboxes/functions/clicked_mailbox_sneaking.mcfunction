advancement revoke @s only mailboxes:clicked_mailbox_sneaking
tag @s add mailbox.this_sneaking
execute as @e[type=interaction,tag=mailbox_interaction,distance=..6] if data entity @s interaction at @s as @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] at @s run function mailboxes:empty
execute as @e[type=interaction,tag=mailbox_interaction,distance=..6] if data entity @s interaction run data remove entity @s interaction
tag @a remove mailbox.this_sneaking