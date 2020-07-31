Citizen.CreateThread(function()
    RegisterNetEvent("anonTweet")
    AddEventHandler("anonTweet", function()
        TriggerEvent("chatMessage", "^5TWITTER | "..handle.."^0: (VPN) "..table.concat(args, " ", argsCount)) -- Send twitter message with one of the random names if no @ provided in 1st argument
    end)

    --defining arrays and variables to use 
    local combination = {} -- stores ID and Twitter handle match, values separated by a :
    local playerID = GetPlayerServerId(source)
    local handle
    local comboSize = tableLength(combination)
    alert("in client")
    -- is @ in 1st argument? if no handle provided, a random one will be assigned to player for entirity of session
    if string.sub(args[1],0,1)==@ then --check for @
        handle = args[1]
        local argsCount = 2
    else
        local argsCount = 1
        for i=0, comboSize do
            if table.concat(combination[i],":",0,1)==playerID then --if ID in combination array equals playerID then set handle to second half of combination index (as separated by the :)
                handle = table.concat(combination[i],":",1)
                break
            end
            Citizen.Wait(1)
        end
        table.insert(combination, comboSize, twitterHandles[twitterRandHandle])
    end
end)