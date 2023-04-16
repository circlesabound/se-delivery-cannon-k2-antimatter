if mods['space-exploration'] then
    local data_util = require('__space-exploration__.data_util')

    -- patch RFP compatibility removing the empty-antimatter-canister recipe
    if mods["RealisticFusionPower"] then
        if settings.startup["rfp-replace-se"] then
            data.raw.recipe[data_util.mod_prefix..'empty-antimatter-canister'].hidden = false
            table.insert(data.raw.technology["rfp-antimatter-processing"].effects, {type = "unlock-recipe", recipe = data_util.mod_prefix.."empty-antimatter-canister"})
        end
    end
end
