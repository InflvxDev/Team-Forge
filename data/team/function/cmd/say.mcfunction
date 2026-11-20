# Interno: escribe en el chat el mensaje de storage team:tmp status
# (el menú también lo muestra arriba cuando vuelve a la pantalla principal)
tellraw @s {type:"nbt",storage:"team:tmp",nbt:"status",interpret:true}
