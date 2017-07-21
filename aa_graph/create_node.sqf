
aa_create_node = {
	params[
		"_node_name",
		"_node_origin",
		"_zone_origin",
		"_zone_radius",
		["_node_type", AA_LOC_NODE]
	];
	private _logic = creategroup sidelogic;
	private _node = _logic createunit [_node_type, _node_origin, [], 0, "NONE"];
	private _zone = createtrigger[AA_LOC_DETC, _zone_origin];
	_zone settriggerarea [_zone_radius, _zone_radius, 0, false];
	_zone settriggeractivation ["ANY", "PRESENT", true];
	_zone settriggerstatements ["this", "", ""];
	_node synchronizeobjectsadd [_zone];
	missionnamespace setvariable [_node_name, _node];
	_node setname _node_name;
	_node
};