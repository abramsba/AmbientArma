
aa_ai_group_infantry_orbit = {
	params[
		"_group",
		"_node",
		"_degrees",
		["_dist", nil],
		["_step", nil]
	];	
	if(isnil "_step") then {
		_step = floor (random [20, 45, 70]);
	};
	private _rots = [_degrees] call aa_fn_rot_count;
	private _divs = floor(360 / _step);
	private _trigger = [_node] call aa_node_get_trigger;
	private _radius = (triggerarea _trigger) select 0;
	if(isnil "_dist") then {
		_dist = _radius;
	};

	private _enter_dir = _node getdir (leader _group);
	private _target_dir = _enter_dir + _degrees;
	private _current_dir = _enter_dir;
	private _waypoints = [];

	if(_degrees > 0) then {
		while{_current_dir < _target_dir} do {
			private _relpos = _node getrelpos [_dist, _current_dir];
			private _waypoint = [_group, _relpos, 0, "MOVE"] call cba_fnc_addwaypoint;
			_waypoints pushback _waypoint;
			_current_dir = _step + _current_dir;
		};
	}
	else {
		while{_current_dir > _target_dir} do {
			private _relpos = _node getrelpos [_dist, _current_dir];
			private _waypoint = [_group, _relpos, 0, "MOVE"] call cba_fnc_addwaypoint;
			_waypoints pushback _waypoint;
			_current_dir = _current_dir - _step;
		};
	};
	_waypoints;
};
