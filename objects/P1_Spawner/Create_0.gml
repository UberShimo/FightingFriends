player = instance_create_depth(x, y, 0, global.P1_pick);

if(global.P1_isCPU){
	player.isCPU = true;
	player.alarm[11] = 20;
}
