// Rotate
if(hspeed > 0){
	image_angle -= 16;
}
else{
	image_angle += 16;
}

// Wall bounce
if(x < 0){
	hspeed = 8;
}
else if(x > room_width){
	hspeed = -8;
}