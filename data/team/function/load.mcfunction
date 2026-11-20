# Contador para IDs internos de team (tf1, tf2, ...) y de jugadores, y cálculos
scoreboard objectives add team.forge dummy
scoreboard players set #10 team.forge 10
# Botones del menú (solo funcionan para quien abrió /function team:menu)
scoreboard objectives add tf.act trigger
# Team elegido en "Agregar jugador"
scoreboard objectives add tf.sel dummy
# Detecta cuando un jugador vuelve a entrar
scoreboard objectives add tf.leave minecraft.custom:minecraft.leave_game

execute unless data storage team:data teams run data modify storage team:data teams set value []
execute unless data storage team:players list run data modify storage team:players list set value []
function team:migrate

execute as @a run function team:player/login
