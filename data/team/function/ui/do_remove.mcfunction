# Interno: {id} del jugador
$execute unless data storage team:players list[{id:$(id)}] run return run function team:ui/main
data modify storage team:tmp args set value {}
$data modify storage team:tmp args.player set from storage team:players list[{id:$(id)}].n
function team:cmd/remove with storage team:tmp args
function team:ui/main
