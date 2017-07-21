
aa_export_graph = {
	private _nodes = [] call aa_list_nodes;
	private _output = [];
	{
		private _node = _x select 0;
		private _links = _x select 1;
		private _trigger = [_node] call aa_node_get_trigger;
		private _radius = (triggerarea _trigger) select 0;
		private _npos = getpos _node;
		private _tpos = getpos _trigger;
		private _type = typeof _node;
		private _linksout = [];
		{
			_linksout pushback (str _x);
		} foreach _links;
		_output pushback [ str _node, _npos, _tpos, _radius, _linksout, _type ];
	} foreach _nodes; 	
	_output
};