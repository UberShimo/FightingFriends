if(spawner == 2){
	obj = instance_create_depth(x, y, -10, Obj_Hit_Effect);
	obj.image_xscale = 2;
	obj.image_yscale = 2;
	
	instance_destroy();
}