--[[	

	Created by Sylian (from emudevs.gg)

	[LICENSE]
	This script is made exclusively for Emudevs.gg
	All emudevs.gg members are allowed to use this resource for their servers.
	You are NOT allowed to share this script anywhere.

--]]

-- Requires the "Config" file.
local config = require("SpawnOnKill_Config")

-- Events
local PLAYER_EVENT_ON_KILL_CREATURE = 7


-- event, player, victim
function OnKill(event, killer, killed)

	-- If the "alwaysSpawn" config is false, we will do the calculation.
	if not config.alwaysSpawn  then
		if CalculateChance() then
			killer:SpawnCreature(config.creatureID, killed:GetX(), killed:GetY(), killed:GetZ(), killed:GetO())
		end

	else
		config.Debug("Spawned creature because AlwaysSpawn is ON, disable this in the config.lua file if you want it to be by chance...", "")
		killer:SpawnCreature(config.creatureID, killed:GetX(), killed:GetY(), killed:GetZ(), killed:GetO())
	end
end

-- Calculates the chance and return true if we should spawn, otherwise, return false.
function CalculateChance()

	-- Rolling to see if we should spawn or not.
	local chanceCalculated = math.random(config.chanceMin, config.chanceMax)

	-- Calls the debug function in "Config", but it only prints IF boolean "Debug" is TRUE.
	config.Debug("You rolled", chanceCalculated)
	
	-- If the chanceCalculated is lower or the same as chance, then return true, if not, return false.
	if(chanceCalculated <= config.chance) then
		return true;
	else
		return false;
	end

end


-- Register events
RegisterPlayerEvent(PLAYER_EVENT_ON_KILL_CREATURE, OnKill)
