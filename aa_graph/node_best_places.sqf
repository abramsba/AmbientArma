
// Deep forest: "(10 + trees) * (1 - forest) * (1 - sea) * (1 - houses)"
// Hills no trees: (100 + forest) * (1 - trees) * (1 - sea) * (1 - houses)"
// Houses: (100 + houses) * (1 - sea)
// Forest Edge: (10 + trees) * (1 - forest) * (1 - sea) * (100 - houses)

aa_node_best_places = {
	params["_node", "_expression", ["_max", 1], ["_precision", 25]];
	private _trigger = [_node] call aa_node_get_trigger;
	private _radius = (triggerarea _trigger) select 0;
	private _output = [];
	private _results = selectbestplaces [getpos _trigger, _radius, _expression, _precision, _max];
	{
		_x params ["_pos", "_expr"];
		_output pushback _pos;
	} foreach _results;
	_output
};
