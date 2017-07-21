
aa_node_side_groups = {
	params[
		"_node",
		"_side"
	];	
	private _groups = [];
	{
		private _xside = side _x;
		if(_xside isequalto _side) then {
			_groups pushback _x;
		};
	} foreach ([_node] call aa_node_get_groups);
	_groups
};