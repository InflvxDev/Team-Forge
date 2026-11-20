# Jugador nuevo o que volvió a entrar
execute as @a unless score @s tf.leave matches 0 run function team:player/login
# Botones del menú (van por /trigger, así no sale la confirmación de comandos)
execute as @a[scores={tf.act=1..}] run function team:ui/trigger
