var _finalVol = global.musicVolume * global.masterVolume;

//Play the target song
if songAsset != targetSongAsset{
	
	//Fade out old song
	if audio_is_playing(songInstance){
		array_push(fadeOutInstances, songInstance); //Add instance to array
		array_push(fadeOutInatanceVolume, fadeInInstanceVol); //Add instance volume
		array_push(fadeOutInstanceTime, endFadeOutTime); //add instance frame
		
		
		//Reset the songInstance and songAsset
		songInstance = noone;
		songAsset = noone;
		
	}
	
	//Play the song, if the old song has faded out
	if array_length(fadeOutInstances) == 0 {
		if audio_exists(targetSongAsset){
			songInstance = audio_play_sound(targetSongAsset, 4, true) //Play the song and store it
	
			//Start the song's volume at 0
			audio_sound_gain(songInstance, 0, 0);
			fadeInInstanceVol = 0;
		}
	
		//Set the songAsset to match the targetSongAsset
		songAsset = targetSongAsset;
	}
}

//Volume Control
if audio_is_playing(songInstance){
	
	//Fade in the song
	if startFadeInTime > 0{
		if fadeInInstanceVol < 1 {
			fadeInInstanceVol +=1/startFadeInTime;
		}else{
			fadeInInstanceVol = 1;
		}
	}else{
		fadeInInstanceVol = 1; //immediately start the song if the fade in time is 0 frames
	}
	
	//Set the gain
	audio_sound_gain(songInstance, fadeInInstanceVol*_finalVol , 0); //Set the gain
}

//Fading song out
for(var i = 0; i < array_length(fadeOutInstances); i++){
	//Fade Volume
	if fadeOutInstanceTime[i] > 0{
		if fadeOutInatanceVolume[i] > 0 {
			fadeOutInatanceVolume[i] -= 1/fadeOutInstanceTime[i];
		}
	}else{
		fadeOutInatanceVolume[i] = 0; //immediately cut the volume to 0
	}
	
	//Set the gain
	audio_sound_gain(fadeOutInstances[i], fadeOutInatanceVolume[i] * _finalVol, 0);
	
	//Stop the song when the volume is 0
	if fadeOutInatanceVolume[i] <= 0{
		if audio_is_playing(fadeOutInstances[i]){
			audio_stop_sound(fadeOutInstances[i]);
		}
		//Remove from array
		array_delete(fadeOutInstances, i, 1);
		array_delete(fadeOutInatanceVolume, i, 1);
		array_delete(fadeOutInstanceTime, i, 1);
		
		//Set the loop back 1
		i--;
		
	}
		
}


