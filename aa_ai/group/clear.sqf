
aa_ai_group_clear = {
	params[
		"_group"
	];
	while {(count (waypoints _group)) > 0} do {
		deleteWaypoint ((waypoints _group) select 0);
	};
	(units _group) dofollow (leader _group);
};