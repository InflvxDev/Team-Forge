# Interno: lo llama el diálogo team:new con {name, color}
function team:ui/grant
data remove storage team:tmp status
$function team:cmd/new {name:"$(name)",color:"$(color)"}
function team:ui/main
