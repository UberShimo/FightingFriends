/// @description Init controls

right_pressed = keyboard_check_pressed(global.P2_right) || gamepad_button_check_pressed(1, gp_padr);
left_pressed = keyboard_check_pressed(global.P2_left) || gamepad_button_check_pressed(1, gp_padl);
down_pressed = keyboard_check_pressed(global.P2_down) || gamepad_button_check_pressed(1, gp_padd);
up_pressed = keyboard_check_pressed(global.P2_up) || gamepad_button_check_pressed(1, gp_padu);

attack_pressed = keyboard_check_pressed(global.P2_attack) || gamepad_button_check_pressed(1, gp_face1); // Actually the jump button on controller
ability_pressed = keyboard_check_pressed(global.P2_ability) || gamepad_button_check_pressed(1, gp_face2);