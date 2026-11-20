# Interno: {n}. Agrega " [Team]" al botón del jugador
data modify storage team:tmp ui.actions[-1].label append value {text:" [",extra:[{text:""},{text:"]"}]}
$data modify storage team:tmp ui.actions[-1].label[-1].color set from storage team:data teams[{members:[{n:"$(n)"}]}].color
$data modify storage team:tmp ui.actions[-1].label[-1].extra[0].text set from storage team:data teams[{members:[{n:"$(n)"}]}].name
