
#Entities
function ocarina_of_time:entity_setup/loop

#Moving Things
function ocarina_of_time:moving_things/loop

#Items
function ocarina_of_time:items/loop

#Always Active
recipe take @a *
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.creative
stopsound @a music minecraft:music.menu
stopsound @a ambient minecraft:ambient.cave
