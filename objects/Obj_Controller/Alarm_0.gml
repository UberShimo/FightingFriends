/// @description Spawn winner text

obj = instance_create_depth(x, y, depth, Obj_Winner);

if(global.P1_wins > global.P2_wins){
	obj.sprite_index = Spr_P1_Wins;
}
else if(global.P2_wins > global.P1_wins){
	obj.sprite_index = Spr_P2_Wins;
}