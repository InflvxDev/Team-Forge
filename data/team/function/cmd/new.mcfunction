# Uso: /function team:cmd/new {name:"Españita",color:"red"}
# El nombre visible puede tener ñ, tildes y espacios. Internamente el team se
# llama tf1, tf2, ... y la relación nombre -> ID se guarda en storage team:data.
$data modify storage team:tmp args set value {name:"$(name)",color:"$(color)"}
execute if data storage team:tmp args{name:""} run data modify storage team:tmp status set value {text:"Escribe un nombre para el team.",color:"red"}
execute if data storage team:tmp args{name:""} run return run function team:cmd/say
$execute if data storage team:data teams[{name:"$(name)"}] run data modify storage team:tmp status set value {text:"Ya existe un team llamado \"$(name)\".",color:"red"}
$execute if data storage team:data teams[{name:"$(name)"}] run return run function team:cmd/say
execute store result storage team:tmp args.id int 1 run scoreboard players add #next team.forge 1
function team:cmd/new_run with storage team:tmp args
