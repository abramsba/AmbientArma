
aa_ai_group_infantry_move = {
	params[
		"_group",
		"_start",
		"_target"
	];
	private _path = [_start, _target] call aa_find_path;
	if(isnil "_path") exitwith { [] };
	private _nodes = (count _path);
	private _prev = nil;
	private _waypoints = [];
	if(_nodes == 0) exitwith { [] };
	for "_i" from 0 to (_nodes - 1) do {
		private _last = _i isequalto (_nodes - 1);
		private _node = _path select _i;
		private _trigger = [_node] call aa_node_get_trigger;
		private _radius = (triggerarea _trigger) select 0;
		private _waypoint = nil;
		if(_last) then {
			private _dir = 0;
			if(!isnil "_prev") then {
				_dir = _node getdir (waypointposition _prev);
			} else {
				_dir = _node getdir (leader _group);
			};
			private _nx = (getpos _node) select 0;
			private _ny = (getpos _node) select 1;
			private _xp = _nx + (sin _dir * _radius);
			private _yp = _ny + (cos _dir * _radius);
			_waypoint = [
				_group,
				[_xp, _yp, 0],
				20,
				"MOVE" ] call cba_fnc_addwaypoint;
		} 
		else {
			_waypoint = [
				_group,
				_node,
				(_radius / 3),
				"MOVE" ] call cba_fnc_addwaypoint;
			_prev = _waypoint;
		};
		_waypoints pushback _waypoint;
	};
	_waypoints
};
