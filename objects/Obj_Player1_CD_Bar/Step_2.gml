if(Obj_Player1 != noone){
	image_xscale = (Obj_Player1.cd - Obj_Player1.alarm[1]) / Obj_Player1.cd;
	image_yscale = (Obj_Player1.cd - Obj_Player1.alarm[1]) / Obj_Player1.cd;
	
	if(image_xscale > 1){
		image_xscale = 1;
		image_yscale = 1;
	}
}