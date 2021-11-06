["ZSN_CombatMode","LIST",["Set AI Combat Mode","Set default combat mode for AI"],"ZluskeN Server Settings",[["","GREEN","WHITE","YELLOW","RED"],["Unchanged","Hold fire, keep formation","Hold fire, engage at will","Fire at will, keep formation","Fire at will, engage at will"], 2],nil,{params ["_value"]; ZSN_CombatMode = _value;}] call CBA_fnc_addSetting;
["ZSN_Unitpos","LIST",["Set AI Unit Position","Set default unit position AI"],"ZluskeN Server Settings",[["","DOWN","UP","MIDDLE","AUTO"],["Unchanged","Prone","Stand Up","Keep Low","Follow Leader"], 2],			nil,{params ["_value"]; ZSN_Unitpos = _value;}] call CBA_fnc_addSetting;

["ZSN_DisableTI",			"CHECKBOX",	["Disable Thermals","Disable Thermal Imaging and Night Vision on all vehicles during daytime"],		"ZluskeN Server Settings",True,											nil,{params ["_value"]; ZSN_DisableTI = _value; [] spawn zsn_fnc_disableNVG},true] call CBA_fnc_addSetting;
["ZSN_AddTripod",			"CHECKBOX",	["Give tripods to Machine Gunners","Heavy Machine Gunners will be given tripods (DZN Tripods)"],	["ZluskeN Server Settings","Third Party Addon Settings"],True,			nil,{params ["_value"]; ZSN_AddTripod = _value;},true] call CBA_fnc_addSetting;
["ZSN_AddShovel",			"CHECKBOX",	["Add Entrenching Tools","Soldiers start with Entrenching Tools (GRAD Trenches)"],					["ZluskeN Server Settings","Third Party Addon Settings"],True,			nil,{params ["_value"]; ZSN_AddShovel = _value;},true] call CBA_fnc_addSetting;
["ZSN_RemoveMaps",			"CHECKBOX",	["Remove ItemMap","Only squad leaders get maps (RR Immersive Maps)"],								["ZluskeN Server Settings","Third Party Addon Settings"],True,			nil,{params ["_value"]; ZSN_RemoveMaps = _value;},true] call CBA_fnc_addSetting;

["ZSN_Wildfire",			"SLIDER",	["Cookoffs start Forest fires","ACE Cookoff events can start forest fires (Wildfire)"],				["ZluskeN Server Settings","Third Party Addon Settings"],[0,1,1,1,true],nil,{params ["_value"]; ZSN_Wildfire = _value;},true] call CBA_fnc_addSetting;
["ZSN_MGstanceThreshold",	"SLIDER",	["Weapon Inertia Threshold","Weapons with inertia above this value can be carried low (GM)"],		["ZluskeN Server Settings","Third Party Addon Settings"],[0,2,0.9,1],	nil,{params ["_value"]; ZSN_MGstanceThreshold = _value;},true] call CBA_fnc_addSetting;

//["ZSN_AGCPlayers",		"CHECKBOX",	["AGC for players","Advanced Garbage Collector now works with players' corpses (AGC)"],				["ZluskeN Server Settings","Third Party Addon Settings"],False,			nil,{params ["_value"]; ZSN_AGCPlayers = _value;},true] call CBA_fnc_addSetting;