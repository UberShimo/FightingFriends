/// @description AI

Obj_Player2.right_check = false;
Obj_Player2.left_check = false;
Obj_Player2.up_check = false;
Obj_Player2.down_check = false;
Obj_Player2.attack_check = false;
Obj_Player2.ability_check = false;

// Direction
rng = irandom_range(0, 3);

if(rng == 1){
	Obj_Player2.right_check = true;
}
else if(rng == 2){
	Obj_Player2.left_check = true;
}
else if(rng == 3){
	Obj_Player2.down_check = true;
}

// Jump?
if(irandom_range(0, 1) == 0){
	Obj_Player2.up_check = true;
}

// Attack?
if(irandom_range(0, 4) < 2){
	Obj_Player2.attack_check = true;
}

// Ability?
if(irandom_range(0, 8) < 2){
	Obj_Player2.ability_check = true;
}

alarm[1] = irandom_range(20, 60);