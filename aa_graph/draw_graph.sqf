
aa_draw_graph = {

	private _nodes = [] call aa_list_nodes;
	private _nodename = "DNODE_%1";
	private _dirname = "DNODE_DIR_%1_%2_%3";

	for "_i" from 0 to ((count _nodes) - 1) do {
		private _node = _nodes select _i;
		private _nn = (_node select 0);
		private _nc = (_node select 1);
		private _nx = (getpos _nn) select 0;
		private _ny = (getpos _nn) select 1;		
		for "_e" from 0 to ((count _nc) - 1) do {
			private _child = _nc select _e;
			private _dist = _child distance2d _nn;
			private _dir  = _nn getdir _child;
			private _steps = 3;
			private _step = _dist / (_steps + 1);
			private _rad = 0;
			for "_m" from 0 to (_steps - 1) do {
				_rad = _rad + _step;
				private _px = _nx + ((sin _dir) * _rad);
				private _py = _ny + ((cos _dir) * _rad);
				private _dmarker = createmarker [ format[_dirname, _i, _e, _m], [_px, _py] ];
				_dmarker setmarkershape "icon";
				_dmarker setmarkertype "mil_dot";
				_dmarker setmarkercolor "coloropfor";
				_dmarker setmarkersize [0.45, 0.45];
			};
		};
	};

	for "_i" from 0 to ((count _nodes) - 1) do {
		private _node = _nodes select _i;
		private _nn = (_node select 0);
		private _marker = createmarker [ format[_nodename, _i], _nn];
		_marker setmarkershape "icon";
		_marker setmarkertype "mil_destroy";
		_marker setmarkercolor "colorred";
	};
};