# Interno: fila de q[0] y sigue (recursivo)
data modify storage team:tmp ui.body append value {type:"minecraft:plain_message",width:400,contents:{text:"",extra:[{text:"[",extra:[{text:""},{text:"]"}]},{text:"  "}]}}
data modify storage team:tmp ui.body[-1].contents.extra[0].color set from storage team:tmp q[0].color
data modify storage team:tmp ui.body[-1].contents.extra[0].extra[0].text set from storage team:tmp q[0].name
data modify storage team:tmp lq set value []
data modify storage team:tmp lq set from storage team:tmp q[0].members
execute if data storage team:tmp lq[0] run function team:ui/list_member
execute unless data storage team:tmp q[0].members[0] run data modify storage team:tmp ui.body[-1].contents.extra append value {text:"sin miembros",color:"dark_gray",italic:true}
data remove storage team:tmp q[0]
execute if data storage team:tmp q[0] run function team:ui/list_team
