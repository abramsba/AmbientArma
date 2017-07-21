
aa_ai_team_position = {
	params[
		"_team"
	];
	private _groups = [_team] call aa_ai_team_groups;
	[worldsize, 0] params ["_minx", "_maxx"];
	[worldsize, 0] params ["_miny", "_maxy"];
	if((count _groups) == 1) exitwith {
		private _group = _groups select 0;
		[
			(getpos (leader _group)) select 0,
			(getpos (leader _group)) select 1,
			0
		]
	};
	{
		(getpos (leader _x)) params ["_lxp", "_lyp", "_lzp"];
		if(_lxp < _minx) then {
			_minx = _lxp;
		};
		if(_lxp > _maxx) then {
			_maxx = _lxp;
		};
		if(_lyp < _miny) then {
			_miny = _lyp;
		};
		if(_lyp > _maxy) then {
			_maxy = _lyp;
		};
	} foreach _groups;
	[
		((_maxx + _minx) / 2),
		((_maxy + _miny) / 2),
		0
	]
};