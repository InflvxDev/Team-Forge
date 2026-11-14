# Interno: agrega queue[0] al diálogo y sigue con el resto (recursivo).
# Se copia el nombre con "set from" (sin macro) para que cualquier carácter funcione.
data modify storage team:tmp ui.body append value {type:"minecraft:plain_message",contents:{text:"[",color:"white",extra:[{text:""},{text:"]"}]}}
data modify storage team:tmp ui.body[-1].contents.color set from storage team:tmp queue[0].color
data modify storage team:tmp ui.body[-1].contents.extra[0].text set from storage team:tmp queue[0].name
data remove storage team:tmp queue[0]
execute if data storage team:tmp queue[0] run function team:list_item
