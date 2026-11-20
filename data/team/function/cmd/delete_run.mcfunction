# Interno: lo llama team:cmd/delete (o el menú) con {id, name, color}
data modify storage team:tmp ran set value 1b
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team remove $(id)
# Se borra del registro aunque el team ya no exista (por si lo quitaron con /team remove)
$data remove storage team:data teams[{id:"$(id)"}]
execute if data storage team:tmp {ok:0b} run return run function team:cmd/not_found with storage team:tmp args
$data modify storage team:tmp status set value [{text:"Team ",color:"green"},{text:"[$(name)]",color:"$(color)"},{text:" borrado.",color:"green"}]
function team:cmd/say
