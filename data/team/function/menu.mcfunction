# Menú: /function team:menu (requiere OP)
# Marca a @s como admin hasta que salga del servidor: así los botones del menú
# pueden usar /trigger tf.act (sin la pantalla de "Confirm Command Execution").
function team:ui/grant
data remove storage team:tmp status
function team:ui/main
