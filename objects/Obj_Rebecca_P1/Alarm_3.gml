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
	obj = instance_create_depth(x, y+12, 0, Obj_Rebecca_Laser);
	obj.spawner = 1;
	if(image_xscale > 0){
		obj.hspeed = 128;
		obj.x += 64;
	}
	else{
		obj.hspeed = -128;
		obj.x -= 64;
	}
	abilityReady = false;
	alarm[1] = cd;
}