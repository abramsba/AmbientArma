
class cfgpatches {
	class ambientarma {
		units[] = {
		};
		weapons[] = {

		};
		requiredversion = 1.72;
		requiredaddons[] = { "A3_Modules_F" };
		author = "_bryan";
		authorurl = "";
	};
};

class ambientarma_preinit_eventhandlers {
	class ambientarma {
		init = "[] call preprocessfilelinenumbers 'x\ambientarma\init.sqf'";
	};
};

class cfgfactionclasses {
	class no_category;
	class ambientarma_category : no_category {
		displayname = "Ambient Arma";
	};
};

#include "classes\vehicles.hpp"
#include "classes\functions.hpp"

#include "dialogs\ui.hpp"
#include "dialogs\graph_import.hpp"