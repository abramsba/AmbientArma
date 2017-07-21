
class graph_import {
	idd = 1000;
	movingenabled = false;
	class controls {
		class label: RscText
		{
			idc = 1000;
			text = "Input"; //--- ToDo: Localize;
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
		};
		class input: RscEdit
		{
			idc = 1400;
			text = "[]"; //--- ToDo: Localize;
			x = 6 * GUI_GRID_W + GUI_GRID_X;
			y = 6 * GUI_GRID_H + GUI_GRID_Y;
			w = 33 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.6};
		};
		class button: RscButton
		{
			idc = 1600;
			text = "Import"; //--- ToDo: Localize;
			action = "closeDialog 1";
			x = 1 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 38 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0,0,1};
		};
	};
};
