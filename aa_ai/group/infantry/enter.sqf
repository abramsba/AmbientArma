
aa_ai_group_infantry_enter = {
	params[
		"_group",
		"_node",
		["_dist", nil]
	];
	private _trigger = [_node] call aa_ai_node_get_trigger;
	private _radius = (triggerarea _trigger) select 0;
	if(isnil "_dist") then {
		_dist = (radius / 4);
	};
	private _dir = _node getdir (leader _group);
	private _newpos = _node getrelpos [_dir, _dist];
	private _waypoint = [_group, _relpos, 0, "MOVE"] call cba_fnc_addwaypoint;
	[_waypoint]
};