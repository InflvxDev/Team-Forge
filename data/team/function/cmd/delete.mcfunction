# Uso: /function team:cmd/delete {team:"Españita"}
$data modify storage team:tmp args set value {name:"$(team)",id:"$(team)",color:"gold"}
$data modify storage team:tmp args merge from storage team:data teams[{name:"$(team)"}]
data modify storage team:tmp ran set value 0b
function team:cmd/delete_run with storage team:tmp args
execute if data storage team:tmp {ran:0b} run function team:cmd/not_found with storage team:tmp args
