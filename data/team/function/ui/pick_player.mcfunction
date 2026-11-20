# Interno: {id} del team. Paso 2 de "Agregar jugador": elegir al jugador
$execute unless data storage team:data teams[{n:$(id)}] run return run function team:ui/gone
$scoreboard players set @s tf.sel $(id)
data modify storage team:tmp ui set value {type:"minecraft:multi_action",title:{text:"Agregar a ",color:"aqua",bold:true,extra:[{text:"[",extra:[{text:""},{text:"]"}]}]},body:[{type:"minecraft:plain_message",width:400,contents:{text:"Elige al jugador. Si ya estaba en otro team, se cambia a este. Salen todos los que han entrado alguna vez al mundo.",color:"gray"}}],columns:2,pause:false,after_action:"wait_for_response",actions:[],exit_action:{label:"Volver",action:{type:"minecraft:run_command",command:"trigger tf.act set 4"}}}
$data modify storage team:tmp ui.title.extra[0].color set from storage team:data teams[{n:$(id)}].color
$data modify storage team:tmp ui.title.extra[0].extra[0].text set from storage team:data teams[{n:$(id)}].name
data modify storage team:tmp b set value {o:"4"}
scoreboard players set #only team.forge 0
function team:ui/player_btns
data modify storage team:tmp empty set value "Todavía no hay jugadores registrados."
execute unless data storage team:tmp ui.actions[0] run function team:ui/empty
function team:ui/show with storage team:tmp
