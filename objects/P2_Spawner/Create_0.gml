player = instance_create_depth(x, y, 0, global.P2_pick);


if(global.P2_isCPU){
	player.isCPU = true;
	player.alarm[11] = 20;
}
