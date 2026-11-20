# Interno: guarda el nombre de @s en storage team:players list (así el menú
# muestra también a los desconectados) y actualiza en qué team está.
# El nombre se saca de su cabeza, generada en un item_display temporal.
execute at @s run summon minecraft:item_display ~ ~ ~ {Tags:["tf.name"]}
execute at @s run loot replace entity @n[type=minecraft:item_display,tag=tf.name,distance=..1] contents loot team:player_head
data modify storage team:tmp reg set value {}
execute at @s run data modify storage team:tmp reg.n set from entity @n[type=minecraft:item_display,tag=tf.name,distance=..1] item.components."minecraft:profile".name
data modify storage team:tmp reg.u set from entity @s UUID
kill @e[type=minecraft:item_display,tag=tf.name]
execute unless data storage team:tmp reg.n run return fail
function team:player/register_run with storage team:tmp reg
function team:player/sync with storage team:tmp reg
