event_inherited();

action = "none";
spawner = 0;
ms = 4;

// Move to ground
while(!place_meeting(x, y+1, Obj_Collision)){
	y += 1;
	
	if(y > room_height){
		instance_destroy();
	}
}

image_xscale = -1; // Player 2 boar specific