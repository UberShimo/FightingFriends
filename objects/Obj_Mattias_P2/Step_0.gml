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
			// Mattias special dodge check
			if(sprite_index != duckSprite){
				down_timer = 8;
			}
			sprite_index = duckSprite;
		}
		// Right
		else if(right_check && !left_check){
			x += ms;
			sprite_index = moveSprite;
			
			// Mattias move reversed fix
			if(x > Obj_Player1.x){
				sprite_index = Spr_Mattias_Move_Reversed;
			}
			
			// Mattias special dodge
			if(down_timer > 0 && !down_check){
				action = "dodging";
				sprite_index = Spr_Mattias_Dodge;
				image_alpha = 0.2;
				hspeed = 32;
				friction = 2;
				alarm[3] = 12;
				alarm[0] = 16;
			}
		}
		// Left
		else if(left_check && !right_check){
			x -= ms;
			sprite_index = moveSprite;
			
			// Mattias move reversed fix
			if(x < Obj_Player1.x){
				sprite_index = Spr_Mattias_Move_Reversed;
			}
			
			// Mattias special dodge
			if(down_timer > 0 && !down_check){
				action = "dodging";
				sprite_index = Spr_Mattias_Dodge;
				image_alpha = 0.2;
				hspeed = -32;
				friction = 2;
				alarm[3] = 12;
				alarm[0] = 16;
			}
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
				sprite_index = Spr_Mattias_DiveKick;
				image_index = 0;
		
				alarm[3] = 1;
			}
		}
		// Ducking
		else if(down_check){
			action = "uppercut";
			sprite_index = Spr_Mattias_Uppercut;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
		// Standing
		else{
			action = "kick";
			sprite_index = Spr_Mattias_Kick;
			image_index = 0;
		
			alarm[3] = 8;
			alarm[0] = image_number * 4;
		}
	}

	// Ability
	if(ability_check && abilityReady && action == "none" && grounded){
		action = "ability";
		abilityReady = false;
		sprite_index = Spr_Mattias_Ability;
		image_index = 0;
		
		repeat(5){
			eff = instance_create_depth(x, y-82, -5, Obj_Mattias_Smoke);
			eff.hspeed = 24*image_xscale;
			bigger = random_range(1, 1.5);
			eff.hspeed *= bigger;
			eff.image_xscale *= bigger;
			eff.image_yscale *= bigger;
		}
		
		alarm[3] = 24;
		alarm[1] = cd;
		alarm[0] = image_number * 4;
	}
}

// Mattias down timer
if(down_timer > 0){
	down_timer -= 1;
}

// Mattias dodge effect
if(action == "dodging"){
	eff = instance_create_depth(x, y, +5, Obj_Mattias_Dodge_Eff);
	eff.image_xscale = image_xscale;
}