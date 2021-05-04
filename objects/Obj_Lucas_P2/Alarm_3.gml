/// @description Hitboxes etc

if(action == "kick"){
	hitbox = instance_create_depth(x, y+64, 0, Obj_Stick_Kick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	// Lucas triggered power
	if(HP < 35){
		hitbox.dmg = hitbox.dmg * 1.5;
	}
}
else if(action == "uppercut"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_Uppercut_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	// Lucas triggered power
	if(HP < 35){
		hitbox.dmg = hitbox.dmg * 1.5;
	}
}
else if(action == "divekick"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_DiveKick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	// Lucas triggered power
	if(HP < 35){
		hitbox.dmg = hitbox.dmg * 1.5;
	}
}
else if(action == "ability"){
	hitbox = instance_create_depth(x, y, 0, Obj_Lucas_DropKick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	abilityReady = false;
	alarm[1] = cd;
	image_index = 1;
	vspeed = -8;
	// Lucas triggered power
	if(HP < 35){
		hitbox.dmg = hitbox.dmg * 1.5;
	}
}