execute as @s[nbt={item:{tag:{mailbox:"oak_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:oak_box
execute as @s[nbt={item:{tag:{mailbox:"spruce_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:spruce_box
execute as @s[nbt={item:{tag:{mailbox:"cherry_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:cherry_box
execute as @s[nbt={item:{tag:{mailbox:"mangrove_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:mangrove_box
execute as @s[nbt={item:{tag:{mailbox:"jungle_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:jungle_box
execute as @s[nbt={item:{tag:{mailbox:"acacia_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:acacia_box
execute as @s[nbt={item:{tag:{mailbox:"crimson_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:crimson_box
execute as @s[nbt={item:{tag:{mailbox:"birch_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:birch_box
execute as @s[nbt={item:{tag:{mailbox:"dark_oak_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:dark_oak_box
execute as @s[nbt={item:{tag:{mailbox:"warped_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:warped_box
execute as @s[nbt={item:{tag:{mailbox:"bamboo_box"}}}] run loot spawn ~ ~ ~ loot mailboxes:bamboo_box
data modify entity @e[type=item,tag=drop_item,limit=1,sort=nearest] Item set from entity @s item
kill @s