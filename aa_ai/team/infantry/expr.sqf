
// Gives an entire team an order to do something at expression points
aa_ai_team_infantry_expr = {
	params[
		"_team",
		"_node",
		["_expr", "(1 - sea)"],
		["_wpcount", 1],
		["_wptype", "MOVE"]
	];
	private _groups = [_team] call aa_ai_team_groups;
	{
		[_x, _node, _expr, _wpcount, _wptype] call aa_ai_group_infantry_patrol_expr;
	} foreach _groups;
};
