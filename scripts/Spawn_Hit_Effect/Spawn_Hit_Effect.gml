/// @param obj
/// @param hitboxX
/// @param hitboxY

obj = argument0;
hx = argument1;
hy = argument2;

x1 = hx - obj.x;
y1 = hy - obj.y;

x2 = x1 / 6;
y2 = y1 / 6;

xSpawn = obj.x + x2;
ySpawn = obj.y + y2;

instance_create_depth(xSpawn, ySpawn, -10, Obj_Hit_Effect);