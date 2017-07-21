
aa_ai_team_clear = {
	params["_team"];
	private _groups = [_team] call aa_ai_team_groups;
	{
		[_x] call aa_ai_group_clear;
	} foreach _groups;	
};