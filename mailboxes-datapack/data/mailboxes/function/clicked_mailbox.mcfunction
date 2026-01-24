advancement revoke @s only mailboxes:clicked_mailbox
tag @s add mailboxes.this
execute as @e[type=interaction,tag=mailboxes.interaction,distance=..6] if data entity @s interaction at @s run scoreboard players add @s mailboxes.itemcount 1
execute as @e[type=interaction,tag=mailboxes.interaction,distance=..6] if data entity @s interaction at @s run scoreboard players add @p[tag=mailboxes.this] mailboxes.mail_put 1
execute as @e[type=interaction,tag=mailboxes.interaction,distance=..6] if data entity @s interaction at @s run scoreboard players add @n[type=marker,tag=mailboxes.storage] mailboxes.itemcount 1
execute as @e[type=interaction,tag=mailboxes.interaction,distance=..6] if data entity @s interaction at @s run data modify entity @n[type=marker,tag=mailboxes.storage] data.Mail append from entity @n[tag=mailboxes.this,distance=..6] SelectedItem
execute as @e[type=interaction,tag=mailboxes.interaction,distance=..6] if data entity @s interaction run data remove entity @s interaction
item replace entity @s weapon.mainhand with air
playsound mailboxes:block.mailboxes.put_in block @a ~ ~ ~ 1 1
tag @a remove mailboxes.this
tag @s add mailboxes.notifi

execute if entity @s[scores={mailboxes.mail_put=256}] run advancement grant @s only mailboxes:postman