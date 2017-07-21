
aa_ai_team_dead_groups = {
	params["_groups"];	
	private _dead = [];
	{
		private _a = [_x] call aa_ai_group_alive;
		if(!_a) then {
			_dead pushback _x;
		};
	} foreach _groups;
	_dead
};