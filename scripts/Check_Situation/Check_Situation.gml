/// @param Controller
function Check_Situation(argument0) {

	controller = argument0;

	if(global.P1_wins >= 3 || global.P2_wins >= 3){
		controller.alarm[0] = 60;
		controller.alarm[10] = 360;
	}
	else{
		controller.alarm[11] = 120;
	}


}
