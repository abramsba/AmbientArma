
aa_ai_group_infantry_patrol_plains = {
	params[
		"_group",
		"_node",
		["_wpcount", 5],
		["_wptype", "MOVE"]
	];
	private _expr = "(1 - forest) * (1 - trees) * (1 - sea) * (1 - houses)";
	private _best = [_node, _expr, _wpcount] call aa_node_best_places;
	private _waypoints = [];
	{
		private _waypoint = [_group, _x, 0, _wptype] call cba_fnc_addwaypoint;
		_waypoints pushback _waypoint;
	} foreach _best;
	_waypoints
};