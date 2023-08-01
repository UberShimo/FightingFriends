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

	// Attack
	if(attack_check && action == "none"){
		// Air
		if(!grounded){
			if(vspeed > -(jumpPower / 2) && vspeed < jumpPower / 2){
				action = "divekick";
				sprite_index = Spr_David_DiveKick;
				image_index = 0;
		
				alarm[3] = 1;
			}
		}
		// Ducking
		else if(down_check){
			action = "uppercut";
			sprite_index = Spr_David_Uppercut;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
		// Standing, start charge kick!
		else{
			action = "charge";
			isChargingAttack = true;
			sprite_index = Spr_David_Kick;
			image_index = 0;
			image_speed = 0;
		
			alarm[3] = chargeTime;
		}
	}
	
	// Stop charge and do a normal kick
	if(isChargingAttack && !attack_check){
		action = "kick";
		isChargingAttack = false;
		sprite_index = Spr_David_Kick;
		image_index = 0;
		image_speed = 1;
		
		alarm[3] = 8;
		alarm[0] = image_number * 4;
	}

	// Ability
	if(ability_check && abilityReady){
		abilityReady = false;
		instance_create_depth(x, y, 10, Obj_David_Smokebomb);
		
		alarm[1] = cd;
	}
}
