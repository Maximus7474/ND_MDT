if GetResourceState("es_extended") ~= "started" then return end

if IsDuplicityVersion() then
    function GetPhoneNumber()
    end

    if GetResourceState("qs-inventory") then
        exports['qs-inventory']:CreateUsableItem("mdt", function (source, item)
            TriggerClientEvent("ND_MDT:UsedTablet", source)
        end)
    else
        ESX.RegisterUsableItem("mdt", function (playerId)
            TriggerClientEvent("ND_MDT:UsedTablet", playerId)
        end)
    end
else
    function GetPhoneNumber()
    end
end

