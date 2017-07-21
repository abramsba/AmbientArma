
aa_node_get_units = {
	params["_node"];
	private _trigger = [_node] call aa_node_get_trigger;
	private _units = [];
	{
		private _side = side _x;
		if( _side isequalto sidelogic || _side isequalto sideempty ) then {}
		else {
			_units pushback _x;
		};
	} foreach (list _trigger);
	_units
};
