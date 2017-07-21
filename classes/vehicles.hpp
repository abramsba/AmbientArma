
class cfgvehicles {

	// Base classes
	class logic;
	class module_f: logic {
		class attributesbase {
			class default;
			class edit;
			class combo;
			class checkbox;
			class checkboxnumber;
			class moduledescription;
			class units;
		};
		class moduledescription {
			class anyplayer;
			class anyarain;
			class emptydetector;
		};
	};

	// Node location game logic
	class locationbase_f : logic {};
	class locationarea_f : locationbase_f {};
	class location_aanode : locationarea_f {
		author = "_bryan";
		displayname = "AmbientArma Node";
		icon = "x\ambientarma\images\node.paa";
	};

	// Team game logic
	class ambientarma_teamnode : logic {
		vehicleclass = "SystemSides";
		displayname = "AmbientArma Team";
		icon = "x\ambientarma\images\team.paa";
	};

	// Mission & Zeus Modules
	class ambientarma_module_base : module_f {
		mapSize = 1;
		author = "_bryan";
		vehicleClass = "Modules";
		category = "ambientarma_category";
		side = 7;
		scope = 1;
		scopeCurator = 2;
		displayName = "AA Module Base";
		function = "";
		functionPriority = 1;
		isGlobal = 1;
		isTriggerActivated = 0;
		isDisposable = 0;
		curatorCanAttach = 1;

		icon = "x\ambientarma\images\icon.paa";
		class moduledescription: moduledescription {
			description = "AA Base Module";
		};
	};

	class ambientarma_module_graph_base : ambientarma_module_base  {
		subcategory = "Graph";
		icon = "x\ambientarma\images\node.paa";
	};

	class ambientarma_module_graph_debug : ambientarma_module_graph_base {
		displayname = "Graph: Debug";
		function = "ambientarma_fnc_graph_debug";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_graph_import : ambientarma_module_graph_base {
		displayname = "Graph: Import";
		function = "ambientarma_fnc_graph_import";
		scope = 2;
		scopeCurator = 2;
		class attributes : attributesbase {
			class input : edit {
				displayname = "Graph Array";
				tooltip = "Exported Array graph";
				defaultValue = "[]";
			};

		};
	};




	class ambientarma_module_group_base : ambientarma_module_base  {
		subcategory = "Group";
		icon = "x\ambientarma\images\team.paa";
	};

	class ambientarma_module_group_wander : ambientarma_module_group_base {
		displayname = "Group: Wander";
		function = "ambientarma_fnc_group_wander";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_group_clear : ambientarma_module_group_base {
		displayname = "Group: Clear";
		function = "ambientarma_fnc_group_clear";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_group_regroup : ambientarma_module_group_base {
		displayname = "Group: Regroup";
		function = "ambientarma_fnc_group_regroup";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_group_move : ambientarma_module_group_base {
		displayname = "Group: Move";
		function = "ambientarma_fnc_group_move";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_group_flank : ambientarma_module_group_base {
		displayname = "Group: Flank";
		function = "ambientarma_fnc_group_flank";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_group_occupy : ambientarma_module_group_base {
		displayname = "Group: Occupy";
		function = "ambientarma_fnc_group_occupy";
		scope = 2;
		scopeCurator = 2;
	};




	class ambientarma_module_team_base : ambientarma_module_base {
		subcategory = "Team";
		icon = "x\ambientarma\images\team.paa";
	};

	class ambientarma_module_team_wander : ambientarma_module_team_base {
		displayname = "Team: Wander";
		function = "ambientarma_fnc_team_wander";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_team_clear : ambientarma_module_team_base {
		displayname = "Team: Clear";
		function = "ambientarma_fnc_team_clear";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_team_regroup : ambientarma_module_team_base {
		displayname = "Team: Regroup";
		function = "ambientarma_fnc_team_regroup";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_team_move : ambientarma_module_team_base {
		displayname = "Team: Move";
		function = "ambientarma_fnc_team_move";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_team_flank : ambientarma_module_team_base {
		displayname = "Team: Flank";
		function = "ambientarma_fnc_team_flank";
		scope = 2;
		scopeCurator = 2;
	};

	class ambientarma_module_team_occupy : ambientarma_module_team_base {
		displayname = "Team: Occupy";
		function = "ambientarma_fnc_team_occupy";
		scope = 2;
		scopeCurator = 2;
	};

};