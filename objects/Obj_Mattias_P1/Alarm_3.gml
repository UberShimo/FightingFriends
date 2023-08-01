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
	hitbox = instance_create_depth(x, y, 0, Obj_Mattias_Ability_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
	
	// Spawn some cool effects
	eff = instance_create_depth(x+(242*image_xscale), y-52, -5, Obj_Hit_Effect1);
	eff.image_blend = c_orange;
	eff.image_xscale *= 0.5;
	eff.image_yscale *= 0.5;
	
	alarm[3] = 4;
}
else if(action == "dodging"){
	image_alpha = 1;
	friction = 0;
}