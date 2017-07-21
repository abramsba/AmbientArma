
aa_node_get_children = {
	params[
		"_node",
		["_types", [AA_LOC_NODE]]
	];
	private _synced = synchronizedobjects _node;	
	private _output = [];
	{
		private _type = typeof _x;
		if(_type in _types) then {
			_output pushback _x;
		};
	} foreach _synced;
	_output
};
