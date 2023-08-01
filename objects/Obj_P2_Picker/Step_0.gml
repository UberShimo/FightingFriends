// CONTROLS
if(global.P2_pick == noone){
	// Left
	if(left_pressed && !place_meeting(x-64, y, Obj_Collision)){
		x -= 128;
	}
	// Right
	else if(right_pressed && !place_meeting(x+64, y, Obj_Collision)){
		x += 128;
	}
	// Up
	else if(up_pressed && !place_meeting(x, y-64, Obj_Collision)){
		y -= 128;
	}
	// Down
	else if(down_pressed && !place_meeting(x, y+64, Obj_Collision)){
		y += 128;
	}
}
else{
	image_angle -= 24;
}

// Choose
if(attack_pressed){
	// Random select
	if(place_meeting(x, y, Obj_Random_Select)){
		rng = irandom_range(0, instance_number(Portrait_Parent));
		picked_portrait = instance_find(Portrait_Parent, rng);
		x = picked_portrait.x;
		y = picked_portrait.y;
	}
	
	if(place_meeting(x, y, Obj_Stick_Portrait)){
		global.P2_pick = Obj_Stickman_P2;
	}
	else if(place_meeting(x, y, Obj_Kiki_Portrait)){
		global.P2_pick = Obj_Kiki_P2;
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
	else if(place_meeting(x, y, Obj_Charlotte_Portrait)){
		global.P2_pick = Obj_Charlotte_P2;
	}
	else if(place_meeting(x, y, Obj_Sol_Portrait)){
		global.P2_pick = Obj_Sol_P2;
	}
	else if(place_meeting(x, y, Obj_Felix_Portrait)){
		global.P2_pick = Obj_Felix_P2;
	}
	else if(place_meeting(x, y, Obj_Pontus_Portrait)){
		global.P2_pick = Obj_Pontus_P2;
	}
	else if(place_meeting(x, y, Obj_Victor_Portrait)){
		global.P2_pick = Obj_Victor_P2;
	}
	else if(place_meeting(x, y, Obj_Anders_Portrait)){
		global.P2_pick = Obj_Anders_P2;
	}
	else if(place_meeting(x, y, Obj_Jenny_Portrait)){
		global.P2_pick = Obj_Jenny_P2;
	}
	else if(place_meeting(x, y, Obj_Smulan_Portrait)){
		global.P2_pick = Obj_Smulan_P2;
	}
	else if(place_meeting(x, y, Obj_David_Portrait)){
		global.P2_pick = Obj_David_P2;
	}
	else if(place_meeting(x, y, Obj_Clara_Portrait)){
		global.P2_pick = Obj_Clara_P2;
	}
	else if(place_meeting(x, y, Obj_Sebbe_Portrait)){
		global.P2_pick = Obj_Sebbe_P2;
	}
	else if(place_meeting(x, y, Obj_Mattias_Portrait)){
		global.P2_pick = Obj_Mattias_P2;
	}
	
	// Stage select
	else if(place_meeting(x, y, Obj_Old_Home)){
		global.stage_picked = Old_Home;
	}
	else if(place_meeting(x, y, Obj_Snow_Home)){
		global.stage_picked = Snow_Home;
	}
	else if(place_meeting(x, y, Obj_Spacefield)){
		global.stage_picked = Spacefield;
	}
	else if(place_meeting(x, y, Obj_Desert)){
		global.stage_picked = Desert;
	}
	else if(place_meeting(x, y, Obj_Matrix)){
		global.stage_picked = Matrix;
	}
	// change cpu settings
	else if(place_meeting(x, y, Obj_P1_isCPU)){
		global.P1_isCPU = !global.P1_isCPU;
	}
	else if(place_meeting(x, y, Obj_P2_isCPU)){
		global.P2_isCPU = !global.P2_isCPU;
	}
	// Music
	else if(place_meeting(x, y, Obj_Music_OnOff)){
		global.music_on = !global.music_on;
		Obj_DJ.alarm[0] = 2;
	}
	else{
		global.P2_pick = noone;
	}
}