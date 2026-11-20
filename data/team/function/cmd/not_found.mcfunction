# Interno: mensaje de team no encontrado, con {name}
$data modify storage team:tmp status set value {text:"No existe el team \"$(name)\".",color:"red"}
function team:cmd/say
