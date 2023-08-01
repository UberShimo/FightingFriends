/// @description Follow spawner

if(spawner == 1){
	x = Obj_Player1.x;
	y = Obj_Player1.y;
	
	if(Obj_Player1.action != "ability"){
		instance_destroy();
	}
}
else{
	x = Obj_Player2.x;
	y = Obj_Player2.y;
	
	if(Obj_Player2.action != "ability"){
		instance_destroy();
	}
}