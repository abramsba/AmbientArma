
aa_node_get_random_houses = {
	params[
		"_node", 
		["_count", 1]
	];
	private _houses = [_node] call aa_node_get_houses;
	private _output = [];
	for "_i" from 0 to (_count - 1) do {
		_house = selectrandom _houses;
		_output pushback _house;
	};
	_output
};