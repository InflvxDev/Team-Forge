# Uso: /function team:cmd/new {name:"Rojos",color:"red"}
# Nombres válidos: solo letras A-Z, números y _ - . + (sin espacios, sin ñ ni tildes)
data modify storage team:tmp ran set value 0b
$function team:cmd/new_run {name:"$(name)",color:"$(color)"}
$execute if data storage team:tmp {ran:0b} run tellraw @s [{text:"✖ Nombre inválido: ",color:"red"},{text:"$(name)",color:"white"},{text:"\nSolo se permiten letras sin tildes (A-Z), números y _ - . + (sin espacios ni ñ).",color:"gray"}]
