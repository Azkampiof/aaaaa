local groupId = tonumber(arg[1]) or error("Group ID not provided")
local playerName = arg[2] or error("Player name not provided")

-- Function to get the player's rank in the group
local function getPlayerRankInGroup(groupId, playerName)
    local success, rank = pcall(function()
        return game:GetService("GroupService"):GetRankInGroup(groupId, playerName)
    end)
    
    if success then
        return rank
    else
        return "Error: " .. rank -- Return error message if failed
    end
end

-- Call the function to get the rank
local rank = getPlayerRankInGroup(groupId, playerName)
print(playerName .. "'s rank in the group is: " .. rank)
