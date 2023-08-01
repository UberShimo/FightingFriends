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
else if(action == "spin"){
	sprite_index = Spr_Sol_Spin;
	image_index = 0;
	
	hitbox = instance_create_depth(x, y, 0, Obj_Sol_Spin_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
	
	isChargingAttack = false;
	alarm[3] = 16;
}