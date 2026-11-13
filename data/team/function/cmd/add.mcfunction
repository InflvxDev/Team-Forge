# Uso: /function team:cmd/add {player:"Steve",team:"Rojos"}
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team join $(team) $(player)
$execute if data storage team:tmp {ok:0b} run return run tellraw @s {text:"✖ No existe el team \"$(team)\" (o el jugador ya estaba en él).",color:"red"}
$tellraw @s [{text:"✔ ",color:"green"},{text:"$(player)",color:"white"},{text:" ahora está en el team ",color:"green"},{text:"[$(team)]",color:"gold"}]
