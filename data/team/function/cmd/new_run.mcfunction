# Interno: lo llama team:cmd/new. Si el nombre tiene caracteres inválidos,
# esta macro no llega a instanciarse y el flag "ran" se queda en 0b.
data modify storage team:tmp ran set value 1b
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team add $(name)
execute if data storage team:tmp {ok:0b} run return run tellraw @s {text:"✖ No se pudo crear el team: ya existe un team con ese nombre.",color:"red"}
$team modify $(name) color reset
$team modify $(name) prefix [{text:"[$(name)]",color:"$(color)",bold:true},{text:" ",bold:false}]
$tellraw @s [{text:"✔ Team creado: ",color:"green"},{text:"[$(name)]",color:"$(color)",bold:true}]
