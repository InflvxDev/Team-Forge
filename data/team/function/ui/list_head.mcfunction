# Interno: {n}
$data modify storage team:tmp ui.body[-1].contents.extra append value {type:"object",object:"player",player:{name:"$(n)"},hover_event:{action:"show_text",value:{text:"$(n)",color:"white"}}}
data modify storage team:tmp ui.body[-1].contents.extra append value {text:" "}
