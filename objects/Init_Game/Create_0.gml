global.P1_pick = noone;
global.P2_pick = noone;
global.stage_picked = Old_Home;
global.music_on = true;

global.P1_isCPU = false;
global.P2_isCPU = false;

global.P1_wins = 0;
global.P2_wins = 0;

// P1 controls
global.P1_right = ord("D");
global.P1_left = ord("A");
global.P1_down = ord("S");
global.P1_up = ord("W");

global.P1_attack = ord("N");
global.P1_ability = ord("M");

// P2 controls
global.P2_right = vk_right;
global.P2_left = vk_left;
global.P2_down = vk_down;
global.P2_up = vk_up;

global.P2_attack = vk_numpad1;
global.P2_ability = vk_numpad2;

randomize();

room_goto(Main_Menu);