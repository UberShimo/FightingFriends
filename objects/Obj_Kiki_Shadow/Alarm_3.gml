/// @description Hitboxes etc

image_speed = 1;
image_alpha = 1;

if(sprite_index = Spr_Kiki_Kick){
	hitbox = instance_create_depth(x, y+64, 0, Obj_Stick_Kick_Hitbox);
	hitbox.spawner = spawner;
	hitbox.image_xscale = image_xscale;
	
	image_index = 2;
}
else if(sprite_index = Spr_Kiki_Uppercut){
	hitbox = instance_create_depth(x, y, 0, Obj_Stick_Uppercut_Hitbox);
	hitbox.spawner = spawner;
	hitbox.image_xscale = image_xscale;
	
	image_index = 2;
}
else if(sprite_index = Spr_Kiki_Jump){
	hitbox = instance_create_depth(x, y+128, 0, Obj_Kiki_Hands);
	hitbox.spawner = spawner;
	hitbox.image_xscale = image_xscale;
	hitbox.hspeed = 24*image_xscale;
	hitbox.vspeed = 12;
	
	instance_destroy();
}

alarm[0] = 24;