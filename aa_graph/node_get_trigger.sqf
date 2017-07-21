
aa_node_get_trigger = {
	params["_node"];
	private _synced = synchronizedobjects _node;
	private _trigger = nil;
	{
		private _type = typeof _x;
		if(_type isequalto AA_LOC_DETC) exitwith {
			_trigger = _x;
		};
	} foreach _synced;
	_trigger
};