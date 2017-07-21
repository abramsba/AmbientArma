
aa_nodes_connected = {
	params["_a", "_b"];
	private _path = [_a, _b] call aa_find_path;	
	private _found = false;
	if(!isnil "_path") then {
		_found = true;
	};
	_found
};