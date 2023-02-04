["ZSN_Clearweapon",			"CHECKBOX",	["Clear Primary Weapon","Player starts with cleared primary weapon"],										"ZluskeN Client Settings",True,							nil,{params ["_value"]; ZSN_Clearweapon = _value;},true] call CBA_fnc_addSetting;
["ZSN_Autoswitch",			"CHECKBOX",	["Auto switch to handgun","Switch to handgun automatically when primary weapon runs out of ammo in combat"],"ZluskeN Client Settings",True,							nil,{params ["_value"]; ZSN_AutoSwitch = _value;},true] call CBA_fnc_addSetting;
["ZSN_Chamberedgun",		"CHECKBOX",	["Simulate chambered round","Simulate chambered rounds for closed-bolt weapons"],							"ZluskeN Client Settings",True,							nil,{params ["_value"]; ZSN_Chamberedgun = _value;},true] call CBA_fnc_addSetting;
["ZSN_AutoRearm",			"CHECKBOX",	["Automatic Rearm","Player will automatically pick up compatible magazines for their primary weapon"],		"ZluskeN Client Settings",True,							nil,{params ["_value"]; ZSN_AutoRearm = _value;},true] call CBA_fnc_addSetting;
["ZSN_Blockmags",			"CHECKBOX",	["Hide Magazines for other sides","Disable picking up magazines belonging to different side"],				"ZluskeN Client Settings",True,							nil,{params ["_value"]; ZSN_Blockmags = _value;},true] call CBA_fnc_addSetting;

["ZSN_ShowGPS",				"CHECKBOX",	["Show position on map","Players position will be shown on map if GPS is equipped"],						"ZluskeN Client Settings",True,							nil,{params ["_value"]; ZSN_ShowGPS = _value;},true] call CBA_fnc_addSetting;
["ZSN_AloneWarning",		"SLIDER",	["Warns Players When Isolated","Slider determines distance in meters before warning appears"],				"ZluskeN Client Settings",[0,500,0,0],					nil,{params ["_value"]; ZSN_AloneWarning = _value;},true] call CBA_fnc_addSetting;

["ZSN_Jukebox",				"CHECKBOX",	["Jukebox","Dynamic ambient Music"],																		"ZluskeN Client Settings",False,						nil,{params ["_value"]; ZSN_Jukebox = _value; if (ZSN_Jukebox) then {["initialize"] call BIS_fnc_jukebox} else {if (["isInitialized"] call BIS_fnc_jukebox) then {["terminate"] call BIS_fnc_jukebox}}}] call CBA_fnc_addSetting;
["ZSN_Armorshake",			"CHECKBOX",	["Camerashake when tracked armor is close","Scales with weight, numbers and distance"],						"ZluskeN Client Settings",True,							nil,{params ["_value"]; ZSN_Armorshake = _value;},true] call CBA_fnc_addSetting;

["ZSN_AllowRandomWeapon",	"CHECKBOX",	["Allow Random Weapon","Allow players to give themselves a random weapon"],									["ZluskeN Client Settings","'Cheat' Settings"],False,	nil,{params ["_value"]; ZSN_AllowRandomWeapon = _value;}] call CBA_fnc_addSetting;
["ZSN_AllowArsenal",		"CHECKBOX",	["Allow Arsenal","Allow players to create faction Arsenal"],												["ZluskeN Client Settings","'Cheat' Settings"],False,	nil,{params ["_value"]; ZSN_AllowArsenal = _value;}] call CBA_fnc_addSetting;