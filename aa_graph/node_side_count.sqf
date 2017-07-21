
aa_node_side_count = {
	params["_node", "_side"];
	private _count = 0;
	private _units = [_node] call aa_node_get_units;
	{
		private _xside = side _x;
		if(_xside isequalto _side) then {
			_count = _count + 1;
		};
	} foreach _units;
	_count
};
