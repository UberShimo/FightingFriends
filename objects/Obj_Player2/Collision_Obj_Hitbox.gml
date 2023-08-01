if(other.spawner == 1){
	HP -= other.dmg;

	if(other.isAnActualHit){
		action = "stunned";
		
		if(!grounded || other.isLauncher){
			if(other.image_xscale < 0){
				hspeed = -other.hitpush;
			}
			else{
				hspeed = other.hitpush;
			}
			vspeed = -other.liftPower;
		}
		else{
			alarm[0] = other.hitstun;
			friction = 1;
	
			if(other.image_xscale < 0){
				hspeed = -other.hitpush;
			}
			else{
				hspeed = other.hitpush;
			}
		}
		sprite_index = stunnedSprite;
	}
	if(other.spawnsEffect){	
		Spawn_Hit_Effect(self, other.x, other.y);
	}
}

// Remove none projectile hitboxes
if(action == "stunned" && !other.isProjectile){
	instance_destroy(other);
}

// Dead
if(HP <= 0 && controllable){
	global.P1_wins += 1;
	controllable = false;
	Obj_Player1.controllable = false;
	visible = false;
	
	Spawn_Blood(x, y, 32);
	Check_Situation(Obj_Controller);
}