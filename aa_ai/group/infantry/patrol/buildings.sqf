
aa_ai_group_infantry_patrol_buildings = {
	params[
		"_group",
		"_node",
		["_wpcount", 1],
		["_wptype", "MOVE"]
	];
	private _buildings = [_node] call aa_node_get_houses;
	private _waypoints = [];
	for "_i" from 0 to (_wpcount - 1) do {
		private _rc = selectrandom _buildings;
		private _waypoint = [_group, (getpos _rc), 0, _wptype] call cba_fnc_addwaypoint;
		_waypoints pushback _waypoint;
	};
	_waypoints
};