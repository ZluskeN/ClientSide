["ZSN_WeaponsDrop",			"LIST",		["Units Drop Weapons","Sets whether units will drop their weapon when they go unconscious"],["ZluskeN ACE Settings"],[["true","AI","false"],["Yes","Only AI","No"],0],nil,{params ["_value"]; ZSN_WeaponsDrop = _value;}] call CBA_fnc_addSetting;
["ZSN_UnconsciousAction","LIST",["Unconscious Action","What to do when Unconscious Timer runs out"],"ZluskeN ACE Settings",[["Nothing","Spectator","Respawn"],["Nothing","Spectator","Respawn"], 0],nil,{params ["_value"]; ZSN_UnconsciousAction = _value;}] call CBA_fnc_addSetting;
["ZSN_UnconsciousTimer",	"SLIDER",	["Unconscious Timer","Time spent Unconscious before Unconscious Action happens (0 to disable) (ACE)"],		"ZluskeN ACE Settings",[0,600,0,0],		nil,{params ["_value"]; ZSN_UnconsciousTimer = _value;},true] call CBA_fnc_addSetting;
["ZSN_Wildfire",			"SLIDER",	["Cookoffs start Forest fires","ACE Cookoff events can start forest fires (Wildfire)"],						"ZluskeN ACE Settings",[0,1,0,1,true],	nil,{params ["_value"]; ZSN_Wildfire = _value;},true] call CBA_fnc_addSetting;
["ZSN_GrenadeTrack",		"CHECKBOX",	["Allow Planting of Grenades in Tank Tracks","Hand Grenades can be used to detrack enemy tanks (ACE)"],		"ZluskeN ACE Settings",True,			nil,{params ["_value"]; ZSN_GrenadeTrack = _value;},true] call CBA_fnc_addSetting;
["ZSN_MedicFacility",		"CHECKBOX",	["Medics are facilities","Medics get configured as medical facilities (ACE)"],								"ZluskeN ACE Settings",False,			nil,{params ["_value"]; ZSN_MedicFacility = _value;},true] call CBA_fnc_addSetting;
["ZSN_MedicalItems",		"CHECKBOX",	["More medical items","Units get issued more medical gear (ACE)"],											"ZluskeN ACE Settings",True,			nil,{params ["_value"]; ZSN_MedicalItems = _value;},true] call CBA_fnc_addSetting;
