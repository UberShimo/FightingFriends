/// @description Hitboxes etc

if(action == "kick"){
	hitbox = instance_create_depth(x, y+64, 0, Obj_Stick_Kick_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
}
else if(action == "uppercut"){
	hitbox = instance_create_depth(x, y, 0, Obj_Victor_Uppercut_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
	if(image_xscale > 0){
		hspeed = -12;
	}
	else{
		hspeed = 12;
	}
}
else if(action == "divekick"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_DiveKick_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
}
else if(action == "ability"){
	eff = instance_create_depth(x, y, 0, Obj_Victor_Ability_Eff);
	eff.image_xscale = image_xscale;
	abilityReady = false;
	alarm[1] = cd;
	
	if(image_xscale > 0){
		x = Obj_Player2.x + 128;
	}
	else{
		x = Obj_Player2.x - 128;
	}
}