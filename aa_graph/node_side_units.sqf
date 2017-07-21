
aa_node_side_units = {
	params["_node", "_side"];
	private _output = [];
	private _units = [_node] call aa_node_get_units;
	{
		private _xside = side _x;
		if(_xside isequalto _side) exitwith {
			_output pushback _x;
		};
	} foreach _units;
	_output
};
