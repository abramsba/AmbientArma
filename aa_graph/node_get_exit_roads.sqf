
aa_node_exit_roads = {
	params["_node"];
	private _trigger = [_node] call aa_node_get_trigger;
	private _targetx = (getpos _trigger) select 0;
	private _targety = (getpos _trigger) select 1;
	private _radius = (triggerarea _trigger) select 0;
	private _roads = [];
	for "_i" from 1 to 10 do {
		private _dir = _i * 36;
		private _ex = _targetx + (sin _dir * (_radius));
		private _ey = _targety + (cos _dir * (_radius));
		_found = [_ex, _ey, 0] nearroads 100;
		private _fdst = 0;
		private _furt = nil;
		{
			private _dst = _x distance2d _trigger;
			if(_dst > _fdst) then {
				_furt = _x;
				_fdst = _dst;
			}
		} foreach _found;
		if(!isnil "_furt") then {
			_roads pushbackunique _furt;
		};
	};
	_roads
};
