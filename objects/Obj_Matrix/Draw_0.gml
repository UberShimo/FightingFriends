draw_self();

if(global.stage_picked == Matrix){
	x_draw = x+(sprite_width*image_xscale)/2;
	y_draw = y+(sprite_height*image_yscale)/2;
	draw_sprite(Spr_Check_Mark, 0, x_draw, y_draw);
}