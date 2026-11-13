# Uso: /function team:cmd/new {name:"Rojos",color:"red"}
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team add $(name)
execute if data storage team:tmp {ok:0b} run return run tellraw @s {text:"✖ No se pudo crear el team: ya existe o el nombre no es válido (sin espacios).",color:"red"}
$team modify $(name) color $(color)
$team modify $(name) prefix {text:"[$(name)] ",color:"$(color)"}
$tellraw @s [{text:"✔ Team creado: ",color:"green"},{text:"[$(name)]",color:"$(color)"}]
