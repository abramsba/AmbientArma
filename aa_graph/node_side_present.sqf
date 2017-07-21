
aa_node_side_present = {
	params["_node", "_side"];
	private _present = false;
	private _units = [_node] call aa_node_get_units;
	{
		private _xside = side _x;
		if(_xside isequalto _side) exitwith {
			_present = true;
		};
	} foreach _units;
	_present
};