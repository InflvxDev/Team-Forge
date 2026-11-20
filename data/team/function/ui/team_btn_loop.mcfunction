# Interno: botón para q[0] y sigue (recursivo).
# El nombre se copia con "set from" (sin macro) para que cualquier carácter funcione.
data modify storage team:tmp b.n set from storage team:tmp q[0].n
function team:ui/team_btn with storage team:tmp b
data modify storage team:tmp ui.actions[-1].label.color set from storage team:tmp q[0].color
data modify storage team:tmp ui.actions[-1].label.extra[0].text set from storage team:tmp q[0].name
data remove storage team:tmp q[0]
execute if data storage team:tmp q[0] run function team:ui/team_btn_loop
