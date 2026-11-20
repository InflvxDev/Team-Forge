# Interno: agrega un botón por team a team:tmp ui.actions.
# team:tmp b.o = acción que va después del id del team (ver ui/trigger)
data modify storage team:tmp q set from storage team:data teams
execute if data storage team:tmp q[0] run function team:ui/team_btn_loop
