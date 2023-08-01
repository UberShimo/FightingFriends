if(controllable){

	// Movement. Very unique for Pontus.
	if(action == "none" && grounded){
		// Jump
		if(up_check){
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
			// Slow down
			if(hspeed > 0){
				hspeed -= ms/10;
			}
			else if(hspeed < 0){
				hspeed += ms/10;
			}
			sprite_index = duckSprite;
		}
		// Right
		else if(right_check && !left_check){
			if(hspeed < ms){
				hspeed += ms/10;
			}
			sprite_index = moveSprite;
		}
		// Left
		else if(left_check && !right_check){
			if(hspeed > -ms){
				hspeed -= ms/10;
			}
			sprite_index = moveSprite;
		}
		else{
			// Slow down
			if(hspeed > 0){
				hspeed -= ms/10;
			}
			else if(hspeed < 0){
				hspeed += ms/10;
			}
			sprite_index = standSprite;
		}
	}

	// Attack
	if(attack_check && action == "none"){
		// Air
		if(!grounded){
			if(vspeed > -(jumpPower / 2) && vspeed < jumpPower / 2){
				action = "divekick";
				sprite_index = Spr_Pontus_DiveKick;
				image_index = 0;
		
				alarm[3] = 1;
			}
		}
		// Ducking
		else if(down_check){
			action = "uppercut";
			sprite_index = Spr_Pontus_Uppercut;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
		// Standing
		else{
			action = "kick";
			sprite_index = Spr_Pontus_Kick;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
	}

	// Ability
	if(ability_check && abilityReady && action == "none" && grounded){
		action = "ability";
		sprite_index = Spr_Pontus_Ability;
		image_index = 0;
		
		alarm[3] = 8;
		alarm[0] = image_number * 4;
	}
}