
aa_draw_graph = {
	private _nodes = [] call aa_list_nodes;
	private _nodename = "DNODE_%1";
	private _dirname = "DNODE_DIR_%1_%2_%3";
	for "_i" from 0 to ((count _nodes) - 1) do {
		private _node = _nodes select _i;
		private _nn = (_node select 0);
		private _marker = createmarkerlocal [ format[_nodename, _i], _nn];
		_marker setmarkertextlocal str(_nn);
		_marker setmarkersize [0.6, 0.6];
		_marker setmarkershape "icon";
		_marker setmarkertype "mil_circle";
		_marker setmarkercolor "colorcivilian";
	};
};