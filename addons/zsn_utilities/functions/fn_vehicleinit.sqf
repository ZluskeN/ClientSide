params ["_vehicle"];

[{
    params ["_args"];
    _args params ["_vehicle", "_lastRun"];
    private _delta = cba_missionTime - _lastRun;
    private _force = [0, 0, getMass _vehicle * _delta * (9.8 - ZSN_G)];
	if (ZSN_G != 9.8) then {
		_vehicle addForce [_force, getCenterOfMass _vehicle];
	}
	_args set [1, cba_missionTime];
}, 0, [_vehicle, cba_missionTime]] call CBA_fnc_addPerFrameHandler;

_vehicle setvariable ["zsn_mass", getmass _vehicle];
{
	_mass = _vehicle getvariable "zsn_mass";
	_vehicle setvariable ["zsn_mass", _mass + 100];
} foreach crew _vehicle;

_vehicle addEventHandler ["GetIn", { 
	params ["_vehicle", "_role", "_unit", "_turret"]; 
	_massvehicle = _vehicle getvariable "zsn_mass";
	_newmass = _massvehicle + 100;
	_vehicle setvariable ["zsn_mass", _newmass];
}];

_vehicle addEventHandler ["GetOut", { 
	params ["_vehicle", "_role", "_unit", "_turret"]; 
	_massvehicle = _vehicle getvariable "zsn_mass";
	_newmass = _massvehicle - 100;
	_vehicle setvariable ["zsn_mass", _newmass];
}];

_vehicle spawn {
	params ["_vehicle"];
	while {alive _vehicle} do {
		_mass = _vehicle getvariable "zsn_mass";
		if (ZSN_AdjustMass && getmass _vehicle != _mass) then {
			isNil {["ace_common_setMass", [_vehicle, _mass]] call CBA_fnc_globalEvent};
		};
		sleep 1;
	};
};

_vehicle setfuel (fuel _vehicle * ZSN_Fuelmultiplier);
_vehicle spawn {
	params ["_vehicle"];
	while {alive _vehicle} do {
		_currentfuel = fuel _vehicle;
		if (_currentfuel > ZSN_Fuelmultiplier) then {
			_vehicle setfuel ZSN_Fuelmultiplier;
		};
		sleep 10;
	};
};
