if (!instance_exists(obj_box_name) || !started)
	exit;

//Set Font
draw_set_font(ft_textbox);

//Temp Values
var _messageData = dialogue[messageIndex];
var _name = _messageData.speaker.name;
var _message = _messageData.message;
var _image = _messageData.speaker.image;

_message = string_copy(_message, 0, characters);


//Draw Name
draw_text(obj_box_name.x, obj_box_name.y, _name);

//Draw Message
var _width = obj_box_message.sprite_width;
draw_text_ext(obj_box_message.x, obj_box_message.y, _message, -1, _width);

//Draw Image
var _centerX = obj_box_image.x + obj_box_image.sprite_width/2;
var _centerY = obj_box_image.y + obj_box_image.sprite_height/2;
var _scaleX = obj_box_image.sprite_width / sprite_get_width(_image);
var _scaleY = obj_box_image.sprite_height / sprite_get_height(_image);

draw_sprite_ext(_image, 0, _centerX, _centerY, _scaleX, _scaleY, 0, -1, 1);
