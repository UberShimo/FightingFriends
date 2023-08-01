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
	obj = instance_create_depth(x, y-64, 0, Obj_Hairball);
	obj.spawner = 2;
	obj.vspeed = 24;
	
	if(image_xscale > 0){
		obj.x += 96;
		obj.hspeed = 8;
	}
	else{
		obj.x -= 96;
		obj.hspeed = -8;
	}
	abilityReady = false;
	alarm[1] = cd;
}