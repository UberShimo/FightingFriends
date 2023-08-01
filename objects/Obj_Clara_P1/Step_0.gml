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
				sprite_index = Spr_Clara_DiveKick;
				image_index = 0;
				hspeed = ms*image_xscale;
		
				alarm[3] = 1;
			}
		}
		// Ducking
		else if(down_check){
			action = "uppercut";
			sprite_index = Spr_Clara_Uppercut;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
		// Standing
		else{
			action = "kick";
			sprite_index = Spr_Clara_Kick;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
	}

	// Ability
	if(ability_check && abilityReady && action == "none" && grounded){
		abilityReady = false;
		
		dog = instance_create_depth(x, y, depth+1, Obj_Clara_Ability);
		dog.image_xscale = image_xscale;
		dog.spawner = 1;
		alarm[1] = cd;
	}
}