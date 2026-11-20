# Interno: los teams creados con versiones viejas no tienen id numérico (n)
# ni lista de miembros. Se rehace el registro agregándoselos.
data modify storage team:tmp mq set from storage team:data teams
data modify storage team:data teams set value []
execute if data storage team:tmp mq[0] run function team:migrate_one
