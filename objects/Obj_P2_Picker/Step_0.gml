// CONTROLS
if(global.P2_pick == noone){
	// Left
	if(left_pressed && place_free(x-64, y)){
		x -= 128;
	}
	// Right
	else if(right_pressed && place_free(x+64, y)){
		x += 128;
	}
	// Up
	else if(up_pressed && place_free(x, y-64)){
		y -= 128;
	}
	// Down
	else if(down_pressed && place_free(x, y+64)){
		y += 128;
	}
}
else{
	image_angle -= 24;
}

// Choose
if(attack_pressed){
	if(place_meeting(x, y, Obj_Stick_Portrait)){
		global.P2_pick = Obj_Stickman_P2;
	}
	else if(place_meeting(x, y, Obj_Simon_Portrait)){
		global.P2_pick = Obj_Simon_P2;
	}
	else if(place_meeting(x, y, Obj_Lucas_Portrait)){
		global.P2_pick = Obj_Lucas_P2;
	}
	else if(place_meeting(x, y, Obj_LilLucas_Portrait)){
		global.P2_pick = Obj_LilLucas_P2;
	}
	else if(place_meeting(x, y, Obj_Christian_Portrait)){
		global.P2_pick = Obj_Christian_P2;
	}
	else if(place_meeting(x, y, Obj_Rebecca_Portrait)){
		global.P2_pick = Obj_Rebecca_P2;
	}
	else if(place_meeting(x, y, Obj_William_Portrait)){
		global.P2_pick = Obj_William_P2;
	}
	else{
		global.P2_pick = noone;
	}
}