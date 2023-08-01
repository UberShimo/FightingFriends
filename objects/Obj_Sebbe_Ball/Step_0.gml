radius = sprite_width/2;
dir = random_range(0, 360);

xSpawn = x + lengthdir_x(radius, dir);
ySpawn = y + lengthdir_y(radius, dir);

eff = instance_create_depth(xSpawn, ySpawn, depth, Obj_Sebbe_Ball_Eff);
eff.image_xscale *= 0.25;
eff.image_yscale *= 0.25;
eff.image_blend = image_blend;

vspeed += weight;