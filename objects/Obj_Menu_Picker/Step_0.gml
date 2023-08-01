// CONTROLS

// Up
if(up_pressed && !place_meeting(x, y-160, Obj_Collision)){
	y -= 270;
}
// Down
else if(down_pressed && !place_meeting(x, y+160, Obj_Collision)){
	y += 270;
}


// Choose
if(attack_pressed){
	if(place_meeting(x, y, Obj_Fight)){
		room_goto(Character_Select);
	}
	else if(place_meeting(x, y, Obj_Flight)){
		game_end();
	}
}