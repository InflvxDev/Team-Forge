# Uso: /function team:cmd/remove {player:"Steve"}
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team leave $(player)
$data remove storage team:data teams[].members[{n:"$(player)"}]
$execute if data storage team:tmp {ok:0b} run data modify storage team:tmp status set value {text:"$(player) no está en ningún team.",color:"red"}
execute if data storage team:tmp {ok:0b} run return run function team:cmd/say
$data modify storage team:tmp status set value [{text:"$(player)",color:"white"},{text:" fue quitado de su team.",color:"green"}]
function team:cmd/say
