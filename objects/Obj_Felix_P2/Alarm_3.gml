/// @description Hitboxes etc

if(action == "kick"){
	hitbox = instance_create_depth(x, y+64, 0, Obj_Stick_Kick_Hitbox);
	hitbox.hitpush += hitbox.hitpush; // Felix extra push power
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "uppercut"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_Uppercut_Hitbox);
	hitbox.hitpush += hitbox.hitpush; // Felix extra push power
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "divekick"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_DiveKick_Hitbox);
	hitbox.hitpush += hitbox.hitpush; // Felix extra push power
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
}
else if(action == "ability"){
	obj = instance_create_depth(x, y+12, 0, Obj_Felix_Projectile);
	obj.spawner = 2;
	obj.image_xscale = image_xscale;
	obj.hspeed = 48*image_xscale;
	
	abilityReady = false;
	alarm[1] = cd;
}