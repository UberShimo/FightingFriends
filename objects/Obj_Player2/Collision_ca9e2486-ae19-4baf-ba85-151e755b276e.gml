if(other.spawner == 1){
	HP -= other.dmg;
	action = "stunned";
	
	// Air
	if(place_free(x, y+2)){
		if(other.image_xscale < 0){
			hspeed = -other.hitpush;
		}
		else{
			hspeed = other.hitpush;
		}
		vspeed = -other.liftPower;
	}
	// Ground
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
	
	if(other.isAnActualHit){
		Spawn_Hit_Effect(self, other.x, other.y);
	}
}

if(HP <= 0){
	controllable = false;
	Obj_Player1.controllable = false;
	visible = false;
	
	Spawn_Blood(x, y, 32);
	Judge.alarm[11] = 120; // Go to character select
}