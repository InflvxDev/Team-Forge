# Interno: revisa sq[0] y sigue (recursivo)
data modify storage team:tmp reg.id set from storage team:tmp sq[0].id
function team:player/sync_one with storage team:tmp reg
data remove storage team:tmp sq[0]
execute if data storage team:tmp sq[0] run function team:player/sync_loop
