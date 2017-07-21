
aa_debug_nodes = {

	private _nodes = [] call aa_list_nodes;
	private _nodename = "NODE_%1";
	private _dirname = "NODE_DIR_%1_%2_%3";
	private _areaname = "NODE_AREA_%1";
	private _areaexit = "NODE_EXIT_%1_%2";
	private _areahome = "NODE_HOME_%1_%2";
	for "_i" from 0 to ((count _nodes) - 1) do {
		private _node = _nodes select _i;
		private _nn = (_node select 0);
		private _trigger = [_nn] call aa_node_get_trigger;
		private _radius = (triggerarea _trigger) select 0;
		private _marker = createmarker [ format [_areaname, _i], getpos _trigger ];
		_marker setmarkershape "ellipse";
		_marker setmarkersize [_radius, _radius];
		_marker setmarkercolor "colorblack";
		_marker setmarkeralpha 0.5;
	};

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
			private _steps = 8;
			private _step = _dist / (_steps + 1);
			private _rad = 0;
			for "_m" from 0 to (_steps - 1) do {
				_rad = _rad + _step;
				private _px = _nx + ((sin _dir) * _rad);
				private _py = _ny + ((cos _dir) * _rad);
				private _dmarker = createmarker [ format[_dirname, _i, _e, _m], [_px, _py] ];
				_dmarker setmarkershape "icon";
				_dmarker setmarkertype "mil_dot";
				_dmarker setmarkercolor "colorblue";
				_dmarker setmarkersize [0.45, 0.45];
			};
		};
	};

	for "_i" from 0 to ((count _nodes) - 1) do {
		private _node = _nodes select _i;
		private _nn = (_node select 0);
		private _exits = [_nn] call aa_node_exit_roads;
		private _houses = [_nn] call aa_node_get_houses;

		for "_e" from 0 to ((count _exits) - 1) do {
			private _ext = _exits select _e;
			private _rmark = createmarker [ format[_areaexit, _i, _e], _ext ];
			_rmark setmarkershape "icon";
			_rmark setmarkertype "mil_arrow2";
			_rmark setmarkercolor "colorred";
			_rmark setmarkersize [0.5, 0.5];
			_rmark setmarkeralpha 0.5;
			_rmark setmarkerdir (_nn getdir _ext);
		};

		/*
		for "_e" from 0 to ((count _houses) - 1) do {
			private _house = _houses select _e;
			private _hmark = createmarker [ format[_areahome, _i, _e], _house ];
			_hmark setmarkershape "icon";
			_hmark setmarkertype "mil_destroy";
			_hmark setmarkercolor "colorred";
			_hmark setmarkersize [0.35, 0.35];
			_hmark setmarkeralpha 0.45;
		};
		*/

		private _marker = createmarker [ format[_nodename, _i], _nn];
		_marker setmarkershape "icon";
		_marker setmarkertype "loc_Hospital";
		_marker setmarkertext format["%1", name (_node select 0)];
		_marker setmarkercolor "colorwhite";

	};
};