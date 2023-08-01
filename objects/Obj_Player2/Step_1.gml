/// @description Init controls

if(!isCPU){
	right_check = keyboard_check(global.P2_right) || gamepad_button_check(1, gp_padr) || gamepad_axis_value(1, gp_axislh) > 0.5;
	left_check = keyboard_check(global.P2_left) || gamepad_button_check(1, gp_padl) || gamepad_axis_value(1, gp_axislh) < -0.5;
	down_check = keyboard_check(global.P2_down) || gamepad_button_check(1, gp_padd) || gamepad_axis_value(1, gp_axislv) > 0.5;
	up_check = keyboard_check(global.P2_up) || gamepad_button_check(1, gp_face1);
	up_pressed = keyboard_check_pressed(global.P2_up) || gamepad_button_check_pressed(1, gp_face1);

	attack_check = keyboard_check(global.P2_attack) || gamepad_button_check(1, gp_face3);
	ability_check = keyboard_check(global.P2_ability) || gamepad_button_check(1, gp_face2);
}
