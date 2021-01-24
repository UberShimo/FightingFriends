if(Obj_Player2 != noone){
	image_xscale = (Obj_Player2.cd - Obj_Player2.alarm[1]) / Obj_Player2.cd;
	image_yscale = (Obj_Player2.cd - Obj_Player2.alarm[1]) / Obj_Player2.cd;
	
	if(image_xscale > 1){
		image_xscale = 1;
		image_yscale = 1;
	}
}