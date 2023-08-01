action = "none";
sprite_index = standSprite;
friction = 0;
hspeed = 0;
vspeed = 0;

while(place_meeting(x, y, Obj_Collision)){
	y -= 1;
}