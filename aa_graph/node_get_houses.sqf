
aa_node_get_houses = {
	params["_node"];
	private _trigger = [_node] call aa_node_get_trigger;
	private _radius = (triggerarea _trigger) select 0;
	private _objects = _node getvariable ["_OBJECTS", []];
	if(_objects isequalto []) then {
		_objects = nearestobjects [getpos _trigger, ["House"], _radius];
		_node setvariable ["_OBJECTS", _objects];
	};
	_objects
};
