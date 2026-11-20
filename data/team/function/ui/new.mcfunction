# Interno: lo llama el diálogo team:new con {name, color}
# (este sí sale con la confirmación de Minecraft, porque el nombre va escrito en el comando)
function team:ui/grant
data remove storage team:tmp status
$function team:cmd/new {name:"$(name)",color:"$(color)"}
function team:ui/main
