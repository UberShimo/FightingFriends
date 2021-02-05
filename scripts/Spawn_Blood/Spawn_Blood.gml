/// @param x
/// @param y
/// @param amount

if(argument0 != noone){
	_x = argument0;
	_y = argument1;
	amount = argument2;

	repeat(amount){
		instance_create_depth(_x, _y, -10, Obj_Blood);
	}
}