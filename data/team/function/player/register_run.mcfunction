# Interno: {n, u}. Si el UUID ya estaba, solo actualiza el nombre (cambio de nick).
# Cada jugador tiene un id numérico para los botones del menú (/trigger tf.act).
$execute if data storage team:players list[{u:$(u)}] run data modify storage team:players list[{u:$(u)}].n set value "$(n)"
$execute unless data storage team:players list[{u:$(u)}] run data modify storage team:players list append value {n:"$(n)",u:$(u)}
$execute unless data storage team:players list[{u:$(u)}].id store result storage team:players list[{u:$(u)}].id int 1 run scoreboard players add #pid team.forge 1
