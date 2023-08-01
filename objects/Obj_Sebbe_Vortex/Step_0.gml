if(spawner == 1){
	if(!Obj_Player1.ability_check && Obj_Player1.connectedVortex == noone){
		hspeed = 0;
		Obj_Player1.connectedVortex = self;
	}
}
else if(spawner == 2){
	if(!Obj_Player2.ability_check && Obj_Player2.connectedVortex == noone){
		hspeed = 0;
		Obj_Player2.connectedVortex = self;
	}
}


image_angle -= 12;