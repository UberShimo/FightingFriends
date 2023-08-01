hitbox = instance_create_depth(x, y, 0, Obj_LilLucas_Gas_Hitbox);

if(spawner == 1){
	hitbox.spawner = 1;
}
else{
	hitbox.spawner = 2;
}

alarm[3] = 4;