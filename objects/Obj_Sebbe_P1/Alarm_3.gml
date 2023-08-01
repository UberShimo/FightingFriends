/// @description Hitboxes etc

if(action == "kick"){
	xSpawn = x + (96*image_xscale);
	hitbox = instance_create_depth(xSpawn, y+32, 0, Obj_Sebbe_Ball);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
	hitbox.hspeed = 6*image_xscale;
}
else if(action == "uppercut"){
	xSpawn = x + (64*image_xscale);
	hitbox = instance_create_depth(xSpawn, y, 0, Obj_Sebbe_Ball);
	hitbox.spawner = 1;
	hitbox.weight = 0.5;
	hitbox.image_xscale = image_xscale;
	hitbox.hspeed = 3*image_xscale;
	hitbox.vspeed = -24;
}
else if(action == "divekick"){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_DiveKick_Hitbox);
	hitbox.spawner = 1;
	hitbox.image_xscale = image_xscale;
}
else if(action == "teleport"){	
	action = "teleport2";
	
	image_angle = 0;
	image_xscale = 1;
	image_yscale = 1;
	
	x = connectedVortex.x;
	y = connectedVortex.y;
	
	instance_destroy(connectedVortex);
	instance_destroy(vortex2);
	
	alarm[0] = 8;
}