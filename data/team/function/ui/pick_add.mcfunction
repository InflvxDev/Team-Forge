# Interno: paso 1 de "Agregar jugador": elegir el team
data modify storage team:tmp ui set value {type:"minecraft:multi_action",title:{text:"Agregar jugador",color:"aqua",bold:true},body:[{type:"minecraft:plain_message",contents:{text:"Elige el team al que quieres agregar al jugador.",color:"gray"}}],columns:2,pause:false,after_action:"wait_for_response",actions:[],exit_action:{label:"Volver",action:{type:"minecraft:run_command",command:"trigger tf.act set 1"}}}
data modify storage team:tmp b set value {o:"3"}
function team:ui/team_btns
data modify storage team:tmp empty set value "Todavía no hay teams. Crea uno con Nuevo team."
execute unless data storage team:tmp ui.actions[0] run function team:ui/empty
function team:ui/show with storage team:tmp
