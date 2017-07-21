
aa_ai_group_infantry_occupy = {
	params[
		"_group",
		"_node"
	];	
	private _groupsize = count (units _group);
	private _homes = [_node] call aa_node_get_indoor_houses;
	private _home = selectrandom _homes;
	private _waypoint = [_group, (getpos _home), 15, "HOLD"] call cba_fnc_addwaypoint;
	[_waypoint]
};