if(action == "ability"){
	instance_destroy(Obj_Boar_P1);
	action = "YummyBoar";
	
	sprite_index = Spr_Charlotte_Ability2;
	image_index = 0;
	
	alarm[0] = image_number * 4;
}