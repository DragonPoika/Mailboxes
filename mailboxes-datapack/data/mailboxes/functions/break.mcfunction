execute as @s[nbt={item:{tag:{mailbox:"oak_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:oak_box
execute as @s[nbt={item:{tag:{mailbox:"oak_box"}}}] run particle minecraft:block oak_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"spruce_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:spruce_box
execute as @s[nbt={item:{tag:{mailbox:"spruce_box"}}}] run particle minecraft:block spruce_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"cherry_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:cherry_box
execute as @s[nbt={item:{tag:{mailbox:"cherry_box"}}}] run particle minecraft:block cherry_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"mangrove_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:mangrove_box
execute as @s[nbt={item:{tag:{mailbox:"mangrove_box"}}}] run particle minecraft:block mangrove_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"jungle_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:jungle_box
execute as @s[nbt={item:{tag:{mailbox:"jungle_box"}}}] run particle minecraft:block jungle_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"acacia_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:acacia_box
execute as @s[nbt={item:{tag:{mailbox:"acacia_box"}}}] run particle minecraft:block acacia_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"crimson_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:crimson_box
execute as @s[nbt={item:{tag:{mailbox:"crimson_box"}}}] run particle minecraft:block crimson_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"birch_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:birch_box
execute as @s[nbt={item:{tag:{mailbox:"birch_box"}}}] run particle minecraft:block birch_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"dark_oak_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:dark_oak_box
execute as @s[nbt={item:{tag:{mailbox:"dark_oak_box"}}}] run particle minecraft:block dark_oak_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"warped_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:warped_box
execute as @s[nbt={item:{tag:{mailbox:"warped_box"}}}] run particle minecraft:block warped_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[nbt={item:{tag:{mailbox:"bamboo_box"}}},tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:bamboo_box
execute as @s[nbt={item:{tag:{mailbox:"bamboo_box"}}}] run particle minecraft:block bamboo_planks ~ ~0.25 ~ 0.25 0.25 0.25 0 20
data modify entity @e[type=item,tag=drop_item,limit=1,sort=nearest] Item set from entity @s item
setblock ~ ~ ~ air
kill @s