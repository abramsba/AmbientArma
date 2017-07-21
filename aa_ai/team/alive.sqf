
aa_ai_team_alive = {
	params["_team"];
	private _groups = [_team] call aa_ai_team_groups;
	private _alive = false;
	{
		private _a = [_x] call aa_ai_group_alive;
		if(_a) exitwith { _alive = true; };
	} foreach _groups;	
	_alive
};