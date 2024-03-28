if (!started) exit;

//Get message
var _messageData = dialogue[messageIndex];
var _message = _messageData.message;

//Message Not complete
if(characters < string_length(_message)){
	
	var _textSpeed = textSpeed;
	
	var _char = string_char_at(_message, characters);
	
	//slow down
	if (_char == "." || _char == "!" || _char == "," || _char == "?"){
		_textSpeed /= 6;
	}
	
	characters += _textSpeed;
}

//Message Complete
else{
	obj_next_message.image_alpha = 1;
	if(keyboard_check_pressed(vk_space)){
		if ((messageIndex + 1) < array_length(dialogue)){
			next_message();
		}else{
			close_textbox();
		}
	}
}

