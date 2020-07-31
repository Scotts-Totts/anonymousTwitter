function tablelength(T) --get size of a table - from @u0b34a0f6ae on stackoverflow https://stackoverflow.com/a/2705804
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

function getRandHandle() -- get a random, unoccupied twitter handle index from twitteraHandles.lua 
    local handleTableSize = tablelength(twitterHandles)
    local rand = math.floor(math.random(0,handleTableSize))
    while not rand == table.concat(combination[i],":",1) do 
        rand = math.floor(math.random(0,handleTableSize))
    end
    return rand
end

function alert(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, 2000)
end

