
aa_import_graph = {
	params["_export"];
	{
		_x params ["_name", "_npos", "_tpos", "_radius", "_links", "_type"];
		_node = [_name, _npos, _tpos, _radius, _type] call aa_create_node;
	} foreach _export; 
	{
		_x params ["_name", "_npos", "_tpos", "_radius", "_links"];
		private _objs = [];
		{
			_objs pushback (missionnamespace getvariable _x);
		} foreach _links;
		[(missionnamespace getvariable _name), _objs] call aa_link_nodes;
	} foreach _export;
};