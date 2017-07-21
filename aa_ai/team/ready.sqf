
aa_ai_team_ready = {
	params["_team"];
	private _groups = [_team] call aa_ai_team_groups;
	private _ready = true;
	{
		private _r = [_x] call aa_ai_group_ready;
		if(!_r) exitwith { _ready = false; };
	} foreach _groups;	
	_ready
};