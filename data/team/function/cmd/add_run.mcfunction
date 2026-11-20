# Interno: lo llama team:cmd/add (o el menú) con {player, id, name, color}
data modify storage team:tmp ran set value 1b
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team join $(id) $(player)
$execute if data storage team:tmp {ok:0b} run data modify storage team:tmp status set value {text:"No existe el team \"$(name)\" (o $(player) ya estaba en él).",color:"red"}
execute if data storage team:tmp {ok:0b} run return run function team:cmd/say
# Miembros guardados (para las cabezas de "Ver teams")
$data remove storage team:data teams[].members[{n:"$(player)"}]
$data modify storage team:data teams[{id:"$(id)"}].members append value {n:"$(player)"}
$data modify storage team:tmp status set value [{text:"$(player)",color:"white"},{text:" ahora está en el team ",color:"green"},{text:"[$(name)]",color:"$(color)"}]
function team:cmd/say
