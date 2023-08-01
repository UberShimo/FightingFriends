if(controllable){

	// Movement
	if(action == "none" && grounded){
		// Jump
		if(up_check){
			hspeed = 0; // Fixes so you can stop momentum while holding jump.
		
			if(right_check && !left_check){
				hspeed = ms;
			}
			else if(left_check && !right_check){
				hspeed = -ms;
			}
			y -= 64;
			vspeed = -jumpPower;
			sprite_index = jumpSprite;
		}
		// Duck
		else if(down_check){
			sprite_index = duckSprite;
		}
		// Right
		else if(right_check && !left_check){
			x += ms;
			sprite_index = moveSprite;
		}
		// Left
		else if(left_check && !right_check){
			x -= ms;
			sprite_index = moveSprite;
		}
		else{
			sprite_index = standSprite;
		}
	}
	// Sols ability movement
	else if(action == "spin" && sprite_index == Spr_Sol_Spin){
		// Right
		if(right_check && !left_check){
			x += ms;
		}
		// Left
		else if(left_check && !right_check){
			x -= ms;
		}
	}

	// Attack
	if(attack_check && action == "none"){
		// Air
		if(!grounded){
			if(vspeed > -(jumpPower / 2) && vspeed < jumpPower / 2){
				action = "divekick";
				sprite_index = Spr_Sol_DiveKick;
				image_index = 0;
		
				alarm[3] = 1;
			}
		}
		// Ducking
		else if(down_check){
			action = "uppercut";
			sprite_index = Spr_Sol_Uppercut;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
		// Standing, start charge spin kicks!
		else{
			action = "spin";
			isChargingAttack = true;
			sprite_index = Spr_Sol_SpinStart;
			image_index = 0;
		
			alarm[3] = chargeTime;
			alarm[0] = 96; // spins = (frames - 32) / 16
		}
	}
	
	// Stop charge and do a normal kick
	if(isChargingAttack && !attack_check){
		action = "kick";
		isChargingAttack = false;
		sprite_index = Spr_Sol_Kick;
		image_index = 0;
		
		alarm[3] = 8;
		alarm[0] = image_number * 4;
	}

	// Ability
	if(ability_check && abilityReady){
		abilityReady = false;
		isDissapearing = true;
		alarm[1] = cd;
		alarm[10] = 120;
	}
}

// Sols visibility fuckery
if(isDissapearing && image_alpha > 0){
	image_alpha -= 0.02;
}
else if(!isDissapearing && image_alpha < 1){
	image_alpha += 0.02;
}