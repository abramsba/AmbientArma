
aa_ai_team_infantry_move = {
	params[
		"_team",
		"_start",
		"_node",
		["_formation", false]
	];
	private _groups = [_team] call aa_ai_team_groups;
	{
		[_x, _start, _node] call aa_ai_group_infantry_move;
	} foreach ([_team] call aa_ai_team_groups);
};