/// @description Hitboxes etc

if(action == "kick"){
	hitbox = instance_create_depth(x, y+64, 0, Obj_Pontus_Kick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "uppercut"){
	hitbox = instance_create_depth(x, y, 0, Obj_Pontus_Uppercut_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "divekick"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_DiveKick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "ability"){
	obj = instance_create_depth(x, y-80, 0, Obj_Pontus_Axe);
	obj.spawner = 2;
	obj.image_xscale = image_xscale;
	if(image_xscale > 0){
		obj.hspeed = hspeed/2 + 28;
		obj.x += 128;
	}
	else{
		obj.hspeed = hspeed/2 - 28;
		obj.x -= 128;
	}
	hspeed = 0;
	abilityReady = false;
	alarm[1] = cd;
}