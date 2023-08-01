x += random_range(-2, 2);
y += random_range(-2, 2);

if(hspeed > 2){
	hspeed -= 2;
}
else if(hspeed < -2){
	hspeed += 2;
}
else{
	hspeed = 0;
}

if(vspeed < -2){
	vspeed += 2;
}
else{
	vspeed = 0;
}

image_alpha -= 0.01;

if(image_alpha <= 0){
	instance_destroy();
}