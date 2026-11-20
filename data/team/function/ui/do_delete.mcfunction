# Interno: {id} del team
$execute unless data storage team:data teams[{n:$(id)}] run return run function team:ui/gone
$data modify storage team:tmp args set from storage team:data teams[{n:$(id)}]
function team:cmd/delete_run with storage team:tmp args
function team:ui/main
