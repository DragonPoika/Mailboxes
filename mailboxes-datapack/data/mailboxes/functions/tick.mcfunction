execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"oak_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:oak_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"spruce_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:spruce_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"cherry_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:cherry_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"mangrove_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:mangrove_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"jungle_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:jungle_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"acacia_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:acacia_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"crimson_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:crimson_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"birch_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:birch_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"dark_oak_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:dark_oak_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"warped_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:warped_box
execute as @e[tag=mailbox_display] at @s[nbt={item:{tag:{mailbox:"bamboo_box"}}}] unless block ~ ~ ~ #minecraft:fences run loot spawn ~ ~ ~ loot mailboxes:bamboo_box
execute as @e[tag=mailbox_display] at @s unless block ~ ~ ~ #minecraft:fences run data modify entity @e[type=item,tag=drop_item,limit=1,sort=nearest] Item set from entity @s item
execute as @e[tag=mailbox_display] at @s unless block ~ ~ ~ #minecraft:fences run kill @s


execute as @e[type=item,tag=drop_item] run data merge entity @s