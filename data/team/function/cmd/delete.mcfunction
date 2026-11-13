# Uso: /function team:cmd/delete {team:"Rojos"}
data modify storage team:tmp ok set value 0b
$execute store success storage team:tmp ok byte 1 run team remove $(team)
$execute if data storage team:tmp {ok:0b} run return run tellraw @s {text:"✖ No existe el team \"$(team)\".",color:"red"}
$tellraw @s [{text:"✔ Team ",color:"green"},{text:"[$(team)]",color:"gold"},{text:" borrado.",color:"green"}]
