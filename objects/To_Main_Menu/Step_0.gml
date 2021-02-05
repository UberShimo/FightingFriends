if(keyboard_check(vk_escape) || gamepad_button_check(0, gp_select) || gamepad_button_check(1, gp_select)){
	global.P1_pick = noone;
	global.P2_pick = noone;

	room_goto(Main_Menu);
}