execute as @s[predicate=mailboxes:is_mailbox/oak,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:oak_mailbox
execute as @s[predicate=mailboxes:is_mailbox/oak] run particle minecraft:block{block_state:"minecraft:oak_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/spruce,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:spruce_mailbox
execute as @s[predicate=mailboxes:is_mailbox/spruce] run particle minecraft:block{block_state:"minecraft:spruce_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/cherry,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:cherry_mailbox
execute as @s[predicate=mailboxes:is_mailbox/cherry] run particle minecraft:block{block_state:"minecraft:cherry_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/mangrove,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:mangrove_mailbox
execute as @s[predicate=mailboxes:is_mailbox/mangrove] run particle minecraft:block{block_state:"minecraft:mangrove_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/jungle,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:jungle_mailbox
execute as @s[predicate=mailboxes:is_mailbox/jungle] run particle minecraft:block{block_state:"minecraft:jungle_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/acacia,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:acacia_mailbox
execute as @s[predicate=mailboxes:is_mailbox/acacia] run particle minecraft:block{block_state:"minecraft:acacia_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/crimson,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:crimson_mailbox
execute as @s[predicate=mailboxes:is_mailbox/crimson] run particle minecraft:block{block_state:"minecraft:crimson_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/birch,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:birch_mailbox
execute as @s[predicate=mailboxes:is_mailbox/birch] run particle minecraft:block{block_state:"minecraft:birch_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/dark_oak,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:dark_oak_mailbox
execute as @s[predicate=mailboxes:is_mailbox/dark_oak] run particle minecraft:block{block_state:"minecraft:dark_oak_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/warped,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:warped_mailbox
execute as @s[predicate=mailboxes:is_mailbox/warped] run particle minecraft:block{block_state:"minecraft:warped_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_mailbox/bamboo,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:bamboo_mailbox
execute as @s[predicate=mailboxes:is_mailbox/bamboo] run particle minecraft:block{block_state:"minecraft:bamboo_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
data modify entity @n[type=item,tag=drop_item] Item set from entity @s item
execute as @n[type=interaction,tag=mailboxes.interaction] if entity @s[scores={mailboxes.settings=1..2}] run setblock ~ ~ ~ air
kill @s