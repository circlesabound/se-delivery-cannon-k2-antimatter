if mods['space-exploration'] then
    local data_util = require('__space-exploration__.data_util')
    
    se_delivery_cannon_ammo_recipes = se_delivery_cannon_ammo_recipes or {}

    se_delivery_cannon_ammo_recipes['antimatter-rocket'] = {
        type = 'ammo',
        name = 'antimatter-rocket',
        amount = 1,
        ingredients = {
            { 'antimatter-rocket', 1 },
            { data_util.mod_prefix..'delivery-cannon-weapon-capsule', 1 }
        }
    }
end
