# Interno: jugadores que están en un team, para sacarlos
data modify storage team:tmp ui set value {type:"minecraft:multi_action",title:{text:"Quitar jugador",color:"yellow",bold:true},body:[{type:"minecraft:plain_message",contents:{text:"Elige al jugador que quieres sacar de su team.",color:"gray"}}],columns:2,pause:false,after_action:"wait_for_response",actions:[],exit_action:{label:"Volver",action:{type:"minecraft:run_command",command:"trigger tf.act set 1"}}}
data modify storage team:tmp b set value {o:"5"}
scoreboard players set #only team.forge 1
function team:ui/player_btns
data modify storage team:tmp empty set value "Nadie está en un team todavía."
execute unless data storage team:tmp ui.actions[0] run function team:ui/empty
function team:ui/show with storage team:tmp
