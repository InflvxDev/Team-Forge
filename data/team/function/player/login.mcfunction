# Interno: @s acaba de entrar (o se recargó el datapack)
scoreboard players set @s tf.leave 0
# El permiso del menú dura hasta salir: hay que volver a abrir /function team:menu
tag @s remove tf.admin
scoreboard players reset @s tf.act
function team:player/register
