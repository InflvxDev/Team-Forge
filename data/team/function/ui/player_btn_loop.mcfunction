# Interno: botón para q[0] y sigue (recursivo)
data modify storage team:tmp b.n set from storage team:tmp q[0].n
data modify storage team:tmp b.id set from storage team:tmp q[0].id
function team:ui/player_btn with storage team:tmp b
data remove storage team:tmp q[0]
execute if data storage team:tmp q[0] run function team:ui/player_btn_loop
