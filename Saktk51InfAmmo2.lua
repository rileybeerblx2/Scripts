for i, v in pairs(getgc()) do
            if type(v) == "function" and islclosure(v) and not is_synapse_function(v) then
                local x = debug.getconstants(v)
                if table.find(x, "ammo") and table.find(x, "update_ammo_gui") and table.find(x, "has_scope") then
                    debug.setconstant(v, 2, -999999)
                end
            end
        end
    end
)
