global.textboxSequence = -1;

function create_textbox(_dialogueArray) {
	
	var _textbox = instance_create_layer(0, 0, "Instances", obj_textbox);
	_textbox.start(_dialogueArray);
	
	// Get the current camera properties
    var _cam = view_camera[0]; // Make sure this is the active camera
    var _camX = camera_get_view_x(_cam);
    var _camY = camera_get_view_y(_cam);


	//Create Textbox Sequence
	global.textboxSequence = layer_sequence_create("Instances", _camX, _camY, seq_textbox);
	
	//pause
	global.paused = true;
}

function close_textbox() {
	layer_sequence_destroy(global.textboxSequence);
	instance_destroy(obj_textbox);
	
	//Resume
	global.paused = false;
	
	keyboard_clear(vk_space); //Clear Space Key
}
	