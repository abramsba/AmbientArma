
aa_ai_group_alive = {
	params["_group"];
	private _alive = false;
	{
		if(alive _x) exitwith { _alive = true; };
	} foreach (units _group);
	_alive
};