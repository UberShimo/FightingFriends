if(controllable){
	// Check if vortex exist
	if(!instance_exists(connectedVortex)){
		connectedVortex = noone;
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
				sprite_index = Spr_Sebbe_DiveKick;
				image_index = 0;
		
				alarm[3] = 1;
			}
		}
		// Ducking
		else if(down_check){
			action = "uppercut";
			sprite_index = Spr_Sebbe_Uppercut;
			image_index = 0;
		
			alarm[3] = 12;
			alarm[0] = 64;
		}
		// Standing
		else{
			action = "kick";
			sprite_index = Spr_Sebbe_Kick;
			image_index = 0;
		
			alarm[3] = 12;
			alarm[0] = 64;
		}
	}
	
	// Ability
	if(action != "teleport" && action != "teleport2"){
		if(ability_check && abilityReady){
			abilityReady = false;
		
			vortex = instance_create_depth(x, y, depth+1, Obj_Sebbe_Vortex);
			vortex.spawner = 1;
			vortex.hspeed = 16*image_xscale;
		
			alarm[1] = cd;
		}
		else if(ability_check && connectedVortex != noone){
			action = "teleport";
			temp_xscale = image_xscale;
			sprite_index = Spr_Sebbe_Ability;
		
			vortex2 = instance_create_depth(x, y, depth+1, Obj_Sebbe_Vortex);
			vortex2.spawner = 1;
		
			alarm[3] = 60;
			alarm[0] = 0;
		}
	}
}

// Teleport effect
if(action == "teleport"){
	image_angle -= 12;
	image_xscale -= (1/60)*temp_xscale;
	image_yscale -= 1/60;
	
	connectedVortex.alarm[0] += 1;
	vortex2.alarm[0] += 1;
	
	// Stay in place
	hspeed = 0;
	vspeed = 0;
}