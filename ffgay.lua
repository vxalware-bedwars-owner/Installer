-- This script assumes you're working in a Roblox game, and that the player is the character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Function to regenerate health
local function regenerateHealth()
    while true do
        -- Check if the humanoid health is below 80
        if humanoid.Health < 80 then
            -- Regenerate 10 health points
            humanoid.Health = math.min(humanoid.Health + 10, humanoid.MaxHealth)
        end
        -- Wait 0.1 seconds before checking again
        task.wait(0.1)
    end
end

-- Start the regeneration loop
regenerateHealth(
