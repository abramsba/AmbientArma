
aa_ai_team_infantry_regroup = {
	params[
		"_team",
		"_position",
		["_wptype", "MOVE"]
	];	
	private _groups = [_team] call aa_ai_team_groups;
	private _waypoints = [];
	if(isnil "_position") then {
		_position = [_groups] call aa_ai_team_position;
	};
	{
		// Create Waypoint to somewhere near area
		private _waypoint = [_x, _position, 50, _wptype] call cba_fnc_addwaypoint;
		_waypoints pushback _waypoint;
	} foreach _groups;
	_waypoints
};