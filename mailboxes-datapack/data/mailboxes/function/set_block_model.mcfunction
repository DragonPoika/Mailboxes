$data merge entity @s {item:{components:{"minecraft:item_model":"mailboxes:$(type)_mailbox"}}}
$data merge entity @s {item:{components:{"minecraft:custom_data":{mailboxes:{type:"$(type)"}}}}}