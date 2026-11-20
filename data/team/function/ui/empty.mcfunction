# Interno: convierte la lista armada en team:tmp ui en un aviso con el texto
# de team:tmp empty (un multi_action no puede quedar sin botones)
data modify storage team:tmp ui.type set value "minecraft:notice"
data remove storage team:tmp ui.actions
data remove storage team:tmp ui.columns
data modify storage team:tmp ui.action set from storage team:tmp ui.exit_action
data remove storage team:tmp ui.exit_action
data modify storage team:tmp ui.body set value [{type:"minecraft:plain_message",contents:{text:"",color:"gray"}}]
data modify storage team:tmp ui.body[0].contents.text set from storage team:tmp empty
