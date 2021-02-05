// CONTROLS
if(global.P1_pick == noone){
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
	image_angle += 24;
}

// Choose
if(attack_pressed){
	if(place_meeting(x, y, Obj_Stick_Portrait)){
		global.P1_pick = Obj_Stickman_P1;
	}
	else if(place_meeting(x, y, Obj_Simon_Portrait)){
		global.P1_pick = Obj_Simon_P1;
	}
	else if(place_meeting(x, y, Obj_Lucas_Portrait)){
		global.P1_pick = Obj_Lucas_P1;
	}
	else if(place_meeting(x, y, Obj_LilLucas_Portrait)){
		global.P1_pick = Obj_LilLucas_P1;
	}
	else if(place_meeting(x, y, Obj_Christian_Portrait)){
		global.P1_pick = Obj_Christian_P1;
	}
	else if(place_meeting(x, y, Obj_Rebecca_Portrait)){
		global.P1_pick = Obj_Rebecca_P1;
	}
	else if(place_meeting(x, y, Obj_William_Portrait)){
		global.P1_pick = Obj_William_P1;
	}
	else if(place_meeting(x, y, Obj_Charlotte_Portrait)){
		global.P1_pick = Obj_Charlotte_P1;
	}
	else if(place_meeting(x, y, Obj_Sol_Portrait)){
		global.P1_pick = Obj_Sol_P1;
	}
	else if(place_meeting(x, y, Obj_Felix_Portrait)){
		global.P1_pick = Obj_Felix_P1;
	}
	else{
		global.P1_pick = noone;
	}
}

// Go to fight room when both players have picked
if(global.P1_pick != noone && global.P2_pick != noone){
	room_goto(Arena);
}