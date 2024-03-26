global.musicVolume = 1; //Global music volume

global.masterVolume = 1; //Global Master volume

songInstance = noone; //Song we start playeing

songAsset = noone; //Song we are playing

targetSongAsset = noone; //Next song

endFadeOutTime = 0; //how many frames to fade out

startFadeInTime = 0; //How many frames to fade in

fadeInInstanceVol = 1; //volume of song instance



//For fading music out and stop songs that are not playing
fadeOutInstances = array_create(0) //Audio instances to fade out

fadeOutInatanceVolume = array_create(0) // volume of audio Instances

fadeOutInstanceTime = array_create(0)






