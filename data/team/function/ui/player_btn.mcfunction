# Interno: {n, id, o}
$execute if score #only team.forge matches 1 unless data storage team:data teams[{members:[{n:"$(n)"}]}] run return 0
$data modify storage team:tmp ui.actions append value {label:[{type:"object",object:"player",player:{name:"$(n)"}},{text:" $(n)",color:"white"}],width:200,action:{type:"minecraft:run_command",command:"trigger tf.act set $(id)$(o)"}}
$execute if data storage team:data teams[{members:[{n:"$(n)"}]}] run function team:ui/player_tag {n:"$(n)"}
