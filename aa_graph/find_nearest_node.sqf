
aa_find_nearest_node = {
	params[
		"_pos",
		["_radius", 300],
		["_step", 300],
		["_types", [AA_LOC_NODE]]
	];
	if(_radius > worldsize) exitwith { nil };
	private _res = nearestobjects [_pos, _types, _radius];
	if(count _res == 0) exitwith {
		[_pos, (_radius + _step), _step, _types] call aa_find_nearest_node
	};
	(_res select 0)
};