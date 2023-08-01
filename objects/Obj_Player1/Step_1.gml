/// @description Init controls

if(!isCPU){
	right_check = keyboard_check(global.P1_right) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0.5;
	left_check = keyboard_check(global.P1_left) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < -0.5;
	down_check = keyboard_check(global.P1_down) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0.5;
	up_check = keyboard_check(global.P1_up) || gamepad_button_check(0, gp_face1);
	up_pressed = keyboard_check_pressed(global.P1_up) || gamepad_button_check_pressed(0, gp_face1);

	attack_check = keyboard_check(global.P1_attack) || gamepad_button_check(0, gp_face3);
	ability_check = keyboard_check(global.P1_ability) || gamepad_button_check(0, gp_face2);
}
