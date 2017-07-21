
aa_node_get_children_asc = {
	params["_node", "_target",["_types", [AA_LOC_NODE]]];
	private _children = [_node, _types] call aa_node_get_children;
	private _pdist = [];
	{
		private _dst = _target distance2d _x;
		_pdist pushback [_dst, _x];
	} foreach _children;
	_pdist sort true;
	private _pout = [];
	{
		_pout pushback (_x select 1);
	} foreach _pdist;
	_pout
};