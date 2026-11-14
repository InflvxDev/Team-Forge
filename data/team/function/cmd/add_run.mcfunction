# Interno: lo llama team:cmd/add con {player, id, name, color}
data modify storage team:tmp ran set value 1b
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team join $(id) $(player)
$execute if data storage team:tmp {ok:0b} run return run tellraw @s {text:"✖ No existe el team \"$(name)\" (o $(player) ya estaba en él).",color:"red"}
$tellraw @s [{text:"✔ ",color:"green"},{text:"$(player)",color:"white"},{text:" ahora está en el team ",color:"green"},{text:"[$(name)]",color:"$(color)"}]
