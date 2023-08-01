// Movement
if(Obj_Player2.ability_check){
	sprite_index = Spr_William_Move;
	
	x += h_speed;
}
else{
	sprite_index = Spr_William_Stand;
}

// xscale
if(x < Obj_Player1.x){
	image_xscale = 1;
}
else{
	image_xscale = -1
}