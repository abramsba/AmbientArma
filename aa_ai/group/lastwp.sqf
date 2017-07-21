
aa_ai_group_lastwp = {
	params["_group"];
	private _wps = waypoints _group;
	if(count _wps == 0) exitwith { 
		(getpos _group) 
	};
	private _wp = (_wps select (count _wps - 1));
	private _wp_pos = waypointposition _wp;
	[
		_wp_pos select 0,
		_wp_pos select 1,
		0
	]
};