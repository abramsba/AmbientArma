
aa_list_nodes = {
	private _nodes = nearestobjects [[0, 0, 0], [AA_LOC_NODE], worldsize + worldsize];
	private _output = [];
	{
		private _children = [_x] call aa_node_get_children;
		_output pushback [_x, _children];
	} foreach _nodes;	
	_output
};