["ZSN_MedicItems",			"EDITBOX",	["Top Up Medic Items","Ensure medics have these items at mission start"],									["ZluskeN Utilities Settings","Gear Settings"],'[["ACE_tourniquet", 4],["ACE_morphine", 5],["ACE_bloodIV", 7],["ACE_epinephrine", 7],["ACE_splint", 5],["ACE_surgicalKit", 1],["ACE_adenosine", 3],["ACE_elasticBandage", 26]]',nil,{params ["_value"];  if (typeName _value == "STRING") then {ZSN_MedicItems = call compile _value} else {ZSN_MedicItems = _value}},true] call CBA_fnc_addSetting;
["ZSN_UnitItems",			"EDITBOX",	["Top Up Unit Items","Ensure units have these items at mission start"],										["ZluskeN Utilities Settings","Gear Settings"],'[["ACE_packingBandage",7],["ACE_tourniquet",2],["ACE_morphine",1],["ACE_splint",1]]',nil,{params ["_value"];  if (typeName _value == "STRING") then {ZSN_UnitItems = call compile _value} else {ZSN_UnitItems = _value}},true] call CBA_fnc_addSetting;
["ZSN_ShowGPS",				"CHECKBOX",	["Show position on map","Players position will be shown on map if GPS is equipped"],						["ZluskeN Utilities Settings","Gear Settings"],True,	nil,{params ["_value"]; ZSN_ShowGPS = _value;},false] call CBA_fnc_addSetting;
["ZSN_RemoveMaps",			"CHECKBOX",	["Remove ItemMap","Remove maps for non-squad leaders with Private rank"],									["ZluskeN Utilities Settings","Gear Settings"],False,	nil,{params ["_value"]; ZSN_RemoveMaps = _value;},true] call CBA_fnc_addSetting;
["ZSN_WestStacheChance",	"SLIDER",	["Moustache Probability (BLUFOR)","Percentage of BLUFOR units that will start with a Cold War Moustache"],	["ZluskeN Utilities Settings","Gear Settings"],[0,1,0,2,true],nil,{params ["_value"]; ZSN_WestStacheChance = _value;},false] call CBA_fnc_addSetting;
["ZSN_EastStacheChance",	"SLIDER",	["Moustache Probability (OPFOR)","Percentage of OPFOR units that will start with a Cold War Moustache"],	["ZluskeN Utilities Settings","Gear Settings"],[0,1,0,2,true],nil,{params ["_value"]; ZSN_EastStacheChance = _value;},false] call CBA_fnc_addSetting;
["ZSN_GuerStacheChance",	"SLIDER",	["Moustache Probability (INDEP)","Percentage of INDEP units that will start with a Cold War Moustache"],	["ZluskeN Utilities Settings","Gear Settings"],[0,1,0,2,true],nil,{params ["_value"]; ZSN_GuerStacheChance = _value;},false] call CBA_fnc_addSetting;
["ZSN_CivStacheChance",		"SLIDER",	["Moustache Probability (CIV)","Percentage of Civilian units that will start with a Cold War Moustache"],	["ZluskeN Utilities Settings","Gear Settings"],[0,1,0,2,true],nil,{params ["_value"]; ZSN_CivStacheChance = _value;},false] call CBA_fnc_addSetting;
["ZSN_Staches",				"EDITBOX",	["Moustache List","List of Moustache Classnames (Can be used to add different facewear)"],					["ZluskeN Utilities Settings","Gear Settings"],'["SP_Moustache","SP_Moustache_Blonde","SP_Moustache_Brown","SP_Moustache_Ginger","SP_Moustache_White"]',nil,{params ["_value"]; if (typeName _value == "STRING") then {ZSN_Staches = call compile _value} else {ZSN_Staches = _value}},false] call CBA_fnc_addSetting;
["ZSN_MedicFacility",		"CHECKBOX",	["Medics are Facilities","Medics get configured as medical facilities (ACE)"],								["ZluskeN Utilities Settings","Gameplay Settings"],True,	nil,{params ["_value"]; ZSN_MedicFacility = _value;},true] call CBA_fnc_addSetting;
["ZSN_Wildfire",			"CHECKBOX",	["Cookoffs Start Forest Fires","ACE Cookoff events can start forest fires (ACE Weather + Wildfire)"],		["ZluskeN Utilities Settings","Gameplay Settings"],False,	nil,{params ["_value"]; ZSN_Wildfire = _value;},false] call CBA_fnc_addSetting;
["ZSN_Deadmarkers",			"CHECKBOX",	["Create Markers On Dead Units","Places a marker on all killed units"],										["ZluskeN Utilities Settings","Gameplay Settings"],False,	nil,{params ["_value"]; ZSN_Deadmarkers = _value;},false] call CBA_fnc_addSetting;
["ZSN_DisableTI",			"LIST",		["Allow Thermal Imagers","Allow Thermal Imagers and Night Vision on vehicles"],								["ZluskeN Utilities Settings","Gameplay Settings"],[["ON","NIGHT","OFF"],["Allowed","Only At Night","Not Allowed"], 1],nil,{params ["_value"]; ZSN_DisableTI = _value; [] spawn zsn_fnc_disableNVG},false] call CBA_fnc_addSetting;
["ZSN_Fuelmultiplier",		"SLIDER",	["Fuel Multiplier","Reduce the capacities of fueltanks to create a need for refueling more often"],			["ZluskeN Utilities Settings","Gameplay Settings"],[0.01,1,1,2,true],nil,{params ["_value"]; ZSN_Fuelmultiplier = _value;},false] call CBA_fnc_addSetting;
["ZSN_AloneWarning",		"SLIDER",	["Warn Players When Isolated","Slider determines distance in meters before warning appears"],				["ZluskeN Utilities Settings","Gameplay Settings"],[0,500,0,0],	nil,{params ["_value"]; ZSN_AloneWarning = _value;},false] call CBA_fnc_addSetting;
["ZSN_Armorshake",			"CHECKBOX",	["Camerashake when tracked armor is close","Scales with weight, numbers and distance"],						["ZluskeN Utilities Settings","Gameplay Settings"],True,	nil,{params ["_value"]; ZSN_Armorshake = _value;},false] call CBA_fnc_addSetting;
["ZSN_Jukebox",				"CHECKBOX",	["Jukebox","Dynamic ambient Music"],																		["ZluskeN Utilities Settings","Gameplay Settings"],False,	nil,{params ["_value"]; ZSN_Jukebox = _value; if (ZSN_Jukebox) then {["initialize"] call BIS_fnc_jukebox} else {if (["isInitialized"] call BIS_fnc_jukebox) then {["terminate"] call BIS_fnc_jukebox}}},false] call CBA_fnc_addSetting;
["ZSN_Unitpos",				"CHECKBOX",	["AI Default Unit Pos 'Stand up'","Set default unitposweak to 'UP' for AI"],								["ZluskeN Utilities Settings","Gameplay Settings"],True,	nil,{params ["_value"]; ZSN_Unitpos = _value;},false] call CBA_fnc_addSetting;
["ZSN_CombatMode",			"LIST",		["Set AI Combat Mode","Set default combat mode for AI"],													["ZluskeN Utilities Settings","Gameplay Settings"],[["","GREEN","WHITE","YELLOW","RED"],["Unchanged","Hold fire, keep formation","Hold fire, engage at will","Fire at will, keep formation","Fire at will, engage at will"], 0],nil,{params ["_value"]; ZSN_CombatMode = _value;},false] call CBA_fnc_addSetting;
