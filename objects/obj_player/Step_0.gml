//Key assignment
right_key = keyboard_check(vk_right);
right_key = keyboard_check(ord("D"))
left_key = keyboard_check(vk_left);
left_key = keyboard_check(ord("A"))
up_key = keyboard_check(vk_up);
up_key = keyboard_check(ord("W"))
down_key = keyboard_check(vk_down);
down_key = keyboard_check(ord("S"))

//Xspeed and yspeed calculations
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//Pause Sprite
if instance_exists(obj_paurser){
	xspd = 0;
	yspd = 0;
	
}


//Set sprite to which way to face
mask_index = sprite[DOWN];

//For x movement
if yspd == 0{
	if xspd > 0{face = RIGHT};
	if xspd < 0{face = LEFT};
}

//For Diagonal movement
if xspd > 0 && face == LEFT {
	face = RIGHT;
}

if xspd < 0 && face == RIGHT {
	face = LEFT;
}

if yspd > 0 && face == UP {
	face = DOWN;
}

if yspd < 0 && face == DOWN {
	face = UP;
}


//For y movement
if xspd == 0{
	if yspd > 0{face = DOWN};
	if yspd < 0{face = UP};
}

//animate
if xspd == 0 && yspd == 0 {
	image_index = 0;
}

sprite_index = sprite[face];


//Collisions in x
if place_meeting(x + xspd, y, obj_wall) == true{
	xspd = 0;
}

//Collisions in y
if place_meeting (x, y+ yspd, obj_wall) == true{
	yspd = 0;
}



//Update movement
x += xspd;
y += yspd;


