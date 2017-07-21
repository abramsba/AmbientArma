
aa_node_get_groups = {
	params["_node"];
	private _groups = [];
	{
		_groups pushbackunique (group _x);
	} foreach ([_node] call aa_node_get_units);	
	_groups
};