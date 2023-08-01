/// @description Status reset

action = "none";
sprite_index = standSprite;
hspeed = 0;
vspeed = 0;

// Face correct way
if(x < Obj_Player2.x){
	image_xscale = 1;
}
else{
	image_xscale = -1;
}