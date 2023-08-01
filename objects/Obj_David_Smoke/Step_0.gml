x += random_range(-2, 2);
y += random_range(-2, 2);

if(hspeed > 4){
	hspeed -= 4;
}
else if(hspeed < -4){
	hspeed += 4;
}
else{
	hspeed = 0;
}

if(vspeed < -4){
	vspeed += 4;
}
else{
	vspeed = 0;
}

image_alpha -= 0.002;

if(image_alpha <= 0){
	instance_destroy();
}