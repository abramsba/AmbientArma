
aa_ai_group_ready = {
	params["_group"];
	private _wp = waypoints _group;
	if(count _wp == 0) exitwith { true };
	private _cwp = currentwaypoint _group;
	private _isat = (count _wp == _cwp);
	([_group] call aa_ai_group_alive) and (unitReady (vehicle (leader _group))) and (_isat)	
};

