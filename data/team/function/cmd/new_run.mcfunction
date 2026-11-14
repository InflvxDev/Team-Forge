# Interno: lo llama team:cmd/new con {id, name, color}
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team add tf$(id) {text:"$(name)"}
execute if data storage team:tmp {ok:0b} run return run tellraw @s {text:"✖ No se pudo crear el team (el ID interno ya está en uso). Inténtalo otra vez.",color:"red"}
$team modify tf$(id) color reset
$team modify tf$(id) prefix [{text:"[$(name)]",color:"$(color)"},{text:" "}]
$data modify storage team:data teams append value {id:"tf$(id)",name:"$(name)",color:"$(color)"}
$tellraw @s [{text:"✔ Team creado: ",color:"green"},{text:"[$(name)]",color:"$(color)"}]
