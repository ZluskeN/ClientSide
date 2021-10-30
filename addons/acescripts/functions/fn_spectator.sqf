if (hasinterface) then {
	params ["_delay","_mytime"];
	sleep random 3;
	_delay = ZSN_SpectatorTimer;
	_mytime = time + _delay;
	if (_delay > 0) then {
		waituntil {lifestate player != "INCAPACITATED" OR time >= _mytime};
		if (lifestate player == "INCAPACITATED") then {
			titleText ["", "BLACK OUT"];
			["Initialize",[player, [playerside], false, false, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
			titleText ["", "BLACK IN"];
			waituntil {lifestate player != "INCAPACITATED"};
			titleText ["", "BLACK OUT"];
			["Terminate"] call BIS_fnc_EGSpectator;
			titleText ["", "BLACK IN"];
		};
	};
};