
aa_ai_team_infantry_buildings = {
	params[
		"_team",
		"_node",
		["_wpcount", 1],
		["_wptype", "MOVE"]
	];
	private _groups = [_team] call aa_ai_team_groups;
	{
		[_x, _node, _wpcount, _wptype] call aa_ai_group_infantry_patrol_buildings;
	} foreach ([_team] call aa_ai_team_groups);
};