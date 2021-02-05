if(room != Arena){
	if(!audio_is_playing(Mu_FightingFriendsTheme)){
		audio_play_sound(Mu_FightingFriendsTheme, 0, true);
	}
}
else{
	audio_stop_sound(Mu_FightingFriendsTheme);
}