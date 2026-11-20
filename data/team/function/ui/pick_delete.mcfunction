# Interno: lista de teams para borrar
data modify storage team:tmp ui set value {type:"minecraft:multi_action",title:{text:"Borrar team",color:"red",bold:true},body:[{type:"minecraft:plain_message",contents:{text:"Elige el team que quieres borrar.",color:"gray"}}],columns:2,pause:false,after_action:"wait_for_response",actions:[],exit_action:{label:"Volver",action:{type:"minecraft:run_command",command:"trigger tf.act set 1"}}}
data modify storage team:tmp b set value {o:"1"}
function team:ui/team_btns
data modify storage team:tmp empty set value "Todavía no hay teams."
execute unless data storage team:tmp ui.actions[0] run function team:ui/empty
function team:ui/show with storage team:tmp
