if(Obj_Player2.controllable){
	// Movement
	if(action == "none" && Obj_Player2.action == "ability"){
		// Right
		if(x < Obj_Player2.x){
			x += ms * 2;
			image_xscale = 1;
		}
		// Left
		else{
			x -= ms * 2;
			image_xscale = -1;
		}
		sprite_index = Spr_Boar_Move;
	}
	else if(action == "none"){
		// Right
		if(x < Obj_Player1.x){
			x += ms;
			image_xscale = 1;
		}
		// Left
		else{
			x -= ms;
			image_xscale = -1;
		}
		sprite_index = Spr_Boar_Move;
	}

	// Attack
	if(action == "none" && Obj_Player2.action != "ability" && (x < Obj_Player1.x + 128 && x > Obj_Player1.x - 128)){
		// Air
		action = "attack";
		sprite_index = Spr_Boar_Attack;
		image_index = 0;
		
		alarm[3] = 16;
		alarm[0] = image_number * 4;
	}
}
else{
	sprite_index = Spr_Boar_Move;
	image_index = 0;
}