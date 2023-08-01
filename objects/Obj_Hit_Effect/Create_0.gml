audio_play_sound(Aud_HitEff, 0, false);

repeat(8){
	instance_create_depth(x, y, depth, Obj_Hit_Effect1);
}
instance_create_depth(x, y, depth, Obj_Hit_Effect2);