--[[	

	Created by Sylian (from emudevs.gg)

	[LICENSE]
	This script is made exclusively for Emudevs.gg
	All emudevs.gg members are allowed to use this resource for their servers.
	You are NOT allowed to share this script anywhere.


--]]



-------------------- Settings --------------------

--> This is the ID for the creature we want to spawn.
local creatureID = 150;

--> This is the chance to spawn the creature.
---> Chance needs to be a number between 1 & 100 (chance, chanceLimit)
----> If chance is set to 1, then it would be 1% chance for a goblin to spawn. 
local chance = 50;


--> Chance minimum
local chanceMin = 1

--> This is the chanceMax, by default its 100, so that means if "chance" is set to 1, that would be 1%
local chanceMax = 100;

--> Change this to true, if you want it to debug in the server console.
local debug = true;

--> Change this to true if you want to spawn the creature on EVERY KILL.
local alwaysSpawn = false;





-------------------- DONT TOUCH ANYTHING BELOW HERE --------------------


--> Function for debugging if needed.
function Debug(message, arg)
	if debug then
		print("[DEBUG] -> " .. message .. " : " .. arg)
	end

end


return 
{

	-- Variables
	 creatureID = creatureID,
	 chance = chance,
	 chanceMin = chanceMin,
	 chanceMax = chanceMax,

	 -- Functions
	 Debug = Debug,

	 -- Booleans
	 debug = debug,
	 alwaysSpawn = alwaysSpawn
 }