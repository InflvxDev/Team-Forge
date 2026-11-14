# Uso: /function team:cmd/add {player:"Steve",team:"Españita"}
# Busca el ID interno por nombre visible. Si no está en el registro (teams
# creados con versiones viejas), usa el nombre tal cual como ID.
$data modify storage team:tmp args set value {player:"$(player)",name:"$(team)",id:"$(team)",color:"gold"}
$data modify storage team:tmp args merge from storage team:data teams[{name:"$(team)"}]
data modify storage team:tmp ran set value 0b
function team:cmd/add_run with storage team:tmp args
execute if data storage team:tmp {ran:0b} run function team:cmd/not_found with storage team:tmp args
