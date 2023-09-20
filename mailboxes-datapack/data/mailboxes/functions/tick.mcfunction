execute as @e[type=item,tag=drop_item] run data merge entity @s

execute as @e[type=interaction,tag=mailbox_interaction] at @s if data entity @s attack run function mailboxes:hit