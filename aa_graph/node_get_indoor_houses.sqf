
aa_node_get_indoor_houses = {
	params[
		"_node",
		["_minpos", 3],
		["_maxpos", 99]
	];
	private _houses = [_node] call aa_node_get_houses;
	private _output = [];
	{
		private _poslist = [_x] call bis_fnc_buildingpositions;
		if(count _poslist > _minpos && count _poslist < _maxpos) then {
			_output pushback _x;
		};
	} foreach _houses;
	_output
};
