# Muestra los teams del registro (storage team:data) en un diálogo.
# El diálogo se arma en storage team:tmp ui y se muestra inline con una macro.
data modify storage team:tmp ui set value {type:"minecraft:notice",title:{text:"Teams",color:"gold",bold:true},pause:false,body:[],action:{label:"Volver",action:{type:"minecraft:show_dialog",dialog:"team:menu"}}}
data modify storage team:tmp queue set from storage team:data teams
execute if data storage team:tmp queue[0] run function team:list_item
execute unless data storage team:tmp ui.body[0] run data modify storage team:tmp ui.body append value {type:"minecraft:plain_message",contents:{text:"Todavía no hay teams. Crea uno con ✚ Nuevo team.",color:"gray"}}
function team:list_show with storage team:tmp
