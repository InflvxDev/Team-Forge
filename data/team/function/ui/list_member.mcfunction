# Interno: cabeza de lq[0] y sigue (recursivo)
data modify storage team:tmp m set value {}
data modify storage team:tmp m.n set from storage team:tmp lq[0].n
function team:ui/list_head with storage team:tmp m
data remove storage team:tmp lq[0]
execute if data storage team:tmp lq[0] run function team:ui/list_member
