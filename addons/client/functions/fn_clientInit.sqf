params ["_unit"];

if (isClass(configFile >> "CfgPatches" >> "ace_medical_engine")) then {
	if (ZSN_MedicFacility && [_unit] call ace_common_fnc_isMedic) then {_unit setVariable ["ace_medical_isMedicalFacility", true, true]};
	if (ZSN_MedicalItems) then {_unit call zsn_fnc_medicalItems};
};

if (isClass(configFile >> "CfgPatches" >> "dzn_MG_Tripod") && ZSN_AddTripod) then {_unit call zsn_fnc_addtripod};

if (leader _unit != _unit) then {
	_unit setUnitCombatMode ZSN_CombatMode;
	if (isClass(configFile >> "CfgPatches" >> "grad_trenches_main") && ZSN_AddShovel) then { 
		if (!("ACE_EntrenchingTool" in items _unit)) then {_unit addItem "ACE_EntrenchingTool"};
	};
	if (isClass(configFile >> "CfgPatches" >> "RR_mapStuff") && ZSN_RemoveMaps) then {
		if (!(isPlayer _unit)) then {
			_unit unlinkItem "itemMap";
		} else {
			ZSN_missionstart = true;
			addMissionEventHandler ["PreloadFinished", {if (ZSN_missionstart) then {player unlinkItem "itemMap"; ZSN_missionstart = false;}}];
		};
	};
};

if (isPlayer _unit && hasinterface) then {

	_unit spawn zsn_fnc_armorshake;

	zsn_startammo = _unit call zsn_fnc_playerammo; 

	_unit spawn zsn_fnc_ammoloop;

	if (ZSN_Clearweapon) then {_unit call zsn_fnc_clearweapon};

	if (isClass(configFile >> "CfgPatches" >> "AGC") && ZSN_AGCPlayers) then {removeFromRemainsCollector [_unit]};

} else {

	_unit setUnitPosWeak ZSN_Unitpos;

	if (isClass(configFile >> "CfgPatches" >> "gm_core_animations")) then {
		_unit setvariable ["zsn_gunloopinit", false];
		[_unit] spawn zsn_fnc_mgstance;
	};

	if (isClass(configFile >> "CfgPatches" >> "ace_weaponselect")) then {
		if (currentWeapon _unit == handGunWeapon _unit) then {
			_unit spawn {
				params ["_unit","_time"];
				_time = random 3;
				while {alive _unit} do {
					if (currentWeapon _unit == handGunWeapon _unit) then {
						if ((behaviour _unit == "SAFE") OR (behaviour _unit == "CARELESS")) then {
							[_unit] call ace_weaponselect_fnc_putWeaponAway;
							waituntil {sleep _time; ((behaviour _unit != "CARELESS") && (behaviour _unit != "SAFE"));};
							_unit selectWeapon handgunWeapon _unit;
						};
					};
					sleep _time;
				};
			};
		};
	};
};