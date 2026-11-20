# Interno: {id} del jugador, {n} del team
$execute unless data storage team:data teams[{n:$(n)}] run return run function team:ui/gone
$data modify storage team:tmp args set from storage team:data teams[{n:$(n)}]
$data modify storage team:tmp args.player set from storage team:players list[{id:$(id)}].n
function team:cmd/add_run with storage team:tmp args
function team:ui/main
