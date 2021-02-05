/// @description Hitboxes etc

if(action == "kick"){
	hitbox = instance_create_depth(x, y+64, 0, Obj_Stick_Kick_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
}
else if(action == "uppercut"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_Uppercut_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
}
else if(action == "divekick"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_DiveKick_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
}
else if(action == "ability"){
	hitbox = instance_create_depth(x, y-160, 0, Obj_Mini_Simon);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
	hitbox.vspeed = -30;
	
	if(image_xscale > 0){
		hitbox.hspeed = 8;
	}
	else{
		hitbox.hspeed = -8;
	}
	abilityReady = false;
	alarm[1] = cd;
}