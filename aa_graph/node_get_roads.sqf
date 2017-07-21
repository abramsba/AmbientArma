
aa_node_get_roads = {
	params["_node"];
	private _trigger = [_node] call aa_node_get_trigger;
	private _radius = (triggerarea _trigger) select 0;
	private _roads = _node getvariable ["_ROADS", []];
	if(_roads isequalto []) then {
		_roads = (getpos _trigger) nearroads _radius;
		_node setvariable ["_ROADS", _roads];
	};
	_roads
};