/// @description Hitboxes etc

if(action == "kick"){
	hitbox = instance_create_depth(x, y+64, 0, Obj_Stick_Kick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "uppercut"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_Uppercut_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "divekick"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_DiveKick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "ability"){
	obj = instance_create_depth(x, y+64, 0, Obj_LilLucas_Gas);
	obj.spawner = 2;
	if(image_xscale > 0){
		obj.hspeed = 4;
		obj.x += 64;
	}
	else{
		obj.hspeed = -4;
		obj.x -= 64;
	}
	abilityReady = false;
	alarm[1] = cd;
}