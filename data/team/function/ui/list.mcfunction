# Interno: cada team con las cabezas de sus miembros (el nombre sale al pasar el ratón)
execute as @a run function team:player/register
data modify storage team:tmp ui set value {type:"minecraft:notice",title:{text:"Teams",color:"gold",bold:true},body:[],pause:false,after_action:"wait_for_response",action:{label:"Volver",action:{type:"minecraft:run_command",command:"trigger tf.act set 1"}}}
data modify storage team:tmp q set from storage team:data teams
execute if data storage team:tmp q[0] run data modify storage team:tmp ui.body append value {type:"minecraft:plain_message",width:400,contents:{text:"Pasa el ratón por una cabeza para ver el nombre del jugador.",color:"gray",italic:true}}
execute if data storage team:tmp q[0] run function team:ui/list_team
execute unless data storage team:tmp ui.body[0] run data modify storage team:tmp ui.body append value {type:"minecraft:plain_message",contents:{text:"Todavía no hay teams. Crea uno con Nuevo team.",color:"gray"}}
function team:ui/show with storage team:tmp
