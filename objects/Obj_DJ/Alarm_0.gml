if(global.music_on){
	// Special simon n christian dance song
	if((global.P1_pick == Obj_Simon_P1 && global.P2_pick == Obj_Christian_P2)
	|| (global.P2_pick == Obj_Simon_P2 && global.P1_pick == Obj_Christian_P1)){
		if(!audio_is_playing(Mu_HereForTheDance)){
			audio_stop_all();
			audio_play_sound(Mu_HereForTheDance, 0, true);
		}
	}
	// Special simon n charlotte song
	if((global.P1_pick == Obj_Simon_P1 && global.P2_pick == Obj_Charlotte_P2)
	|| (global.P2_pick == Obj_Simon_P2 && global.P1_pick == Obj_Charlotte_P1)){
		if(!audio_is_playing(Mu_CloseButNo)){
			audio_stop_all();
			audio_play_sound(Mu_CloseButNo, 0, true);
		}
	}
	else if(room == Snow_Home){
		audio_stop_all();
	}
	else if(room == Old_Home){
		if(!audio_is_playing(Mu_FightingFriendsBattle)){
			audio_stop_all();
			audio_play_sound(Mu_FightingFriendsBattle, 0, true);
		}
	}
	else if(room == Spacefield){
		if(!audio_is_playing(Mu_Space_Club)){
			audio_stop_all();
			audio_play_sound(Mu_Space_Club, 0, true);
		}
	}
	else if(room == Desert){
		if(!audio_is_playing(Mu_Strive)){
			audio_stop_all();
			audio_play_sound(Mu_Strive, 0, true);
		}
	}
	else if(room == Matrix){
		if(!audio_is_playing(Mu_Whapp)){
			audio_stop_all();
			audio_play_sound(Mu_Whapp, 0, true);
		}
	}
	// menu theme
	else if(!audio_is_playing(Mu_FightingFriendsTheme)){
		audio_stop_all();
		audio_play_sound(Mu_FightingFriendsTheme, 0, true);
	}
}
else{
	audio_stop_all();
}