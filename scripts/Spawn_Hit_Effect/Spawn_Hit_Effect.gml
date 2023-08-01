/// @param obj
/// @param hitboxX
/// @param hitboxY
function Spawn_Hit_Effect(argument0, argument1, argument2) {

	obj = argument0;
	hx = argument1;
	hy = argument2;

	x1 = hx - obj.x;
	y1 = hy - obj.y;

	x2 = x1 / 6;
	y2 = y1 / 6;

	xSpawn = obj.x + x2;
	ySpawn = obj.y + y2;

	hit1 = instance_create_depth(xSpawn, ySpawn, -10, Obj_Hit_Effect);
	hit2 = instance_create_depth(xSpawn, ySpawn, -10, Obj_Hit_Effect);
	hit1.image_angle = random_range(0, 359);
	hit2.image_angle = random_range(0, 359);
	hit1.image_xscale = 2;
	hit1.image_yscale = 2;
	hit2.image_xscale = 3;
	hit2.image_yscale = 3;


}
