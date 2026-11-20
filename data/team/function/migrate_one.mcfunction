# Interno: procesa mq[0] y sigue (recursivo)
data modify storage team:tmp t set from storage team:tmp mq[0]
execute unless data storage team:tmp t.n store result storage team:tmp t.n int 1 run scoreboard players add #next team.forge 1
execute unless data storage team:tmp t.members run data modify storage team:tmp t.members set value []
data modify storage team:data teams append from storage team:tmp t
data remove storage team:tmp mq[0]
execute if data storage team:tmp mq[0] run function team:migrate_one
