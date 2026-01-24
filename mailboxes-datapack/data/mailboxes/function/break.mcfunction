execute as @s[predicate=mailboxes:is_box/oak,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:oak_box
execute as @s[predicate=mailboxes:is_box/oak] run particle minecraft:block{block_state:"minecraft:oak_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/spruce,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:spruce_box
execute as @s[predicate=mailboxes:is_box/spruce] run particle minecraft:block{block_state:"minecraft:spruce_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/cherry,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:cherry_box
execute as @s[predicate=mailboxes:is_box/cherry] run particle minecraft:block{block_state:"minecraft:cherry_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/mangrove,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:mangrove_box
execute as @s[predicate=mailboxes:is_box/mangrove] run particle minecraft:block{block_state:"minecraft:mangrove_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/jungle,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:jungle_box
execute as @s[predicate=mailboxes:is_box/jungle] run particle minecraft:block{block_state:"minecraft:jungle_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/acacia,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:acacia_mailbox
execute as @s[predicate=mailboxes:is_box/acacia] run particle minecraft:block{block_state:"minecraft:acacia_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/crimson,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:crimson_box
execute as @s[predicate=mailboxes:is_box/crimson] run particle minecraft:block{block_state:"minecraft:crimson_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/birch,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:birch_box
execute as @s[predicate=mailboxes:is_box/birch] run particle minecraft:block{block_state:"minecraft:birch_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/dark_oak,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:dark_oak_box
execute as @s[predicate=mailboxes:is_box/dark_oak] run particle minecraft:block{block_state:"minecraft:dark_oak_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/warped,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:warped_box
execute as @s[predicate=mailboxes:is_box/warped] run particle minecraft:block{block_state:"minecraft:warped_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
execute as @s[predicate=mailboxes:is_box/bamboo,tag=!no_drop] run loot spawn ~ ~ ~ loot mailboxes:bamboo_box
execute as @s[predicate=mailboxes:is_box/bamboo] run particle minecraft:block{block_state:"minecraft:bamboo_planks"} ~ ~0.25 ~ 0.25 0.25 0.25 0 20
data modify entity @n[type=item,tag=drop_item] Item set from entity @s item
execute as @n[type=interaction,tag=mailboxes.interaction] if entity @s[scores={mailboxes.settings=1..2}] run setblock ~ ~ ~ air
kill @s