/// @description Init controls

down_pressed = keyboard_check_pressed(global.P1_down) || gamepad_button_check_pressed(0, gp_padd);
up_pressed = keyboard_check_pressed(global.P1_up) || gamepad_button_check_pressed(0, gp_padu);

attack_pressed = keyboard_check_pressed(global.P1_attack) || gamepad_button_check_pressed(0, gp_face1); // Actually the jump button on controller
ability_pressed = keyboard_check_pressed(global.P1_ability) || gamepad_button_check_pressed(0, gp_face2);