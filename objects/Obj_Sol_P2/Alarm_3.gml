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
	sprite_index = Spr_Sol_Ability;
	image_index = 0;
	
	hitbox = instance_create_depth(x, y, 0, Obj_Sol_Ability_Hitbox);
	hitbox.spawner = 2;
	hitbox.image_xscale = image_xscale;
	
	alarm[3] = 16;
	
	if(abilityReady){
		abilityReady = false;
		alarm[1] = cd;
	}
		
}