/// @description Various fixes

// Face correct way
if(grounded && action == "none"){
	if(x < Obj_Player1.x){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}

// Gravity
if(!place_meeting(x, y+4, Obj_Collision)){
	vspeed += weight;
	grounded = false;
}
else{
	grounded = true;
}

// Friction
if(hspeed == 0){
	friction = 0;
}

// Out of bounds
while(x < 0){
	x += 1;
	hspeed = 0;
}
while(x > room_width){
	x -= 1;
	hspeed = 0;
}