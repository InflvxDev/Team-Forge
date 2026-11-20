# Interno: @s tocó un botón del menú (/trigger tf.act set <valor>)
#   Pantallas: 1 = principal, 2 = ver teams, 3 = borrar, 4 = agregar, 5 = quitar, 9 = cerrar
#   Acciones: id*10 + acción
#     team:    1 = confirmar borrado, 2 = borrar, 3 = elegido para agregar
#     jugador: 4 = agregar al team elegido, 5 = quitar de su team
scoreboard players operation #t team.forge = @s tf.act
scoreboard players set @s tf.act 0
# Solo para quien abrió el menú con /function team:menu (requiere OP)
execute unless entity @s[tag=tf.admin] run return run scoreboard players reset @s tf.act
scoreboard players enable @s tf.act
data remove storage team:tmp status

scoreboard players operation #op team.forge = #t team.forge
scoreboard players operation #op team.forge %= #10 team.forge
scoreboard players operation #id team.forge = #t team.forge
scoreboard players operation #id team.forge /= #10 team.forge

execute if score #id team.forge matches 0 if score #op team.forge matches 2 run return run function team:ui/list
execute if score #id team.forge matches 0 if score #op team.forge matches 3 run return run function team:ui/pick_delete
execute if score #id team.forge matches 0 if score #op team.forge matches 4 run return run function team:ui/pick_add
execute if score #id team.forge matches 0 if score #op team.forge matches 5 run return run function team:ui/pick_remove
execute if score #id team.forge matches 0 if score #op team.forge matches 9 run return run dialog clear @s
execute if score #id team.forge matches 0 run return run function team:ui/main

data modify storage team:tmp sel set value {}
execute store result storage team:tmp sel.id int 1 run scoreboard players get #id team.forge
execute if score #op team.forge matches 1 run return run function team:ui/confirm_delete with storage team:tmp sel
execute if score #op team.forge matches 2 run return run function team:ui/do_delete with storage team:tmp sel
execute if score #op team.forge matches 3 run return run function team:ui/pick_player with storage team:tmp sel
execute if score #op team.forge matches 4 run return run function team:ui/do_add with storage team:tmp sel
execute if score #op team.forge matches 5 run return run function team:ui/do_remove with storage team:tmp sel
function team:ui/main
