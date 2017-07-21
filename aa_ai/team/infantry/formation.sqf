
aa_ai_team_infantry_formation = {
	params[
		"_team",
		"_pos",
		"_dir",
		["_wptype", "MOVE"]
	];
	private _groups = [_team] call aa_ai_team_groups;
	private _formation = _team getvariable ["FORMATION", "WEDGE"];
	private _i = 1;
	{
		_x params ["_group"];
		private _npos = nil;
		private _imod = 0 == (_i % 2);
		switch (_formation) do {
			case "COLUMN": {
				_npos = _pos getPos [(_i * 30), _dir];
			};
			case "LINE": {
				_npos = _pos getPos [(_i * 60), _dir];
			};
			case "ECH LEFT": {
				_npos = _pos getPos [(_i * 20), (_dir + 45)];
			};
			case "ECH RIGHT": {
				_npos = _pos getPos [(_i * 20), (_dir - 45)];
			};
			default {
				if(_imod) then {
					_npos = _pos getPos [(_i * 15), (_dir - 45)];
				}
				else {
					_npos = _pos getPos [(_i * 15), (_dir + 45)];
				};
			};
		};
		[_group, _npos, 0, _wptype] call cba_fnc_addwaypoint;
		_i = _i + 1;
	} foreach _groups;
};
