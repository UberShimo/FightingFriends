event_inherited();

// If attack is charging
if(attack_check && !down_check && !up_check){
	rng = irandom_range(1, 3);
	if(rng == 1){
		alarm[11] = chargeTime+2;
	}
	else{
		alarm[11] = 2;
	}
}