
params["_logic"];
private _diag = createdialog "graph_import";
waitUntil{!dialog};
private _raw = ctrltext 1000;
private _sqf = compile _raw;
systemchat _raw;
[_sqf] call aa_import_graph;
deletevehicle _logic;
