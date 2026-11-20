# Interno: {id} del jugador. Lo mete en el team elegido en el paso 1 (tf.sel)
$execute unless data storage team:players list[{id:$(id)}] run return run function team:ui/main
execute store result storage team:tmp sel.n int 1 run scoreboard players get @s tf.sel
function team:ui/do_add_run with storage team:tmp sel
