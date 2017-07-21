
aa_node_debug_print = {
	params["_node"];
	private _children = [_node] call aa_node_get_children;
	private _houses   = [_node] call aa_node_get_houses;
	private _roads    = [_node] call aa_node_get_roads;
	private _units    = [_node] call aa_node_get_units;	
	private _counts   = [
		["WEST", [_node, west] call aa_node_side_count],
		["EAST", [_node, east] call aa_node_side_count],
		["GUER", [_node, independent] call aa_node_side_count]
	];
	diag_log format["Node '%1'", _node];
	diag_log format["Children: %1", _children];
	diag_log format["Houses: %1", _houses];
	diag_log format["Roads: %1", _roads];
	diag_log format["Units: %1", _units];
	diag_log format["Counts: %1", _counts];
};