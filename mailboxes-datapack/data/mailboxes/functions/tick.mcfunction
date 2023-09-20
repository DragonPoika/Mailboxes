execute as @e[type=item,tag=drop_item] run data merge entity @s

execute as @e[type=interaction,tag=mailbox_interaction] at @s if data entity @s attack run function mailboxes:hit

execute as @a[tag=mailbox.settings] at @s unless entity @e[type=interaction,tag=mailbox_interaction,distance=..2] run function mailboxes:close_settings
execute as @a[tag=mailbox.settings,scores={mailbox.settings=2000..}] at @s run function mailboxes:update_settings