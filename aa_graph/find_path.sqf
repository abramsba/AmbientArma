
aa_find_path = {
	params[
		"_start",
		"_finish",
		["_types", [AA_LOC_NODE]],
		["_efficient", true]
	];
	private _results = nil;
	if(_efficient) then {
		_results = [_start, _finish] call aa_find_path_efficient;
	}
	else {
		_results = [_start, _finish] call aa_find_path_inefficient;
	};
	if(isnil "_results") then { _results = []; }
	else {
		if(typename _results == "OBJECT") then { _results = [_results] };
		private _inres = _start in _results;
		if(!_inres) then {
			_results pushback _start;
		};
		reverse _results;
	};
	_results
};