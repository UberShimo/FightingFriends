/// @description Disco eff
eff = instance_create_depth(x, y, 5, Obj_Jenny_Disco_Eff);

rng = irandom_range(1, 3);
if(rng == 1){
	color = c_fuchsia;
}
else if(rng == 2){
	color = c_lime;
}
else{
	color = c_yellow;
}

eff.image_blend = color;
eff.sprite_index = sprite_index;
eff.image_xscale = image_xscale;
eff.image_index = image_index;
eff.image_alpha = dancePower / 240;

alarm[5] = 10;