["ZSN_CombatMode","LIST",["Set AI Combat Mode","Set default combat mode for AI"],"ZluskeN Settings",[["","GREEN","WHITE","YELLOW","RED"],["Unchanged","Hold fire, keep formation","Hold fire, engage at will","Fire at will, keep formation","Fire at will, engage at will"], 2],nil,{params ["_value"]; ZSN_CombatMode = _value;}] call CBA_fnc_addSetting;
["ZSN_DisableTI",			"CHECKBOX",	["Disable Thermals","Disable Thermal Imaging on all vehicles"],												"ZluskeN Settings",True,										nil,{params ["_value"]; ZSN_DisableTI = _value; {_x disableTIEquipment _value} foreach vehicles;}] call CBA_fnc_addSetting;
["ZSN_Jukebox",				"CHECKBOX",	["Jukebox","Ambient Music"],																				"ZluskeN Settings",True,										nil,{params ["_value"]; ZSN_Jukebox = _value; if (ZSN_Jukebox) then {["initialize"] call BIS_fnc_jukebox} else {["terminate"] call BIS_fnc_jukebox}}] call CBA_fnc_addSetting;
["ZSN_Clearweapon",			"CHECKBOX",	["Clear Primary Weapon","Player starts with cleared primary weapon"],										"ZluskeN Settings",True,										nil,{params ["_value"]; ZSN_Clearweapon = _value;},true] call CBA_fnc_addSetting;
["ZSN_Autoswitch",			"CHECKBOX",	["Auto switch to handgun","Switch to handgun automatically when primary weapon runs out of ammo in combat"],"ZluskeN Settings",True,										nil,{params ["_value"]; ZSN_AutoSwitch = _value;}] call CBA_fnc_addSetting;
["ZSN_Armorshake",			"CHECKBOX",	["Shake camera when armor is close","Shake camera when armor is close"],									"ZluskeN Settings",True,										nil,{params ["_value"]; ZSN_Armorshake = _value;}] call CBA_fnc_addSetting;

["ZSN_AllowRandomWeapon",	"CHECKBOX",	["Allow Random Weapon","Allow players to give themselves a random weapon"],									["ZluskeN Settings","'Cheat' Settings"],False,					nil,{params ["_value"]; ZSN_AllowRandomWeapon = _value;}] call CBA_fnc_addSetting;
["ZSN_AllowArsenal",		"CHECKBOX",	["Allow Arsenal","Allow players to create faction Arsenal"],												["ZluskeN Settings","'Cheat' Settings"],False,					nil,{params ["_value"]; ZSN_AllowArsenal = _value;}] call CBA_fnc_addSetting;
["ZSN_VanillaArsenal",		"CHECKBOX",	["Use Vanilla Arsenal","Use Defaul Arsenal Even if ACE is in use"],											["ZluskeN Settings","'Cheat' Settings"],False,					nil,{params ["_value"]; ZSN_VanillaArsenal = _value;},true] call CBA_fnc_addSetting;

["ZSN_SpectatorTimer",		"SLIDER",	["Spectator timer","Time spent (ACE) Unconscious before being placed in spectator mode (0 to disable)"],	["ZluskeN Settings","Third Party Addon Settings"],[0,600,30,0],	nil,{params ["_value"]; ZSN_SpectatorTimer = _value;}] call CBA_fnc_addSetting;
["ZSN_MGstanceThreshold",	"SLIDER",	["Weapon Inertia Threshold","Weapons with inertia above a certain value can be carried low (GM Required)"],	["ZluskeN Settings","Third Party Addon Settings"],[0,2,0.8,1],	nil,{params ["_value"]; ZSN_MGstanceThreshold = _value;}] call CBA_fnc_addSetting;
["ZSN_AddTripod",			"CHECKBOX",	["Give tripods to Machine Gunners","Heavy Machine Gunners will be given tripods (DZN Tripods Required)"],	["ZluskeN Settings","Third Party Addon Settings"],True,			nil,{params ["_value"]; ZSN_AddTripod = _value;},true] call CBA_fnc_addSetting;
["ZSN_AddShovel",			"CHECKBOX",	["Add Entrenching Tools","Soldiers start with Entrenching Tools (GRAD Trenches Required)"],					["ZluskeN Settings","Third Party Addon Settings"],True,			nil,{params ["_value"]; ZSN_AddShovel = _value;},true] call CBA_fnc_addSetting;
["ZSN_RemoveMaps",			"CHECKBOX",	["Remove ItemMap","Only squad leaders get maps (RR Immersive Maps Required)"],								["ZluskeN Settings","Third Party Addon Settings"],True,			nil,{params ["_value"]; ZSN_RemoveMaps = _value;},true] call CBA_fnc_addSetting;