/// @param obj
/// @param amount

if(argument0 != noone){
	obj = argument0;
	amount = argument1;

	repeat(amount){
		instance_create_depth(obj.x, obj.y, -10, Obj_Blood);
	}
}