/// @description Various fixes

// Face correct way
if(!place_free(x, y+32) && action == "none"){
	if(x < Obj_Player2.x){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}

// Gravity
if(place_free(x, y+4)){
	vspeed += weight;
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