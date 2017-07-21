
aa_ai_group_infantry_patrol_expr = {
	params[
		"_group",
		"_node",
		["_expr", "(1 - sea)"],
		["_wpcount", 1],
		["_wptype", "MOVE"]
	];
	private _best = [_node, _expr, _wpcount] call aa_node_best_places;
	private _waypoints = [];
	{
		private _waypoint = [_group, _x, 0, _wptype] call cba_fnc_addwaypoint;
		_waypoints pushback _waypoint;
	} foreach _best;
	_waypoints
};
