if(controllable){
	// Lucas triggered status
	if(HP < 35){
		if(random_range(0, 60) < 1){
			attack_check = true;
		}
		ability_check = true;
	}

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

	// Attack
	if(attack_check && action == "none"){
		// Air
		if(!grounded){
			if(vspeed > -(jumpPower / 2) && vspeed < jumpPower / 2){
				action = "divekick";
				sprite_index = Spr_Lucas_DiveKick;
				image_index = 0;
		
				alarm[3] = 1;
			}
		}
		// Ducking
		else if(down_check){
			action = "uppercut";
			sprite_index = Spr_Lucas_Uppercut;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
		// Standing
		else{
			action = "kick";
			sprite_index = Spr_Lucas_Kick;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
	}

	// Ability
	if(ability_check && abilityReady && action == "none"){
		action = "ability";
		sprite_index = Spr_Lucas_Ability;
		image_index = 0;
		vspeed = -24;
		
		if(image_xscale > 0){
			hspeed = ms;
		}
		else{
			hspeed = -ms;
		}
		
		alarm[3] = 16;
	}
}

// Drop kick hover fix
if(action == "ability"){
	vspeed -= 2;
}