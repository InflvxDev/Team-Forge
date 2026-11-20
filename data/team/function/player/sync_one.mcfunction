# Interno: {n, id}
$execute if entity @s[team=$(id)] run data modify storage team:data teams[{id:"$(id)"}].members append value {n:"$(n)"}
