
aa_ai_team_create = {
	params[
		"_name",
		"_groups",
		"_side"
	];
	private _logic = creategroup sidelogic;
	private _class = "";
	switch (_side) do {
		case west: { _class = "SideBLUFOR_F"; };
		case east: { _class = "SideOPFOR_F"; };
		case independent: { _class = "SideResistance_F"; };
	};
	private _node = _logic createunit [_class, [-10, -10, -10], [], 0, "NONE"];
	missionnamespace setvariable [_name, _node];
	private _leaders = [];
	{
		_leaders pushback (leader _x);
	} foreach _groups;
	_node synchronizeobjectsadd _leaders;
	_node
};
