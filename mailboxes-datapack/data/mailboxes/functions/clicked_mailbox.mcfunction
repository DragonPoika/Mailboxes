advancement revoke @s only mailboxes:clicked_mailbox
tag @s add mailbox.this
execute as @e[type=interaction,tag=mailbox_interaction,distance=..6] if data entity @s interaction at @s run scoreboard players add @s mailbox.itemcount 1
execute as @e[type=interaction,tag=mailbox_interaction,distance=..6] if data entity @s interaction at @s run scoreboard players add @p[tag=mailbox.this] mailbox.mail_put 1
execute as @e[type=interaction,tag=mailbox_interaction,distance=..6] if data entity @s interaction at @s run scoreboard players add @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] mailbox.itemcount 1
execute as @e[type=interaction,tag=mailbox_interaction,distance=..6] if data entity @s interaction run data remove entity @s interaction
data modify entity @e[type=marker,tag=mailbox_storage,limit=1,sort=nearest] data.Mail append from entity @a[tag=mailbox.this,distance=..6,limit=1,sort=nearest] SelectedItem
item replace entity @s weapon.mainhand with air
playsound mailboxes:block.mailboxes.put_in block @a ~ ~ ~ 1 1
tag @a remove mailbox.this
tag @s add mailbox.notifi

execute if entity @s[scores={mailbox.mail_put=256}] run advancement grant @s only mailboxes:postman