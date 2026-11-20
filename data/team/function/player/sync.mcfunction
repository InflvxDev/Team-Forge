# Interno: {n}. Anota a @s como miembro del team en el que está ahora
# (por si lo movieron con /team join a mano).
$data remove storage team:data teams[].members[{n:"$(n)"}]
data modify storage team:tmp sq set from storage team:data teams
execute if data storage team:tmp sq[0] run function team:player/sync_loop
