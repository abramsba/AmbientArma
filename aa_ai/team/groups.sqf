
aa_ai_team_groups = {
	params["_node"];
	private _groups = [];
	{
		_groups pushback (group _x);
	} foreach (synchronizedObjects _node);
	_groups
};
