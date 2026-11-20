# Interno: agrega un botón (cabeza + nombre + team actual) por jugador registrado.
# team:tmp b.o = acción que va después del id del jugador; #only 1 = solo los que están en un team
execute as @a run function team:player/register
data modify storage team:tmp q set from storage team:players list
execute if data storage team:tmp q[0] run function team:ui/player_btn_loop
