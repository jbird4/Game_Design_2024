function set_song_ingame(_song, _fadeOutCurrentSong = 0, _fadeIn = 0){
	//_song = set to sany song
	//_fadeOutCurrentSong = time the current song will take to fade out
	//_fadeIn = time the target song will take to fade in
	
	with(odj_music_manager){
		targetSongAsset = _song;
		endFadeOutTime = _fadeOutCurrentSong;
		startFadeInTime = _fadeIn;
	}
	
}