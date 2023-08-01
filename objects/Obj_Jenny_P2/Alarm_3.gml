/// @description Hitboxes etc

if(action == "kick"){
	hitbox = instance_create_depth(x, y+64, 0, Obj_Stick_Kick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	// Dance attack bonus
	hitbox.dmg += dancePower/12;
}
else if(action == "uppercut"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_Uppercut_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	// Dance attack bonus
	hitbox.dmg += dancePower/12;
}
else if(action == "divekick"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_DiveKick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	// Dance attack bonus
	hitbox.dmg += dancePower/12;
}
else if(action == "ability"){
	x += 192 * image_xscale;
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_Kick_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	abilityReady = false;
	alarm[1] = cd;
	// Dance attack bonus
	hitbox.dmg += dancePower/12;
}

// Dance removal
if(action != "ability"){
	dancePower = 0;
}