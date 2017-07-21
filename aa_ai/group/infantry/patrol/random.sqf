
aa_ai_group_infantry_patrol_random = {
	params[
		"_group",
		"_node",
		["_wpcount", 5],
		["_wptype", "MOVE"]
	];
	private _roads     = [_node] call aa_node_get_roads;
	private _buildings = [_node] call aa_node_get_houses;
	private _combined  = _roads;
	_combined append _buildings;
	private _waypoints = [];
	for "_i" from 0 to _wpcount do {
		private _rc = selectrandom _combined;
		private _waypoint = [_group, (getpos _rc), 0, _wptype] call cba_fnc_addwaypoint;
		_waypoints pushback _waypoint;
	};
	_waypoints
};