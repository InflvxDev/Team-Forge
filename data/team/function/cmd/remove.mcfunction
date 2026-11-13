# Uso: /function team:cmd/remove {player:"Steve"}
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team leave $(player)
$execute if data storage team:tmp {ok:0b} run return run tellraw @s {text:"✖ $(player) no está en ningún team.",color:"red"}
$tellraw @s [{text:"✔ ",color:"green"},{text:"$(player)",color:"white"},{text:" fue quitado de su team.",color:"green"}]
