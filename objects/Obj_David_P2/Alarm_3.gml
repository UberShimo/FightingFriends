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
else if(action == "charge"){
	x += 256 * image_xscale;
	
	hitbox = instance_create_depth(x, y+64, 0, Obj_David_ChargeKick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	
	image_index = 2;
	image_speed = 1;
	
	isChargingAttack = false;
	alarm[0] = (image_number * 4) - 8;
}