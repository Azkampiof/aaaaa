local groupId = 32419298 -- Replace this with your group ID
local playerName = "Azkampiof" -- Replace this with the player's username

-- Function to get the player's rank in the group
local function getPlayerRankInGroup(playerName)
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
local rank = getPlayerRankInGroup(playerName)
print(playerName .. "'s rank in the group is: " .. rank)
