params ["_unit"];	//Så kan det gå om inte haspen är på
if (isPlayer _unit && hasInterface) then {
	addCamShake [20, 1, 5]; // Shakes the camera for 1 second
	//playSound _någotRoligtLjud; To be determined
	_funnyText = selectRandom [
		"You feel a boot connect with the back of your head!",
		"The vehicle commander has decided to kick the back of your head!",
		"Boot to the back of the head? The commander has opinions about your driving.",
		"Did the vehicle commander just kick the back of your head? You bet.",
		"You were chastised by your vehicle commander!"
	];
	//"normal" cutText [""<t color='#ff0000' font='PuristaBold' size='2'>_funnyText</t>"", "PLAIN", 0.25, true, true];
	[_unit, (0.05 + random 0.075), "head", "punch", (commander vehicle _unit)] call ace_medical_fnc_addDamageToUnit;
	hintSilent _funnyText;
};