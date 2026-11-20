# Interno: {id} del team. Pregunta antes de borrar.
$execute unless data storage team:data teams[{n:$(id)}] run return run function team:ui/gone
$data modify storage team:tmp t set from storage team:data teams[{n:$(id)}]
data modify storage team:tmp ui set value {type:"minecraft:confirmation",title:{text:"Borrar team",color:"red",bold:true},body:{type:"minecraft:plain_message",contents:[{text:"Se va a borrar el team ",color:"gray"},{text:"[",extra:[{text:""},{text:"]"}]},{text:". Todos sus miembros se quedarán sin team. No se puede deshacer.",color:"gray"}]},pause:false,after_action:"wait_for_response",yes:{label:{text:"Borrar",color:"red"},action:{type:"minecraft:run_command",command:""}},no:{label:"Volver",action:{type:"minecraft:run_command",command:"trigger tf.act set 3"}}}
data modify storage team:tmp ui.body.contents[1].color set from storage team:tmp t.color
data modify storage team:tmp ui.body.contents[1].extra[0].text set from storage team:tmp t.name
$data modify storage team:tmp ui.yes.action.command set value "trigger tf.act set $(id)2"
function team:ui/show with storage team:tmp
