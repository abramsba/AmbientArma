
aa_find_path_efficient = {
	params[
		"_current",
		"_target",
		["_visited", []],
		["_types", [AA_LOC_NODE]]
	];
	private _sorted = [_current, _target] call aa_node_get_children_asc;
	private _filtered = []; //_sorted - _visited;
	{
		if(!(_x in _visited)) then {
			_filtered pushback _x;
		};
	} foreach _sorted;
	if(count _filtered == 0) exitwith { nil };
	_visited pushback _current;
	private _i = 0;
	if(_current isequalto _target) exitwith { [_current] };
	private _output = nil;
	//if(_target in _filtered) exitwith { [_target] };
	while{_i < count _filtered} do {
		private _next = _filtered select _i;
		if(_next isequalto _target) exitwith {
			_output = _target;
		};
		private _res = [_next, _target, _visited] call aa_find_path_efficient;
		if(isnil "_res") then { }
		else {
			if(_res isequalto _target) exitwith {
				_output = [_res, _next];
			};
			if( _res isequaltype [] ) exitwith {
				_output = _res;
				_output pushback _next;
			};
		};
		_i = _i + 1;
	};
	if(isnil "_output") exitwith { nil };
	_output
};
