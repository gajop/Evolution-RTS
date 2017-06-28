--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    game_spawn.lua
--  brief:   spawns start unit and sets storage levels
--  author:  Tobi Vollebregt
--
--  Copyright (C) 2010.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
	return {
		name      = "Spawn",
		desc      = "spawns start unit and sets storage levels",
		author    = "Tobi Vollebregt",
		date      = "January, 2010",
		license   = "GNU GPL, v2 or later",
		layer     = 0,
		enabled   = true  --  loaded by default?
	}
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- synced only
if (not gadgetHandler:IsSyncedCode()) then
	return false
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local modOptions = Spring.GetModOptions()
 
function IsTeamAI(teamID)
	teamID,leader,isDead,isAiTeam=Spring.GetTeamInfo(teamID)
	return isAiTeam
end
 
local function GetStartUnit(teamID)
        -- get the team startup info
        local side = select(5, Spring.GetTeamInfo(teamID))
        local startUnit
	    local aicommanderdifficulty = { 
			["veryeasy"] =  "ecommanderbattleaiveasy",
			["easy"] =  "ecommanderbattleaieasy",
			["medium"] =  "ecommanderbattleaimedium",
			["hard"] =  "ecommanderbattleaihard",
			["insane"] =  "ecommanderbattleaiinsane",
		}
		local aicommanderecho = { 
			["veryeasy"] =  "Initialized Very Easy AI, Have Fun!",
			["easy"] =  "Initialized Easy AI, Have Fun!",
			["medium"] =  "Initialized Medium AI, Good Luck and Have Fun!",
			["hard"] =  "Initialized Hard AI, Well, Good Luck!",
			["insane"] =  "Initialized Insane AI... R.I.P.",
		}
			
			boolIsAI= IsTeamAI(teamID)
                if boolIsAI==true then
					Spring.Echo (aicommanderecho[modOptions.aidifficulty or "veryeasy"])
					local sidedata = Spring.GetSideData()
					startUnit = aicommanderdifficulty[modOptions.aidifficulty or "veryeasy"]
					return startUnit
                end

       
        if (side == "") then
                -- startscript didn't specify a side for this team
                local sidedata = Spring.GetSideData()
                if (sidedata and #sidedata > 0) then
                        startUnit = sidedata[1 + teamID % #sidedata].startUnit
                end
        else
                startUnit = Spring.GetSideData(side)
        end
        return startUnit
end

local function SpawnStartUnit(teamID)
	local startUnit = GetStartUnit(teamID)
	if (startUnit and startUnit ~= "") then
		-- spawn the specified start unit
		local x,y,z = Spring.GetTeamStartPosition(teamID)
		-- snap to 16x16 grid
		x, z = 16*math.floor((x+8)/16), 16*math.floor((z+8)/16)
		y = Spring.GetGroundHeight(x, z)
		-- facing toward map center
		local facing=math.abs(Game.mapSizeX/2 - x) > math.abs(Game.mapSizeZ/2 - z)
			and ((x>Game.mapSizeX/2) and "west" or "east")
			or ((z>Game.mapSizeZ/2) and "north" or "south")
		local unitID = Spring.CreateUnit(startUnit, x, y, z, facing, teamID)
-- Fun times		
--		if startUnit == "ecommanderai" then
--			id1=Spring.CreateUnit("eorb", x+100, y+200, z, facing, teamID)
--			Spring.GiveOrderToUnit(id1,CMD.GUARD,{unitID}, {"shift"})
--		end
	end

	-- set start resources, either from mod options or custom team keys
	local teamOptions = select(7, Spring.GetTeamInfo(teamID))
	local m = teamOptions.startmetal  or modOptions.startmetal  or 100
	local e = teamOptions.startenergy or modOptions.startenergy or 250

	-- using SetTeamResource to get rid of any existing resource without affecting stats
	-- using AddTeamResource to add starting resource and counting it as income
	if (m and tonumber(m) ~= 0) then
		-- remove the pre-existing storage
		--   must be done after the start unit is spawned,
		--   otherwise the starting resources are lost!
		Spring.SetTeamResource(teamID, "ms", 500) --Use tonumber(m) to have it match the startmetal amounts
		Spring.SetTeamResource(teamID, "m", 0)
		Spring.AddTeamResource(teamID, "m", tonumber(m))
	end
	if (e and tonumber(e) ~= 0) then
		-- remove the pre-existing storage
		--   must be done after the start unit is spawned,
		--   otherwise the starting resources are lost!
		Spring.SetTeamResource(teamID, "es", tonumber(e)) --Use tonumber(e) to have it match the startenergy amounts
		Spring.SetTeamResource(teamID, "e", 0)
		Spring.AddTeamResource(teamID, "e", tonumber(e))
	end
end


function gadget:GameStart()
	-- only activate if engine didn't already spawn units (compatibility)
	if (#Spring.GetAllUnits() > 0) then
		return
	end

	-- spawn start units
	local gaiaTeamID = Spring.GetGaiaTeamID()
	local teams = Spring.GetTeamList()
	for i = 1,#teams do
		local teamID = teams[i]
		-- don't spawn a start unit for the Gaia team
		if (teamID ~= gaiaTeamID) then
			SpawnStartUnit(teamID)
		end
	end
end
