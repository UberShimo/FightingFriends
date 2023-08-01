/// @description CPU choice

if(isCPU){
	right_check = false;
	left_check = false;
	down_check = false;
	up_check = false;
	up_pressed = false;

	attack_check = false;
	ability_check = false;

	rng = irandom_range(1, 100);

	// move?
	if(rng <= 25){ 
		// Stand still
	}
	else if(rng <= 50){ // Back
		if(x < Obj_Player2.x){
			left_check = true;
		}
		else{
			right_check = true;
		}
	}
	else{ // Forward
		if(x < Obj_Player2.x){
			right_check = true;
		}
		else{
			left_check = true;
		}
	}
	
	rng = irandom_range(1, 100);

	// action?
	if(rng <= 60){ 
		// Nope
	}
	else if(rng <= 70){
		ability_check = true;
	}
	else{
		attack_check = true;
	}

	rng = irandom_range(1, 100);

	// jump/duck?
	if(rng <= 50){ 
		// Nope
	}
	else if(rng <= 75){
		up_check = true;
		attack_check = false;
		ability_check = false;
	}
	else{
		down_check = true;
	}

	alarm[11] = 20;
}