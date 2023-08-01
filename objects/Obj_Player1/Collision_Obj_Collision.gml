action = "none";
sprite_index = standSprite;
hspeed = 0;
vspeed = 0;
friction = 0;

while(place_meeting(x, y, Obj_Collision)){
	y -= 1;
}