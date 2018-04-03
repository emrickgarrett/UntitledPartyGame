/// @Play audio when Game is running

if(global.gameRunning && !global.gamePaused) {
	if(!audio_is_playing(a_race_theme)) {
		audio_play_sound(a_race_theme, 100, 1)
	} else {
		audio_resume_sound(a_race_theme)	
	}
} else {
	if(audio_is_playing(a_race_theme)) {
		audio_pause_sound(a_race_theme)	
	}
}